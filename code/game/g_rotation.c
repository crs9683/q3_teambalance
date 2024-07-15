// Public Domain

#include "g_local.h"

// Function to randomize map rotation
void RandomizeMapRotation() {
    char* buf;
    fileHandle_t fh;
    int len;
    char* s;
    char(*maps)[256];
    int mapCount = 0;
    int randomIndex;

    // Allocate memory for buffer and maps using G_Alloc
    buf = (char*)G_Alloc(4096);
    if (!buf) {
        Com_Printf(S_COLOR_YELLOW "RandomizeMapRotation: Unable to allocate memory for buffer.\n");
        return;
    }

    maps = (char(*)[256])G_Alloc(64 * 256);
    if (!maps) {
        Com_Printf(S_COLOR_YELLOW "RandomizeMapRotation: Unable to allocate memory for maps.\n");
        return;
    }

    len = trap_FS_FOpenFile(g_rotation.string, &fh, FS_READ);
    if (fh == FS_INVALID_HANDLE) {
        Com_Printf(S_COLOR_YELLOW "%s: map rotation file doesn't exist.\n", g_rotation.string);
        return;
    }
    if (len >= 4096) {
        Com_Printf(S_COLOR_YELLOW "%s: map rotation file is too big.\n", g_rotation.string);
        len = 4095;
    }
    trap_FS_Read(buf, len, fh);
    buf[len] = '\0';
    trap_FS_FCloseFile(fh);

    s = buf; // initialize token parsing

    while (*s != '\0') {
        char tk[MAX_TOKEN_CHARS];
        int tokenLength = 0;

        // Read the next token
        while (*s != '\0' && *s != ' ' && *s != '\t' && *s != '\n' && *s != '\r') {
            tk[tokenLength++] = *s;
            s++;
        }
        tk[tokenLength] = '\0';

        // Skip whitespace
        while (*s == ' ' || *s == '\t' || *s == '\n' || *s == '\r')
            s++;

        if (G_MapExist(tk)) { // found a map name
            if (mapCount >= 64) {
                Com_Printf(S_COLOR_YELLOW "Too many maps in rotation.\n");
                break;
            }
            strcpy(maps[mapCount++], tk);
        }
    }

    Com_Printf("RandomizeMapRotation: mapCount = %d\n", mapCount); // Debug: Print the number of maps

    if (mapCount == 0) {
        Com_Printf(S_COLOR_YELLOW "No maps found in rotation file.\n");
        return;
    }

    // Generate random number and calculate map index
    srand(trap_Milliseconds());
    randomIndex = rand() % mapCount;

    // Debug: Print the random index and selected map
    Com_Printf("RandomizeMapRotation: randomIndex = %d\n", randomIndex);
    Com_Printf("RandomizeMapRotation: Selected map = %s\n", maps[randomIndex]);

    // Load the map at randomIndex
    G_LoadMap(maps[randomIndex]);
}


// Function to check if a map is in rotation
qboolean MapInRotation(const char* map) {
    char buf[4096];
    fileHandle_t fh;
    int len;
    char* s;
    int curIndex = 0;
    int scopeLevel = 0;

    if (g_gametype.integer == GT_SINGLE_PLAYER || !g_rotation.string[0])
        return qfalse;

    len = trap_FS_FOpenFile(g_rotation.string, &fh, FS_READ);
    if (fh == FS_INVALID_HANDLE) {
        Com_Printf(S_COLOR_YELLOW "%s: map rotation file doesn't exist.\n", g_rotation.string);
        return qfalse;
    }
    if (len >= sizeof(buf)) {
        Com_Printf(S_COLOR_YELLOW "%s: map rotation file is too big.\n", g_rotation.string);
        len = sizeof(buf) - 1;
    }
    trap_FS_Read(buf, len, fh);
    buf[len] = '\0';
    trap_FS_FCloseFile(fh);

    s = buf; // initialize token parsing

    while (*s != '\0') {
        char tk[MAX_TOKEN_CHARS];
        int tokenLength = 0;

        // Read the next token
        while (*s != '\0' && *s != ' ' && *s != '\t' && *s != '\n' && *s != '\r') {
            tk[tokenLength++] = *s;
            s++;
        }
        tk[tokenLength] = '\0';

        // Skip whitespace
        while (*s == ' ' || *s == '\t' || *s == '\n' || *s == '\r')
            s++;

        if (tk[0] == '$' && tk[1] != '\0') { // cvar name
            // Skip past the cvar name and its value
            while (*s != '\0' && *s != '\n' && *s != '\r')
                s++;
            continue;
        }
        else if (tk[0] == '{' && tk[1] == '\0') { // start of a new level
            scopeLevel++;
            continue;
        }
        else if (tk[0] == '}' && tk[1] == '\0') { // end of current level
            scopeLevel--;
            continue;
        }
        else if (G_MapExist(tk)) { // found a map name
            curIndex++;
            if (!Q_stricmp(map, tk)) // compare current map with the one we're checking
                return qtrue; // map found in rotation
        }
    }

    return qfalse; // map not found in rotation
}

// Function to check if a map exists
qboolean G_MapExist(const char* map) {
    fileHandle_t fh;
    int len;

    if (!map || !*map)
        return qfalse;

    len = trap_FS_FOpenFile(va("maps/%s.bsp", map), &fh, FS_READ);

    if (len < 0)
        return qfalse;

    trap_FS_FCloseFile(fh);

    return (len >= 144) ? qtrue : qfalse;
}

// Function to load a map
void G_LoadMap(const char* map) {
    char cmd[MAX_CVAR_VALUE_STRING];
    char ver[16];
    int version;

    Com_Printf("G_LoadMap: Loading map %s\n", map);

    trap_Cvar_VariableStringBuffer("version", ver, sizeof(ver));
    if (!Q_strncmp(ver, "Q3 1.32 ", 8) || !Q_strncmp(ver, "Q3 1.32b ", 9) || !Q_strncmp(ver, "Q3 1.32c ", 9))
        version = 0; // buggy vanilla binaries
    else
        version = 1;

    if (!map || !*map || !G_MapExist(map) || !Q_stricmp(map, g_mapname.string)) {
        if (level.time > 12 * 60 * 60 * 1000 || version == 0 || level.denyMapRestart)
            BG_sprintf(cmd, "map \"%s\"\n", g_mapname.string);
        else
            Q_strcpy(cmd, "map_restart 0\n");
    }
    else {
        if (!G_MapExist(map)) // required map doesn't exist, reload existing
            BG_sprintf(cmd, "map \"%s\"\n", g_mapname.string);
        else
            BG_sprintf(cmd, "map \"%s\"\n", map);
    }

    trap_SendConsoleCommand(EXEC_APPEND, cmd);
    level.restarted = qtrue;

    Com_Printf("G_LoadMap: Map command executed: %s\n", cmd);
}

// Function to parse map rotation
qboolean ParseMapRotation(void) {
    char buf[4096];
    char cvar[256];
    char map[256];
    char* s;
    fileHandle_t fh;
    int len;
    char* tk;
    int reqIndex;
    int curIndex = 0;
    int scopeLevel = 0;

    Com_Printf("ParseMapRotation: Starting map rotation parsing\n");

    if (g_gametype.integer == GT_SINGLE_PLAYER || !g_rotation.string[0])
        return qfalse;

    // Check if random map rotation is enabled
    if (trap_Cvar_VariableIntegerValue("g_randomMap")) {
        Com_Printf("ParseMapRotation: Random map rotation is enabled\n");
        RandomizeMapRotation();
        return qtrue; // Return immediately after randomizing the map
    }

    len = trap_FS_FOpenFile(g_rotation.string, &fh, FS_READ);
    if (fh == FS_INVALID_HANDLE) {
        Com_Printf(S_COLOR_YELLOW "%s: map rotation file doesn't exist.\n", g_rotation.string);
        return qfalse;
    }
    if (len >= sizeof(buf)) {
        Com_Printf(S_COLOR_YELLOW "%s: map rotation file is too big.\n", g_rotation.string);
        len = sizeof(buf) - 1;
    }
    trap_FS_Read(buf, len, fh);
    buf[len] = '\0';
    trap_FS_FCloseFile(fh);

    Com_Printf("ParseMapRotation: Read map rotation file successfully\n");

    Com_InitSeparators(); // needed for COM_ParseSep()

    reqIndex = trap_Cvar_VariableIntegerValue(SV_ROTATION);
    if (reqIndex == 0)
        reqIndex = 1;

__rescan:

    COM_BeginParseSession(g_rotation.string);

    s = buf; // initialize token parsing
    map[0] = '\0';

    while (1) {
        tk = COM_ParseSep(&s, qtrue);
        if (tk[0] == '\0')
            break;

        if (tk[0] == '$' && tk[1] != '\0') { // cvar name
            // save cvar name
            strcpy(cvar, tk + 1);
            tk = COM_ParseSep(&s, qfalse);
            // expect '='
            if (tk[0] == '=' && tk[1] == '\0') {
                tk = COM_ParseSep(&s, qtrue);
                if (!scopeLevel || curIndex == reqIndex) {
                    trap_Cvar_Set(cvar, tk);
                }
                SkipTillSeparators(&s);
                continue;
            }
            else {
                COM_ParseWarning(S_COLOR_YELLOW "missing '=' after '%s'", cvar);
                SkipRestOfLine(&s);
                continue;
            }

        }
        else if (tk[0] == '{' && tk[1] == '\0') {
            if (scopeLevel == 0 && curIndex) {
                scopeLevel++;
                continue;
            }
            else {
                COM_ParseWarning(S_COLOR_YELLOW "unexpected '{'");
                continue;
            }
        }
        else if (tk[0] == '}' && tk[1] == '\0') {
            if (scopeLevel == 1) {
                scopeLevel--;
                continue;
            }
            else {
                COM_ParseWarning(S_COLOR_YELLOW "unexpected '}'");
            }
        }
        else if (G_MapExist(tk)) {
            curIndex++;
            if (curIndex == reqIndex) {
                Q_strncpyz(map, tk, sizeof(map));
            }
        }
        else {
            COM_ParseWarning(S_COLOR_YELLOW "map '%s' doesn't exist", tk);
            SkipRestOfLine(&s);
            continue;
        }
    }

    if (curIndex == 0) { // no maps in rotation file
        Com_Printf(S_COLOR_YELLOW "%s: no maps in rotation file.\n", g_rotation.string);
        trap_Cvar_Set(SV_ROTATION, "1");
        return qfalse;
    }

    if (!map[0]) { // map at required index not found?
        if (reqIndex > 1) { // try to rescan with lower index
            Com_Printf(S_COLOR_CYAN "%s: map at index %i not found, rescan\n", g_rotation.integer, reqIndex);
            reqIndex = 1;
            goto __rescan;
        }
        trap_Cvar_Set(SV_ROTATION, "1");
        return qfalse;
    }

    reqIndex++;
    if (reqIndex > curIndex)
        reqIndex = 1;

    trap_Cvar_Set(SV_ROTATION, va("%i", reqIndex));
    G_LoadMap(map);

    Com_Printf("ParseMapRotation: Loaded map %s\n", map);

    return qtrue;
}

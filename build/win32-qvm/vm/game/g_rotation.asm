export RandomizeMapRotation
code
proc RandomizeMapRotation 1084 12
file "..\..\..\..\code\game\g_rotation.c"
line 6
;1:// Public Domain
;2:
;3:#include "g_local.h"
;4:
;5:// Function to randomize map rotation
;6:void RandomizeMapRotation() {
line 12
;7:    char* buf;
;8:    fileHandle_t fh;
;9:    int len;
;10:    char* s;
;11:    char(*maps)[256];
;12:    int mapCount = 0;
ADDRLP4 4
CNSTI4 0
ASGNI4
line 16
;13:    int randomIndex;
;14:
;15:    // Allocate memory for buffer and maps using G_Alloc
;16:    buf = (char*)G_Alloc(4096);
CNSTI4 4096
ARGI4
ADDRLP4 28
ADDRGP4 G_Alloc
CALLP4
ASGNP4
ADDRLP4 12
ADDRLP4 28
INDIRP4
ASGNP4
line 17
;17:    if (!buf) {
ADDRLP4 12
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $56
line 18
;18:        Com_Printf(S_COLOR_YELLOW "RandomizeMapRotation: Unable to allocate memory for buffer.\n");
ADDRGP4 $58
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 19
;19:        return;
ADDRGP4 $55
JUMPV
LABELV $56
line 22
;20:    }
;21:
;22:    maps = (char(*)[256])G_Alloc(64 * 256);
CNSTI4 16384
ARGI4
ADDRLP4 32
ADDRGP4 G_Alloc
CALLP4
ASGNP4
ADDRLP4 8
ADDRLP4 32
INDIRP4
ASGNP4
line 23
;23:    if (!maps) {
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $59
line 24
;24:        Com_Printf(S_COLOR_YELLOW "RandomizeMapRotation: Unable to allocate memory for maps.\n");
ADDRGP4 $61
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 25
;25:        return;
ADDRGP4 $55
JUMPV
LABELV $59
line 28
;26:    }
;27:
;28:    len = trap_FS_FOpenFile(g_rotation.string, &fh, FS_READ);
ADDRGP4 g_rotation+16
ARGP4
ADDRLP4 20
ARGP4
CNSTI4 0
ARGI4
ADDRLP4 36
ADDRGP4 trap_FS_FOpenFile
CALLI4
ASGNI4
ADDRLP4 16
ADDRLP4 36
INDIRI4
ASGNI4
line 29
;29:    if (fh == FS_INVALID_HANDLE) {
ADDRLP4 20
INDIRI4
CNSTI4 0
NEI4 $63
line 30
;30:        Com_Printf(S_COLOR_YELLOW "%s: map rotation file doesn't exist.\n", g_rotation.string);
ADDRGP4 $65
ARGP4
ADDRGP4 g_rotation+16
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 31
;31:        return;
ADDRGP4 $55
JUMPV
LABELV $63
line 33
;32:    }
;33:    if (len >= 4096) {
ADDRLP4 16
INDIRI4
CNSTI4 4096
LTI4 $67
line 34
;34:        Com_Printf(S_COLOR_YELLOW "%s: map rotation file is too big.\n", g_rotation.string);
ADDRGP4 $69
ARGP4
ADDRGP4 g_rotation+16
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 35
;35:        len = 4095;
ADDRLP4 16
CNSTI4 4095
ASGNI4
line 36
;36:    }
LABELV $67
line 37
;37:    trap_FS_Read(buf, len, fh);
ADDRLP4 12
INDIRP4
ARGP4
ADDRLP4 16
INDIRI4
ARGI4
ADDRLP4 20
INDIRI4
ARGI4
ADDRGP4 trap_FS_Read
CALLV
pop
line 38
;38:    buf[len] = '\0';
ADDRLP4 16
INDIRI4
ADDRLP4 12
INDIRP4
ADDP4
CNSTI1 0
ASGNI1
line 39
;39:    trap_FS_FCloseFile(fh);
ADDRLP4 20
INDIRI4
ARGI4
ADDRGP4 trap_FS_FCloseFile
CALLV
pop
line 41
;40:
;41:    s = buf; // initialize token parsing
ADDRLP4 0
ADDRLP4 12
INDIRP4
ASGNP4
ADDRGP4 $72
JUMPV
LABELV $71
line 43
;42:
;43:    while (*s != '\0') {
line 45
;44:        char tk[MAX_TOKEN_CHARS];
;45:        int tokenLength = 0;
ADDRLP4 1064
CNSTI4 0
ASGNI4
ADDRGP4 $75
JUMPV
LABELV $74
line 48
;46:
;47:        // Read the next token
;48:        while (*s != '\0' && *s != ' ' && *s != '\t' && *s != '\n' && *s != '\r') {
line 49
;49:            tk[tokenLength++] = *s;
ADDRLP4 1068
ADDRLP4 1064
INDIRI4
ASGNI4
ADDRLP4 1064
ADDRLP4 1068
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 1068
INDIRI4
ADDRLP4 40
ADDP4
ADDRLP4 0
INDIRP4
INDIRI1
ASGNI1
line 50
;50:            s++;
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
line 51
;51:        }
LABELV $75
line 48
ADDRLP4 1068
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 1068
INDIRI4
CNSTI4 0
EQI4 $80
ADDRLP4 1068
INDIRI4
CNSTI4 32
EQI4 $80
ADDRLP4 1068
INDIRI4
CNSTI4 9
EQI4 $80
ADDRLP4 1068
INDIRI4
CNSTI4 10
EQI4 $80
ADDRLP4 1068
INDIRI4
CNSTI4 13
NEI4 $74
LABELV $80
line 52
;52:        tk[tokenLength] = '\0';
ADDRLP4 1064
INDIRI4
ADDRLP4 40
ADDP4
CNSTI1 0
ASGNI1
ADDRGP4 $82
JUMPV
LABELV $81
line 56
;53:
;54:        // Skip whitespace
;55:        while (*s == ' ' || *s == '\t' || *s == '\n' || *s == '\r')
;56:            s++;
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
LABELV $82
line 55
ADDRLP4 1072
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 1072
INDIRI4
CNSTI4 32
EQI4 $81
ADDRLP4 1072
INDIRI4
CNSTI4 9
EQI4 $81
ADDRLP4 1072
INDIRI4
CNSTI4 10
EQI4 $81
ADDRLP4 1072
INDIRI4
CNSTI4 13
EQI4 $81
line 58
;57:
;58:        if (G_MapExist(tk)) { // found a map name
ADDRLP4 40
ARGP4
ADDRLP4 1076
ADDRGP4 G_MapExist
CALLI4
ASGNI4
ADDRLP4 1076
INDIRI4
CNSTI4 0
EQI4 $84
line 59
;59:            if (mapCount >= 64) {
ADDRLP4 4
INDIRI4
CNSTI4 64
LTI4 $86
line 60
;60:                Com_Printf(S_COLOR_YELLOW "Too many maps in rotation.\n");
ADDRGP4 $88
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 61
;61:                break;
ADDRGP4 $73
JUMPV
LABELV $86
line 63
;62:            }
;63:            strcpy(maps[mapCount++], tk);
ADDRLP4 1080
ADDRLP4 4
INDIRI4
ASGNI4
ADDRLP4 4
ADDRLP4 1080
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 1080
INDIRI4
CNSTI4 8
LSHI4
ADDRLP4 8
INDIRP4
ADDP4
ARGP4
ADDRLP4 40
ARGP4
ADDRGP4 strcpy
CALLP4
pop
line 64
;64:        }
LABELV $84
line 65
;65:    }
LABELV $72
line 43
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $71
LABELV $73
line 67
;66:
;67:    Com_Printf("RandomizeMapRotation: mapCount = %d\n", mapCount); // Debug: Print the number of maps
ADDRGP4 $89
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
ADDRGP4 Com_Printf
CALLV
pop
line 69
;68:
;69:    if (mapCount == 0) {
ADDRLP4 4
INDIRI4
CNSTI4 0
NEI4 $90
line 70
;70:        Com_Printf(S_COLOR_YELLOW "No maps found in rotation file.\n");
ADDRGP4 $92
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 71
;71:        return;
ADDRGP4 $55
JUMPV
LABELV $90
line 75
;72:    }
;73:
;74:    // Generate random number and calculate map index
;75:    srand(trap_Milliseconds());
ADDRLP4 40
ADDRGP4 trap_Milliseconds
CALLI4
ASGNI4
ADDRLP4 40
INDIRI4
CVIU4 4
ARGU4
ADDRGP4 srand
CALLV
pop
line 76
;76:    randomIndex = rand() % mapCount;
ADDRLP4 44
ADDRGP4 rand
CALLI4
ASGNI4
ADDRLP4 24
ADDRLP4 44
INDIRI4
ADDRLP4 4
INDIRI4
MODI4
ASGNI4
line 79
;77:
;78:    // Debug: Print the random index and selected map
;79:    Com_Printf("RandomizeMapRotation: randomIndex = %d\n", randomIndex);
ADDRGP4 $93
ARGP4
ADDRLP4 24
INDIRI4
ARGI4
ADDRGP4 Com_Printf
CALLV
pop
line 80
;80:    Com_Printf("RandomizeMapRotation: Selected map = %s\n", maps[randomIndex]);
ADDRGP4 $94
ARGP4
ADDRLP4 24
INDIRI4
CNSTI4 8
LSHI4
ADDRLP4 8
INDIRP4
ADDP4
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 83
;81:
;82:    // Load the map at randomIndex
;83:    G_LoadMap(maps[randomIndex]);
ADDRLP4 24
INDIRI4
CNSTI4 8
LSHI4
ADDRLP4 8
INDIRP4
ADDP4
ARGP4
ADDRGP4 G_LoadMap
CALLV
pop
line 84
;84:}
LABELV $55
endproc RandomizeMapRotation 1084 12
export MapInRotation
proc MapInRotation 5164 12
line 88
;85:
;86:
;87:// Function to check if a map is in rotation
;88:qboolean MapInRotation(const char* map) {
line 93
;89:    char buf[4096];
;90:    fileHandle_t fh;
;91:    int len;
;92:    char* s;
;93:    int curIndex = 0;
ADDRLP4 4112
CNSTI4 0
ASGNI4
line 94
;94:    int scopeLevel = 0;
ADDRLP4 4
CNSTI4 0
ASGNI4
line 96
;95:
;96:    if (g_gametype.integer == GT_SINGLE_PLAYER || !g_rotation.string[0])
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $100
ADDRGP4 g_rotation+16
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $96
LABELV $100
line 97
;97:        return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $95
JUMPV
LABELV $96
line 99
;98:
;99:    len = trap_FS_FOpenFile(g_rotation.string, &fh, FS_READ);
ADDRGP4 g_rotation+16
ARGP4
ADDRLP4 4108
ARGP4
CNSTI4 0
ARGI4
ADDRLP4 4116
ADDRGP4 trap_FS_FOpenFile
CALLI4
ASGNI4
ADDRLP4 4104
ADDRLP4 4116
INDIRI4
ASGNI4
line 100
;100:    if (fh == FS_INVALID_HANDLE) {
ADDRLP4 4108
INDIRI4
CNSTI4 0
NEI4 $102
line 101
;101:        Com_Printf(S_COLOR_YELLOW "%s: map rotation file doesn't exist.\n", g_rotation.string);
ADDRGP4 $65
ARGP4
ADDRGP4 g_rotation+16
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 102
;102:        return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $95
JUMPV
LABELV $102
line 104
;103:    }
;104:    if (len >= sizeof(buf)) {
ADDRLP4 4104
INDIRI4
CVIU4 4
CNSTU4 4096
LTU4 $105
line 105
;105:        Com_Printf(S_COLOR_YELLOW "%s: map rotation file is too big.\n", g_rotation.string);
ADDRGP4 $69
ARGP4
ADDRGP4 g_rotation+16
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 106
;106:        len = sizeof(buf) - 1;
ADDRLP4 4104
CNSTI4 4095
ASGNI4
line 107
;107:    }
LABELV $105
line 108
;108:    trap_FS_Read(buf, len, fh);
ADDRLP4 8
ARGP4
ADDRLP4 4104
INDIRI4
ARGI4
ADDRLP4 4108
INDIRI4
ARGI4
ADDRGP4 trap_FS_Read
CALLV
pop
line 109
;109:    buf[len] = '\0';
ADDRLP4 4104
INDIRI4
ADDRLP4 8
ADDP4
CNSTI1 0
ASGNI1
line 110
;110:    trap_FS_FCloseFile(fh);
ADDRLP4 4108
INDIRI4
ARGI4
ADDRGP4 trap_FS_FCloseFile
CALLV
pop
line 112
;111:
;112:    s = buf; // initialize token parsing
ADDRLP4 0
ADDRLP4 8
ASGNP4
ADDRGP4 $109
JUMPV
LABELV $108
line 114
;113:
;114:    while (*s != '\0') {
line 116
;115:        char tk[MAX_TOKEN_CHARS];
;116:        int tokenLength = 0;
ADDRLP4 5144
CNSTI4 0
ASGNI4
ADDRGP4 $112
JUMPV
LABELV $111
line 119
;117:
;118:        // Read the next token
;119:        while (*s != '\0' && *s != ' ' && *s != '\t' && *s != '\n' && *s != '\r') {
line 120
;120:            tk[tokenLength++] = *s;
ADDRLP4 5148
ADDRLP4 5144
INDIRI4
ASGNI4
ADDRLP4 5144
ADDRLP4 5148
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 5148
INDIRI4
ADDRLP4 4120
ADDP4
ADDRLP4 0
INDIRP4
INDIRI1
ASGNI1
line 121
;121:            s++;
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
line 122
;122:        }
LABELV $112
line 119
ADDRLP4 5148
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 5148
INDIRI4
CNSTI4 0
EQI4 $117
ADDRLP4 5148
INDIRI4
CNSTI4 32
EQI4 $117
ADDRLP4 5148
INDIRI4
CNSTI4 9
EQI4 $117
ADDRLP4 5148
INDIRI4
CNSTI4 10
EQI4 $117
ADDRLP4 5148
INDIRI4
CNSTI4 13
NEI4 $111
LABELV $117
line 123
;123:        tk[tokenLength] = '\0';
ADDRLP4 5144
INDIRI4
ADDRLP4 4120
ADDP4
CNSTI1 0
ASGNI1
ADDRGP4 $119
JUMPV
LABELV $118
line 127
;124:
;125:        // Skip whitespace
;126:        while (*s == ' ' || *s == '\t' || *s == '\n' || *s == '\r')
;127:            s++;
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
LABELV $119
line 126
ADDRLP4 5152
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 5152
INDIRI4
CNSTI4 32
EQI4 $118
ADDRLP4 5152
INDIRI4
CNSTI4 9
EQI4 $118
ADDRLP4 5152
INDIRI4
CNSTI4 10
EQI4 $118
ADDRLP4 5152
INDIRI4
CNSTI4 13
EQI4 $118
line 129
;128:
;129:        if (tk[0] == '$' && tk[1] != '\0') { // cvar name
ADDRLP4 4120
INDIRI1
CVII4 1
CNSTI4 36
NEI4 $121
ADDRLP4 4120+1
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $121
ADDRGP4 $125
JUMPV
LABELV $124
line 132
;130:            // Skip past the cvar name and its value
;131:            while (*s != '\0' && *s != '\n' && *s != '\r')
;132:                s++;
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
LABELV $125
line 131
ADDRLP4 5156
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 5156
INDIRI4
CNSTI4 0
EQI4 $128
ADDRLP4 5156
INDIRI4
CNSTI4 10
EQI4 $128
ADDRLP4 5156
INDIRI4
CNSTI4 13
NEI4 $124
LABELV $128
line 133
;133:            continue;
ADDRGP4 $109
JUMPV
LABELV $121
line 135
;134:        }
;135:        else if (tk[0] == '{' && tk[1] == '\0') { // start of a new level
ADDRLP4 4120
INDIRI1
CVII4 1
CNSTI4 123
NEI4 $129
ADDRLP4 4120+1
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $129
line 136
;136:            scopeLevel++;
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 137
;137:            continue;
ADDRGP4 $109
JUMPV
LABELV $129
line 139
;138:        }
;139:        else if (tk[0] == '}' && tk[1] == '\0') { // end of current level
ADDRLP4 4120
INDIRI1
CVII4 1
CNSTI4 125
NEI4 $132
ADDRLP4 4120+1
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $132
line 140
;140:            scopeLevel--;
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 141
;141:            continue;
ADDRGP4 $109
JUMPV
LABELV $132
line 143
;142:        }
;143:        else if (G_MapExist(tk)) { // found a map name
ADDRLP4 4120
ARGP4
ADDRLP4 5156
ADDRGP4 G_MapExist
CALLI4
ASGNI4
ADDRLP4 5156
INDIRI4
CNSTI4 0
EQI4 $135
line 144
;144:            curIndex++;
ADDRLP4 4112
ADDRLP4 4112
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 145
;145:            if (!Q_stricmp(map, tk)) // compare current map with the one we're checking
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4120
ARGP4
ADDRLP4 5160
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 5160
INDIRI4
CNSTI4 0
NEI4 $137
line 146
;146:                return qtrue; // map found in rotation
CNSTI4 1
RETI4
ADDRGP4 $95
JUMPV
LABELV $137
line 147
;147:        }
LABELV $135
line 148
;148:    }
LABELV $109
line 114
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $108
line 150
;149:
;150:    return qfalse; // map not found in rotation
CNSTI4 0
RETI4
LABELV $95
endproc MapInRotation 5164 12
export G_MapExist
proc G_MapExist 24 12
line 154
;151:}
;152:
;153:// Function to check if a map exists
;154:qboolean G_MapExist(const char* map) {
line 158
;155:    fileHandle_t fh;
;156:    int len;
;157:
;158:    if (!map || !*map)
ADDRLP4 8
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $142
ADDRLP4 8
INDIRP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $140
LABELV $142
line 159
;159:        return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $139
JUMPV
LABELV $140
line 161
;160:
;161:    len = trap_FS_FOpenFile(va("maps/%s.bsp", map), &fh, FS_READ);
ADDRGP4 $143
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 12
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 12
INDIRP4
ARGP4
ADDRLP4 4
ARGP4
CNSTI4 0
ARGI4
ADDRLP4 16
ADDRGP4 trap_FS_FOpenFile
CALLI4
ASGNI4
ADDRLP4 0
ADDRLP4 16
INDIRI4
ASGNI4
line 163
;162:
;163:    if (len < 0)
ADDRLP4 0
INDIRI4
CNSTI4 0
GEI4 $144
line 164
;164:        return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $139
JUMPV
LABELV $144
line 166
;165:
;166:    trap_FS_FCloseFile(fh);
ADDRLP4 4
INDIRI4
ARGI4
ADDRGP4 trap_FS_FCloseFile
CALLV
pop
line 168
;167:
;168:    return (len >= 144) ? qtrue : qfalse;
ADDRLP4 0
INDIRI4
CNSTI4 144
LTI4 $147
ADDRLP4 20
CNSTI4 1
ASGNI4
ADDRGP4 $148
JUMPV
LABELV $147
ADDRLP4 20
CNSTI4 0
ASGNI4
LABELV $148
ADDRLP4 20
INDIRI4
RETI4
LABELV $139
endproc G_MapExist 24 12
export G_LoadMap
proc G_LoadMap 304 12
line 172
;169:}
;170:
;171:// Function to load a map
;172:void G_LoadMap(const char* map) {
line 177
;173:    char cmd[MAX_CVAR_VALUE_STRING];
;174:    char ver[16];
;175:    int version;
;176:
;177:    Com_Printf("G_LoadMap: Loading map %s\n", map);
ADDRGP4 $150
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 179
;178:
;179:    trap_Cvar_VariableStringBuffer("version", ver, sizeof(ver));
ADDRGP4 $151
ARGP4
ADDRLP4 0
ARGP4
CNSTI4 16
ARGI4
ADDRGP4 trap_Cvar_VariableStringBuffer
CALLV
pop
line 180
;180:    if (!Q_strncmp(ver, "Q3 1.32 ", 8) || !Q_strncmp(ver, "Q3 1.32b ", 9) || !Q_strncmp(ver, "Q3 1.32c ", 9))
ADDRLP4 0
ARGP4
ADDRGP4 $154
ARGP4
CNSTI4 8
ARGI4
ADDRLP4 276
ADDRGP4 Q_strncmp
CALLI4
ASGNI4
ADDRLP4 276
INDIRI4
CNSTI4 0
EQI4 $158
ADDRLP4 0
ARGP4
ADDRGP4 $155
ARGP4
CNSTI4 9
ARGI4
ADDRLP4 280
ADDRGP4 Q_strncmp
CALLI4
ASGNI4
ADDRLP4 280
INDIRI4
CNSTI4 0
EQI4 $158
ADDRLP4 0
ARGP4
ADDRGP4 $156
ARGP4
CNSTI4 9
ARGI4
ADDRLP4 284
ADDRGP4 Q_strncmp
CALLI4
ASGNI4
ADDRLP4 284
INDIRI4
CNSTI4 0
NEI4 $152
LABELV $158
line 181
;181:        version = 0; // buggy vanilla binaries
ADDRLP4 272
CNSTI4 0
ASGNI4
ADDRGP4 $153
JUMPV
LABELV $152
line 183
;182:    else
;183:        version = 1;
ADDRLP4 272
CNSTI4 1
ASGNI4
LABELV $153
line 185
;184:
;185:    if (!map || !*map || !G_MapExist(map) || !Q_stricmp(map, g_mapname.string)) {
ADDRLP4 288
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 288
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $164
ADDRLP4 288
INDIRP4
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $164
ADDRLP4 288
INDIRP4
ARGP4
ADDRLP4 292
ADDRGP4 G_MapExist
CALLI4
ASGNI4
ADDRLP4 292
INDIRI4
CNSTI4 0
EQI4 $164
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 g_mapname+16
ARGP4
ADDRLP4 296
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 296
INDIRI4
CNSTI4 0
NEI4 $159
LABELV $164
line 186
;186:        if (level.time > 12 * 60 * 60 * 1000 || version == 0 || level.denyMapRestart)
ADDRGP4 level+32
INDIRI4
CNSTI4 43200000
GTI4 $170
ADDRLP4 272
INDIRI4
CNSTI4 0
EQI4 $170
ADDRGP4 level+11796
INDIRI4
CNSTI4 0
EQI4 $165
LABELV $170
line 187
;187:            BG_sprintf(cmd, "map \"%s\"\n", g_mapname.string);
ADDRLP4 16
ARGP4
ADDRGP4 $171
ARGP4
ADDRGP4 g_mapname+16
ARGP4
ADDRGP4 BG_sprintf
CALLI4
pop
ADDRGP4 $160
JUMPV
LABELV $165
line 189
;188:        else
;189:            Q_strcpy(cmd, "map_restart 0\n");
ADDRLP4 16
ARGP4
ADDRGP4 $173
ARGP4
ADDRGP4 Q_strcpy
CALLV
pop
line 190
;190:    }
ADDRGP4 $160
JUMPV
LABELV $159
line 191
;191:    else {
line 192
;192:        if (!G_MapExist(map)) // required map doesn't exist, reload existing
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 300
ADDRGP4 G_MapExist
CALLI4
ASGNI4
ADDRLP4 300
INDIRI4
CNSTI4 0
NEI4 $174
line 193
;193:            BG_sprintf(cmd, "map \"%s\"\n", g_mapname.string);
ADDRLP4 16
ARGP4
ADDRGP4 $171
ARGP4
ADDRGP4 g_mapname+16
ARGP4
ADDRGP4 BG_sprintf
CALLI4
pop
ADDRGP4 $175
JUMPV
LABELV $174
line 195
;194:        else
;195:            BG_sprintf(cmd, "map \"%s\"\n", map);
ADDRLP4 16
ARGP4
ADDRGP4 $171
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 BG_sprintf
CALLI4
pop
LABELV $175
line 196
;196:    }
LABELV $160
line 198
;197:
;198:    trap_SendConsoleCommand(EXEC_APPEND, cmd);
CNSTI4 2
ARGI4
ADDRLP4 16
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 199
;199:    level.restarted = qtrue;
ADDRGP4 level+72
CNSTI4 1
ASGNI4
line 201
;200:
;201:    Com_Printf("G_LoadMap: Map command executed: %s\n", cmd);
ADDRGP4 $178
ARGP4
ADDRLP4 16
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 202
;202:}
LABELV $149
endproc G_LoadMap 304 12
export ParseMapRotation
proc ParseMapRotation 4668 12
line 205
;203:
;204:// Function to parse map rotation
;205:qboolean ParseMapRotation(void) {
line 214
;206:    char buf[4096];
;207:    char cvar[256];
;208:    char map[256];
;209:    char* s;
;210:    fileHandle_t fh;
;211:    int len;
;212:    char* tk;
;213:    int reqIndex;
;214:    int curIndex = 0;
ADDRLP4 12
CNSTI4 0
ASGNI4
line 215
;215:    int scopeLevel = 0;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 217
;216:
;217:    Com_Printf("ParseMapRotation: Starting map rotation parsing\n");
ADDRGP4 $180
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 219
;218:
;219:    if (g_gametype.integer == GT_SINGLE_PLAYER || !g_rotation.string[0])
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $185
ADDRGP4 g_rotation+16
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $181
LABELV $185
line 220
;220:        return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $179
JUMPV
LABELV $181
line 223
;221:
;222:    // Check if random map rotation is enabled
;223:    if (trap_Cvar_VariableIntegerValue("g_randomMap")) {
ADDRGP4 $188
ARGP4
ADDRLP4 4636
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 4636
INDIRI4
CNSTI4 0
EQI4 $186
line 224
;224:        Com_Printf("ParseMapRotation: Random map rotation is enabled\n");
ADDRGP4 $189
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 225
;225:        RandomizeMapRotation();
ADDRGP4 RandomizeMapRotation
CALLV
pop
line 226
;226:        return qtrue; // Return immediately after randomizing the map
CNSTI4 1
RETI4
ADDRGP4 $179
JUMPV
LABELV $186
line 229
;227:    }
;228:
;229:    len = trap_FS_FOpenFile(g_rotation.string, &fh, FS_READ);
ADDRGP4 g_rotation+16
ARGP4
ADDRLP4 4632
ARGP4
CNSTI4 0
ARGI4
ADDRLP4 4640
ADDRGP4 trap_FS_FOpenFile
CALLI4
ASGNI4
ADDRLP4 4628
ADDRLP4 4640
INDIRI4
ASGNI4
line 230
;230:    if (fh == FS_INVALID_HANDLE) {
ADDRLP4 4632
INDIRI4
CNSTI4 0
NEI4 $191
line 231
;231:        Com_Printf(S_COLOR_YELLOW "%s: map rotation file doesn't exist.\n", g_rotation.string);
ADDRGP4 $65
ARGP4
ADDRGP4 g_rotation+16
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 232
;232:        return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $179
JUMPV
LABELV $191
line 234
;233:    }
;234:    if (len >= sizeof(buf)) {
ADDRLP4 4628
INDIRI4
CVIU4 4
CNSTU4 4096
LTU4 $194
line 235
;235:        Com_Printf(S_COLOR_YELLOW "%s: map rotation file is too big.\n", g_rotation.string);
ADDRGP4 $69
ARGP4
ADDRGP4 g_rotation+16
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 236
;236:        len = sizeof(buf) - 1;
ADDRLP4 4628
CNSTI4 4095
ASGNI4
line 237
;237:    }
LABELV $194
line 238
;238:    trap_FS_Read(buf, len, fh);
ADDRLP4 532
ARGP4
ADDRLP4 4628
INDIRI4
ARGI4
ADDRLP4 4632
INDIRI4
ARGI4
ADDRGP4 trap_FS_Read
CALLV
pop
line 239
;239:    buf[len] = '\0';
ADDRLP4 4628
INDIRI4
ADDRLP4 532
ADDP4
CNSTI1 0
ASGNI1
line 240
;240:    trap_FS_FCloseFile(fh);
ADDRLP4 4632
INDIRI4
ARGI4
ADDRGP4 trap_FS_FCloseFile
CALLV
pop
line 242
;241:
;242:    Com_Printf("ParseMapRotation: Read map rotation file successfully\n");
ADDRGP4 $197
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 244
;243:
;244:    Com_InitSeparators(); // needed for COM_ParseSep()
ADDRGP4 Com_InitSeparators
CALLV
pop
line 246
;245:
;246:    reqIndex = trap_Cvar_VariableIntegerValue(SV_ROTATION);
ADDRGP4 $198
ARGP4
ADDRLP4 4644
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 8
ADDRLP4 4644
INDIRI4
ASGNI4
line 247
;247:    if (reqIndex == 0)
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $199
line 248
;248:        reqIndex = 1;
ADDRLP4 8
CNSTI4 1
ASGNI4
LABELV $199
LABELV $201
line 252
;249:
;250:__rescan:
;251:
;252:    COM_BeginParseSession(g_rotation.string);
ADDRGP4 g_rotation+16
ARGP4
ADDRGP4 COM_BeginParseSession
CALLV
pop
line 254
;253:
;254:    s = buf; // initialize token parsing
ADDRLP4 4
ADDRLP4 532
ASGNP4
line 255
;255:    map[0] = '\0';
ADDRLP4 276
CNSTI1 0
ASGNI1
ADDRGP4 $204
JUMPV
LABELV $203
line 257
;256:
;257:    while (1) {
line 258
;258:        tk = COM_ParseSep(&s, qtrue);
ADDRLP4 4
ARGP4
CNSTI4 1
ARGI4
ADDRLP4 4648
ADDRGP4 COM_ParseSep
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4648
INDIRP4
ASGNP4
line 259
;259:        if (tk[0] == '\0')
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $206
line 260
;260:            break;
ADDRGP4 $205
JUMPV
LABELV $206
line 262
;261:
;262:        if (tk[0] == '$' && tk[1] != '\0') { // cvar name
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 36
NEI4 $208
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $208
line 264
;263:            // save cvar name
;264:            strcpy(cvar, tk + 1);
ADDRLP4 20
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
ARGP4
ADDRGP4 strcpy
CALLP4
pop
line 265
;265:            tk = COM_ParseSep(&s, qfalse);
ADDRLP4 4
ARGP4
CNSTI4 0
ARGI4
ADDRLP4 4656
ADDRGP4 COM_ParseSep
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4656
INDIRP4
ASGNP4
line 267
;266:            // expect '='
;267:            if (tk[0] == '=' && tk[1] == '\0') {
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 61
NEI4 $210
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $210
line 268
;268:                tk = COM_ParseSep(&s, qtrue);
ADDRLP4 4
ARGP4
CNSTI4 1
ARGI4
ADDRLP4 4664
ADDRGP4 COM_ParseSep
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4664
INDIRP4
ASGNP4
line 269
;269:                if (!scopeLevel || curIndex == reqIndex) {
ADDRLP4 16
INDIRI4
CNSTI4 0
EQI4 $214
ADDRLP4 12
INDIRI4
ADDRLP4 8
INDIRI4
NEI4 $212
LABELV $214
line 270
;270:                    trap_Cvar_Set(cvar, tk);
ADDRLP4 20
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 271
;271:                }
LABELV $212
line 272
;272:                SkipTillSeparators(&s);
ADDRLP4 4
ARGP4
ADDRGP4 SkipTillSeparators
CALLV
pop
line 273
;273:                continue;
ADDRGP4 $204
JUMPV
LABELV $210
line 275
;274:            }
;275:            else {
line 276
;276:                COM_ParseWarning(S_COLOR_YELLOW "missing '=' after '%s'", cvar);
ADDRGP4 $215
ARGP4
ADDRLP4 20
ARGP4
ADDRGP4 COM_ParseWarning
CALLV
pop
line 277
;277:                SkipRestOfLine(&s);
ADDRLP4 4
ARGP4
ADDRGP4 SkipRestOfLine
CALLV
pop
line 278
;278:                continue;
ADDRGP4 $204
JUMPV
LABELV $208
line 282
;279:            }
;280:
;281:        }
;282:        else if (tk[0] == '{' && tk[1] == '\0') {
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 123
NEI4 $216
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $216
line 283
;283:            if (scopeLevel == 0 && curIndex) {
ADDRLP4 16
INDIRI4
CNSTI4 0
NEI4 $218
ADDRLP4 12
INDIRI4
CNSTI4 0
EQI4 $218
line 284
;284:                scopeLevel++;
ADDRLP4 16
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 285
;285:                continue;
ADDRGP4 $204
JUMPV
LABELV $218
line 287
;286:            }
;287:            else {
line 288
;288:                COM_ParseWarning(S_COLOR_YELLOW "unexpected '{'");
ADDRGP4 $220
ARGP4
ADDRGP4 COM_ParseWarning
CALLV
pop
line 289
;289:                continue;
ADDRGP4 $204
JUMPV
LABELV $216
line 292
;290:            }
;291:        }
;292:        else if (tk[0] == '}' && tk[1] == '\0') {
ADDRLP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 125
NEI4 $221
ADDRLP4 0
INDIRP4
CNSTI4 1
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $221
line 293
;293:            if (scopeLevel == 1) {
ADDRLP4 16
INDIRI4
CNSTI4 1
NEI4 $223
line 294
;294:                scopeLevel--;
ADDRLP4 16
ADDRLP4 16
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 295
;295:                continue;
ADDRGP4 $204
JUMPV
LABELV $223
line 297
;296:            }
;297:            else {
line 298
;298:                COM_ParseWarning(S_COLOR_YELLOW "unexpected '}'");
ADDRGP4 $225
ARGP4
ADDRGP4 COM_ParseWarning
CALLV
pop
line 299
;299:            }
line 300
;300:        }
ADDRGP4 $222
JUMPV
LABELV $221
line 301
;301:        else if (G_MapExist(tk)) {
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 4664
ADDRGP4 G_MapExist
CALLI4
ASGNI4
ADDRLP4 4664
INDIRI4
CNSTI4 0
EQI4 $226
line 302
;302:            curIndex++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 303
;303:            if (curIndex == reqIndex) {
ADDRLP4 12
INDIRI4
ADDRLP4 8
INDIRI4
NEI4 $227
line 304
;304:                Q_strncpyz(map, tk, sizeof(map));
ADDRLP4 276
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 Q_strncpyz
CALLV
pop
line 305
;305:            }
line 306
;306:        }
ADDRGP4 $227
JUMPV
LABELV $226
line 307
;307:        else {
line 308
;308:            COM_ParseWarning(S_COLOR_YELLOW "map '%s' doesn't exist", tk);
ADDRGP4 $230
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 COM_ParseWarning
CALLV
pop
line 309
;309:            SkipRestOfLine(&s);
ADDRLP4 4
ARGP4
ADDRGP4 SkipRestOfLine
CALLV
pop
line 310
;310:            continue;
LABELV $227
LABELV $222
line 312
;311:        }
;312:    }
LABELV $204
line 257
ADDRGP4 $203
JUMPV
LABELV $205
line 314
;313:
;314:    if (curIndex == 0) { // no maps in rotation file
ADDRLP4 12
INDIRI4
CNSTI4 0
NEI4 $231
line 315
;315:        Com_Printf(S_COLOR_YELLOW "%s: no maps in rotation file.\n", g_rotation.string);
ADDRGP4 $233
ARGP4
ADDRGP4 g_rotation+16
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 316
;316:        trap_Cvar_Set(SV_ROTATION, "1");
ADDRGP4 $198
ARGP4
ADDRGP4 $235
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 317
;317:        return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $179
JUMPV
LABELV $231
line 320
;318:    }
;319:
;320:    if (!map[0]) { // map at required index not found?
ADDRLP4 276
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $236
line 321
;321:        if (reqIndex > 1) { // try to rescan with lower index
ADDRLP4 8
INDIRI4
CNSTI4 1
LEI4 $238
line 322
;322:            Com_Printf(S_COLOR_CYAN "%s: map at index %i not found, rescan\n", g_rotation.integer, reqIndex);
ADDRGP4 $240
ARGP4
ADDRGP4 g_rotation+12
INDIRI4
ARGI4
ADDRLP4 8
INDIRI4
ARGI4
ADDRGP4 Com_Printf
CALLV
pop
line 323
;323:            reqIndex = 1;
ADDRLP4 8
CNSTI4 1
ASGNI4
line 324
;324:            goto __rescan;
ADDRGP4 $201
JUMPV
LABELV $238
line 326
;325:        }
;326:        trap_Cvar_Set(SV_ROTATION, "1");
ADDRGP4 $198
ARGP4
ADDRGP4 $235
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 327
;327:        return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $179
JUMPV
LABELV $236
line 330
;328:    }
;329:
;330:    reqIndex++;
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 331
;331:    if (reqIndex > curIndex)
ADDRLP4 8
INDIRI4
ADDRLP4 12
INDIRI4
LEI4 $242
line 332
;332:        reqIndex = 1;
ADDRLP4 8
CNSTI4 1
ASGNI4
LABELV $242
line 334
;333:
;334:    trap_Cvar_Set(SV_ROTATION, va("%i", reqIndex));
ADDRGP4 $244
ARGP4
ADDRLP4 8
INDIRI4
ARGI4
ADDRLP4 4648
ADDRGP4 va
CALLP4
ASGNP4
ADDRGP4 $198
ARGP4
ADDRLP4 4648
INDIRP4
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 335
;335:    G_LoadMap(map);
ADDRLP4 276
ARGP4
ADDRGP4 G_LoadMap
CALLV
pop
line 337
;336:
;337:    Com_Printf("ParseMapRotation: Loaded map %s\n", map);
ADDRGP4 $245
ARGP4
ADDRLP4 276
ARGP4
ADDRGP4 Com_Printf
CALLV
pop
line 339
;338:
;339:    return qtrue;
CNSTI4 1
RETI4
LABELV $179
endproc ParseMapRotation 4668 12
import svf_self_portal2
import trap_SnapVector
import trap_GeneticParentsAndChildSelection
import trap_BotResetWeaponState
import trap_BotFreeWeaponState
import trap_BotAllocWeaponState
import trap_BotLoadWeaponWeights
import trap_BotGetWeaponInfo
import trap_BotChooseBestFightWeapon
import trap_BotAddAvoidSpot
import trap_BotInitMoveState
import trap_BotFreeMoveState
import trap_BotAllocMoveState
import trap_BotPredictVisiblePosition
import trap_BotMovementViewTarget
import trap_BotReachabilityArea
import trap_BotResetLastAvoidReach
import trap_BotResetAvoidReach
import trap_BotMoveInDirection
import trap_BotMoveToGoal
import trap_BotResetMoveState
import trap_BotFreeGoalState
import trap_BotAllocGoalState
import trap_BotMutateGoalFuzzyLogic
import trap_BotSaveGoalFuzzyLogic
import trap_BotInterbreedGoalFuzzyLogic
import trap_BotFreeItemWeights
import trap_BotLoadItemWeights
import trap_BotUpdateEntityItems
import trap_BotInitLevelItems
import trap_BotSetAvoidGoalTime
import trap_BotAvoidGoalTime
import trap_BotGetLevelItemGoal
import trap_BotGetMapLocationGoal
import trap_BotGetNextCampSpotGoal
import trap_BotItemGoalInVisButNotVisible
import trap_BotTouchingGoal
import trap_BotChooseNBGItem
import trap_BotChooseLTGItem
import trap_BotGetSecondGoal
import trap_BotGetTopGoal
import trap_BotGoalName
import trap_BotDumpGoalStack
import trap_BotDumpAvoidGoals
import trap_BotEmptyGoalStack
import trap_BotPopGoal
import trap_BotPushGoal
import trap_BotResetAvoidGoals
import trap_BotRemoveFromAvoidGoals
import trap_BotResetGoalState
import trap_BotSetChatName
import trap_BotSetChatGender
import trap_BotLoadChatFile
import trap_BotReplaceSynonyms
import trap_UnifyWhiteSpaces
import trap_BotMatchVariable
import trap_BotFindMatch
import trap_StringContains
import trap_BotGetChatMessage
import trap_BotEnterChat
import trap_BotChatLength
import trap_BotReplyChat
import trap_BotNumInitialChats
import trap_BotInitialChat
import trap_BotNumConsoleMessages
import trap_BotNextConsoleMessage
import trap_BotRemoveConsoleMessage
import trap_BotQueueConsoleMessage
import trap_BotFreeChatState
import trap_BotAllocChatState
import trap_Characteristic_String
import trap_Characteristic_BInteger
import trap_Characteristic_Integer
import trap_Characteristic_BFloat
import trap_Characteristic_Float
import trap_BotFreeCharacter
import trap_BotLoadCharacter
import trap_EA_ResetInput
import trap_EA_GetInput
import trap_EA_EndRegular
import trap_EA_View
import trap_EA_Move
import trap_EA_DelayedJump
import trap_EA_Jump
import trap_EA_SelectWeapon
import trap_EA_MoveRight
import trap_EA_MoveLeft
import trap_EA_MoveBack
import trap_EA_MoveForward
import trap_EA_MoveDown
import trap_EA_MoveUp
import trap_EA_Crouch
import trap_EA_Respawn
import trap_EA_Use
import trap_EA_Attack
import trap_EA_Talk
import trap_EA_Gesture
import trap_EA_Action
import trap_EA_Command
import trap_EA_SayTeam
import trap_EA_Say
import trap_AAS_PredictClientMovement
import trap_AAS_Swimming
import trap_AAS_AlternativeRouteGoals
import trap_AAS_PredictRoute
import trap_AAS_EnableRoutingArea
import trap_AAS_AreaTravelTimeToGoalArea
import trap_AAS_AreaReachability
import trap_AAS_IntForBSPEpairKey
import trap_AAS_FloatForBSPEpairKey
import trap_AAS_VectorForBSPEpairKey
import trap_AAS_ValueForBSPEpairKey
import trap_AAS_NextBSPEntity
import trap_AAS_PointContents
import trap_AAS_TraceAreas
import trap_AAS_PointReachabilityAreaIndex
import trap_AAS_PointAreaNum
import trap_AAS_Time
import trap_AAS_PresenceTypeBoundingBox
import trap_AAS_Initialized
import trap_AAS_EntityInfo
import trap_AAS_AreaInfo
import trap_AAS_BBoxAreas
import trap_BotUserCommand
import trap_BotGetServerCommand
import trap_BotGetSnapshotEntity
import trap_BotLibTest
import trap_BotLibUpdateEntity
import trap_BotLibLoadMap
import trap_BotLibStartFrame
import trap_BotLibDefine
import trap_BotLibVarGet
import trap_BotLibVarSet
import trap_BotLibShutdown
import trap_BotLibSetup
import trap_DebugPolygonDelete
import trap_DebugPolygonCreate
import trap_GetEntityToken
import trap_GetUsercmd
import trap_BotFreeClient
import trap_BotAllocateClient
import trap_EntityContact
import trap_EntitiesInBox
import trap_UnlinkEntity
import trap_LinkEntity
import trap_AreasConnected
import trap_AdjustAreaPortalState
import trap_InPVSIgnorePortals
import trap_InPVS
import trap_PointContents
import trap_TraceCapsule
import trap_Trace
import trap_SetBrushModel
import trap_GetServerinfo
import trap_SetUserinfo
import trap_GetUserinfo
import trap_GetConfigstring
import trap_SetConfigstring
import trap_SendServerCommand
import trap_DropClient
import trap_LocateGameData
import trap_Cvar_VariableStringBuffer
import trap_Cvar_VariableValue
import trap_Cvar_VariableIntegerValue
import trap_Cvar_Set
import trap_Cvar_Update
import trap_Cvar_Register
import trap_SendConsoleCommand
import trap_FS_Seek
import trap_FS_GetFileList
import trap_FS_FCloseFile
import trap_FS_Write
import trap_FS_Read
import trap_FS_FOpenFile
import trap_Args
import trap_Argv
import trap_Argc
import trap_RealTime
import trap_Milliseconds
import trap_Error
import trap_Print
import g_rotation
import pmove_msec
import pmove_fixed
import g_smoothClients
import g_predictPVS
import g_unlagged
import g_listEntity
import g_allowVote
import g_podiumDrop
import g_podiumDist
import g_blood
import g_motd
import g_debugAlloc
import g_debugDamage
import g_debugMove
import g_inactivity
import g_forcerespawn
import g_weaponTeamRespawn
import g_weaponRespawn
import g_quadfactor
import g_knockback
import g_gravity
import g_speed
import g_dedicated
import g_needpass
import g_filterBan
import g_banIPs
import g_password
import g_logSync
import g_log
import g_warmup
import g_teamForceBalance
import g_autoJoin
import g_friendlyFire
import g_synchronousClients
import g_capturelimit
import g_timelimit
import g_fraglimit
import g_dmflags
import g_maxGameClients
import g_maxclients
import g_gametype
import sv_fps
import g_mapname
import g_cheats
import g_entities
import level
import AddTeamScore
import Pickup_Team
import CheckTeamStatus
import TeamplayInfoMessage
import Team_GetLocationMsg
import Team_GetLocation
import SelectCTFSpawnPoint
import Team_FreeEntity
import Team_ReturnFlag
import Team_InitGame
import Team_CheckHurtCarrier
import Team_FragBonuses
import Team_DroppedFlagThink
import TeamColorString
import OtherTeamName
import TeamName
import OtherTeam
import g_randomMap
import BotTestAAS
import BotAIStartFrame
import BotAIShutdownClient
import BotAISetupClient
import BotAILoadMap
import BotAIShutdown
import BotAISetup
import BotInterbreedEndMatch
import Svcmd_BotList_f
import Svcmd_AddBot_f
import G_BotConnect
import G_RemoveQueuedBotBegin
import G_CheckBotSpawn
import G_GetBotInfoByName
import G_GetBotInfoByNumber
import G_InitBots
import G_PredictPlayerMove
import G_UnTimeShiftClient
import G_UndoTimeShiftFor
import G_DoTimeShiftFor
import G_UnTimeShiftAllClients
import G_TimeShiftAllClients
import G_StoreHistory
import G_ResetHistory
import Svcmd_AbortPodium_f
import SpawnModelsOnVictoryPads
import UpdateTournamentInfo
import G_ClearClientSessionData
import G_WriteClientSessionData
import G_ReadClientSessionData
import G_InitSessionData
import G_WriteSessionData
import G_InitWorldSession
import Svcmd_GameMem_f
import G_InitMemory
import G_Alloc
import Team_ResetFlags
import CheckObeliskAttack
import Team_CheckDroppedItem
import OnSameTeam
import G_RunClient
import ClientEndFrame
import ClientThink
import ClientCommand
import ClientBegin
import ClientDisconnect
import ClientUserinfoChanged
import ClientConnect
import G_BroadcastServerCommand
import G_Error
import G_Printf
import G_LogPrintf
import G_RunThink
import CheckTeamLeader
import SetLeader
import FindIntermissionPoint
import MoveClientToIntermission
import DeathmatchScoreboardMessage
import FireWeapon
import G_FilterPacket
import G_ProcessIPBans
import ConsoleCommand
import SpotWouldTelefrag
import CalculateRanks
import AddScore
import player_die
import ClientSpawn
import InitBodyQue
import BeginIntermission
import respawn
import CopyToBodyQue
import SelectSpawnPoint
import SetClientViewAngle
import PickTeam
import TeamLeader
import TeamConnectedCount
import TeamCount
import Weapon_HookThink
import Weapon_HookFree
import CheckGauntletAttack
import SnapVectorTowards
import CalcMuzzlePoint
import LogAccuracyHit
import TeleportPlayer
import trigger_teleporter_touch
import Touch_DoorTrigger
import G_RunMover
import fire_grapple
import fire_bfg
import fire_rocket
import fire_grenade
import fire_plasma
import fire_blaster
import G_RunMissile
import TossClientCubes
import TossClientItems
import body_die
import G_InvulnerabilityEffect
import G_RadiusDamage
import G_Damage
import CanDamage
import BuildShaderStateConfig
import AddRemap
import G_SetOrigin
import G_AddEvent
import G_AddPredictableEvent
import vectoyaw
import vtos
import tv
import G_TouchSolids
import G_TouchTriggers
import G_EntitiesFree
import G_FreeEntity
import G_Sound
import G_TempEntity
import G_Spawn
import G_InitGentity
import G_SetMovedir
import G_UseTargets
import G_PickTarget
import G_Find
import G_KillBox
import G_TeamCommand
import G_SoundIndex
import G_ModelIndex
import SaveRegisteredItems
import RegisterItem
import ClearRegisteredItems
import Touch_Item
import ArmorIndex
import Think_Weapon
import FinishSpawningItem
import G_SpawnItem
import SetRespawn
import LaunchItem
import Drop_Item
import PrecacheItem
import UseHoldableItem
import SpawnTime
import RespawnItem
import G_RunItem
import G_CheckTeamItems
import G_RevertVote
import Cmd_FollowCycle_f
import SetTeam
import BroadcastTeamChange
import StopFollowing
import Cmd_Score_f
import G_NewString
import G_SpawnEntitiesFromString
import G_SpawnVector
import G_SpawnInt
import G_SpawnFloat
import G_SpawnString
import lastMapRotationTime
import lastCallVoteTime
import shuffleTeamsInProgress
import autoTeamBalanceActive
import BigEndian
import replace1
import Q_stradd
import Q_strcpy
import BG_StripColor
import BG_CleanName
import DecodedString
import EncodedString
import strtok
import Q_stristr
import BG_sprintf
import BG_PlayerTouchesItem
import BG_PlayerStateToEntityStateExtraPolate
import BG_PlayerStateToEntityState
import BG_TouchJumpPad
import BG_AddPredictableEventToPlayerstate
import BG_EvaluateTrajectoryDelta
import BG_EvaluateTrajectory
import BG_CanItemBeGrabbed
import BG_FindItemForHoldable
import BG_FindItemForPowerup
import BG_FindItemForWeapon
import BG_FindItem
import bg_numItems
import bg_itemlist
import Pmove
import PM_UpdateViewAngles
import Com_Printf
import Com_Error
import Info_NextPair
import Info_ValidateKeyValue
import Info_Validate
import Info_SetValueForKey_Big
import Info_SetValueForKey
import Info_ValueForKey
import va
import Q_CleanStr
import Q_PrintStrlen
import Q_strcat
import Q_strncpyz
import Q_strrchr
import Q_strupr
import Q_strlwr
import Q_stricmpn
import Q_strncmp
import Q_stricmp
import Q_isalpha
import Q_isupper
import Q_islower
import Q_isprint
import locase
import Com_sprintf
import Parse3DMatrix
import Parse2DMatrix
import Parse1DMatrix
import SkipRestOfLine
import SkipBracedSection
import COM_MatchToken
import Com_Split
import COM_ParseSep
import Com_InitSeparators
import SkipTillSeparators
import COM_ParseWarning
import COM_ParseError
import COM_Compress
import COM_ParseExt
import COM_Parse
import COM_GetCurrentParseLine
import COM_BeginParseSession
import COM_DefaultExtension
import COM_StripExtension
import COM_SkipPath
import Com_Clamp
import PerpendicularVector
import AngleVectors
import MatrixMultiply
import MakeNormalVectors
import RotateAroundDirection
import RotatePointAroundVector
import ProjectPointOnPlane
import PlaneFromPoints
import AngleDelta
import AngleNormalize180
import AngleNormalize360
import AnglesSubtract
import AngleSubtract
import LerpAngle
import AngleMod
import BoxOnPlaneSide
import SetPlaneSignbits
import AxisCopy
import AxisClear
import AnglesToAxis
import vectoangles
import Q_crandom
import Q_random
import Q_rand
import Q_acos
import Q_log2
import VectorRotate
import Vector4Scale
import VectorNormalize2
import VectorNormalize
import CrossProduct
import VectorInverse
import VectorNormalizeFast
import DistanceSquared
import Distance
import VectorLengthSquared
import VectorLength
import VectorCompare
import AddPointToBounds
import ClearBounds
import RadiusFromBounds
import NormalizeColor
import ColorBytes4
import ColorBytes3
import _VectorMA
import _VectorScale
import _VectorCopy
import _VectorAdd
import _VectorSubtract
import _DotProduct
import ByteToDir
import DirToByte
import ClampShort
import ClampChar
import Q_rsqrt
import Q_fabs
import axisDefault
import vec3_origin
import g_color_table
import colorDkGrey
import colorMdGrey
import colorLtGrey
import colorWhite
import colorCyan
import colorMagenta
import colorYellow
import colorBlue
import colorGreen
import colorRed
import colorBlack
import bytedirs
import Hunk_Alloc
import acos
import fabs
import abs
import tan
import atan2
import cos
import sin
import sqrt
import floor
import ceil
import memcpy
import memset
import memmove
import Q_sscanf
import ED_vsprintf
import atoi
import atof
import toupper
import tolower
import strncpy
import strstr
import strchr
import strcmp
import strcpy
import strcat
import strlen
import rand
import srand
import qsort
lit
align 1
LABELV $245
byte 1 80
byte 1 97
byte 1 114
byte 1 115
byte 1 101
byte 1 77
byte 1 97
byte 1 112
byte 1 82
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 58
byte 1 32
byte 1 76
byte 1 111
byte 1 97
byte 1 100
byte 1 101
byte 1 100
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $244
byte 1 37
byte 1 105
byte 1 0
align 1
LABELV $240
byte 1 94
byte 1 53
byte 1 37
byte 1 115
byte 1 58
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 97
byte 1 116
byte 1 32
byte 1 105
byte 1 110
byte 1 100
byte 1 101
byte 1 120
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 102
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 44
byte 1 32
byte 1 114
byte 1 101
byte 1 115
byte 1 99
byte 1 97
byte 1 110
byte 1 10
byte 1 0
align 1
LABELV $235
byte 1 49
byte 1 0
align 1
LABELV $233
byte 1 94
byte 1 51
byte 1 37
byte 1 115
byte 1 58
byte 1 32
byte 1 110
byte 1 111
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 115
byte 1 32
byte 1 105
byte 1 110
byte 1 32
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 102
byte 1 105
byte 1 108
byte 1 101
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $230
byte 1 94
byte 1 51
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 39
byte 1 37
byte 1 115
byte 1 39
byte 1 32
byte 1 100
byte 1 111
byte 1 101
byte 1 115
byte 1 110
byte 1 39
byte 1 116
byte 1 32
byte 1 101
byte 1 120
byte 1 105
byte 1 115
byte 1 116
byte 1 0
align 1
LABELV $225
byte 1 94
byte 1 51
byte 1 117
byte 1 110
byte 1 101
byte 1 120
byte 1 112
byte 1 101
byte 1 99
byte 1 116
byte 1 101
byte 1 100
byte 1 32
byte 1 39
byte 1 125
byte 1 39
byte 1 0
align 1
LABELV $220
byte 1 94
byte 1 51
byte 1 117
byte 1 110
byte 1 101
byte 1 120
byte 1 112
byte 1 101
byte 1 99
byte 1 116
byte 1 101
byte 1 100
byte 1 32
byte 1 39
byte 1 123
byte 1 39
byte 1 0
align 1
LABELV $215
byte 1 94
byte 1 51
byte 1 109
byte 1 105
byte 1 115
byte 1 115
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 39
byte 1 61
byte 1 39
byte 1 32
byte 1 97
byte 1 102
byte 1 116
byte 1 101
byte 1 114
byte 1 32
byte 1 39
byte 1 37
byte 1 115
byte 1 39
byte 1 0
align 1
LABELV $198
byte 1 115
byte 1 101
byte 1 115
byte 1 115
byte 1 105
byte 1 111
byte 1 110
byte 1 77
byte 1 97
byte 1 112
byte 1 73
byte 1 110
byte 1 100
byte 1 101
byte 1 120
byte 1 0
align 1
LABELV $197
byte 1 80
byte 1 97
byte 1 114
byte 1 115
byte 1 101
byte 1 77
byte 1 97
byte 1 112
byte 1 82
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 58
byte 1 32
byte 1 82
byte 1 101
byte 1 97
byte 1 100
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 102
byte 1 105
byte 1 108
byte 1 101
byte 1 32
byte 1 115
byte 1 117
byte 1 99
byte 1 99
byte 1 101
byte 1 115
byte 1 115
byte 1 102
byte 1 117
byte 1 108
byte 1 108
byte 1 121
byte 1 10
byte 1 0
align 1
LABELV $189
byte 1 80
byte 1 97
byte 1 114
byte 1 115
byte 1 101
byte 1 77
byte 1 97
byte 1 112
byte 1 82
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 58
byte 1 32
byte 1 82
byte 1 97
byte 1 110
byte 1 100
byte 1 111
byte 1 109
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 101
byte 1 110
byte 1 97
byte 1 98
byte 1 108
byte 1 101
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $188
byte 1 103
byte 1 95
byte 1 114
byte 1 97
byte 1 110
byte 1 100
byte 1 111
byte 1 109
byte 1 77
byte 1 97
byte 1 112
byte 1 0
align 1
LABELV $180
byte 1 80
byte 1 97
byte 1 114
byte 1 115
byte 1 101
byte 1 77
byte 1 97
byte 1 112
byte 1 82
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 58
byte 1 32
byte 1 83
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 112
byte 1 97
byte 1 114
byte 1 115
byte 1 105
byte 1 110
byte 1 103
byte 1 10
byte 1 0
align 1
LABELV $178
byte 1 71
byte 1 95
byte 1 76
byte 1 111
byte 1 97
byte 1 100
byte 1 77
byte 1 97
byte 1 112
byte 1 58
byte 1 32
byte 1 77
byte 1 97
byte 1 112
byte 1 32
byte 1 99
byte 1 111
byte 1 109
byte 1 109
byte 1 97
byte 1 110
byte 1 100
byte 1 32
byte 1 101
byte 1 120
byte 1 101
byte 1 99
byte 1 117
byte 1 116
byte 1 101
byte 1 100
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $173
byte 1 109
byte 1 97
byte 1 112
byte 1 95
byte 1 114
byte 1 101
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 32
byte 1 48
byte 1 10
byte 1 0
align 1
LABELV $171
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 34
byte 1 10
byte 1 0
align 1
LABELV $156
byte 1 81
byte 1 51
byte 1 32
byte 1 49
byte 1 46
byte 1 51
byte 1 50
byte 1 99
byte 1 32
byte 1 0
align 1
LABELV $155
byte 1 81
byte 1 51
byte 1 32
byte 1 49
byte 1 46
byte 1 51
byte 1 50
byte 1 98
byte 1 32
byte 1 0
align 1
LABELV $154
byte 1 81
byte 1 51
byte 1 32
byte 1 49
byte 1 46
byte 1 51
byte 1 50
byte 1 32
byte 1 0
align 1
LABELV $151
byte 1 118
byte 1 101
byte 1 114
byte 1 115
byte 1 105
byte 1 111
byte 1 110
byte 1 0
align 1
LABELV $150
byte 1 71
byte 1 95
byte 1 76
byte 1 111
byte 1 97
byte 1 100
byte 1 77
byte 1 97
byte 1 112
byte 1 58
byte 1 32
byte 1 76
byte 1 111
byte 1 97
byte 1 100
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $143
byte 1 109
byte 1 97
byte 1 112
byte 1 115
byte 1 47
byte 1 37
byte 1 115
byte 1 46
byte 1 98
byte 1 115
byte 1 112
byte 1 0
align 1
LABELV $94
byte 1 82
byte 1 97
byte 1 110
byte 1 100
byte 1 111
byte 1 109
byte 1 105
byte 1 122
byte 1 101
byte 1 77
byte 1 97
byte 1 112
byte 1 82
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 58
byte 1 32
byte 1 83
byte 1 101
byte 1 108
byte 1 101
byte 1 99
byte 1 116
byte 1 101
byte 1 100
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 61
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $93
byte 1 82
byte 1 97
byte 1 110
byte 1 100
byte 1 111
byte 1 109
byte 1 105
byte 1 122
byte 1 101
byte 1 77
byte 1 97
byte 1 112
byte 1 82
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 58
byte 1 32
byte 1 114
byte 1 97
byte 1 110
byte 1 100
byte 1 111
byte 1 109
byte 1 73
byte 1 110
byte 1 100
byte 1 101
byte 1 120
byte 1 32
byte 1 61
byte 1 32
byte 1 37
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $92
byte 1 94
byte 1 51
byte 1 78
byte 1 111
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 115
byte 1 32
byte 1 102
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 32
byte 1 105
byte 1 110
byte 1 32
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 102
byte 1 105
byte 1 108
byte 1 101
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $89
byte 1 82
byte 1 97
byte 1 110
byte 1 100
byte 1 111
byte 1 109
byte 1 105
byte 1 122
byte 1 101
byte 1 77
byte 1 97
byte 1 112
byte 1 82
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 58
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 67
byte 1 111
byte 1 117
byte 1 110
byte 1 116
byte 1 32
byte 1 61
byte 1 32
byte 1 37
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $88
byte 1 94
byte 1 51
byte 1 84
byte 1 111
byte 1 111
byte 1 32
byte 1 109
byte 1 97
byte 1 110
byte 1 121
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 115
byte 1 32
byte 1 105
byte 1 110
byte 1 32
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $69
byte 1 94
byte 1 51
byte 1 37
byte 1 115
byte 1 58
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 102
byte 1 105
byte 1 108
byte 1 101
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 116
byte 1 111
byte 1 111
byte 1 32
byte 1 98
byte 1 105
byte 1 103
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $65
byte 1 94
byte 1 51
byte 1 37
byte 1 115
byte 1 58
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 102
byte 1 105
byte 1 108
byte 1 101
byte 1 32
byte 1 100
byte 1 111
byte 1 101
byte 1 115
byte 1 110
byte 1 39
byte 1 116
byte 1 32
byte 1 101
byte 1 120
byte 1 105
byte 1 115
byte 1 116
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $61
byte 1 94
byte 1 51
byte 1 82
byte 1 97
byte 1 110
byte 1 100
byte 1 111
byte 1 109
byte 1 105
byte 1 122
byte 1 101
byte 1 77
byte 1 97
byte 1 112
byte 1 82
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 58
byte 1 32
byte 1 85
byte 1 110
byte 1 97
byte 1 98
byte 1 108
byte 1 101
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 97
byte 1 108
byte 1 108
byte 1 111
byte 1 99
byte 1 97
byte 1 116
byte 1 101
byte 1 32
byte 1 109
byte 1 101
byte 1 109
byte 1 111
byte 1 114
byte 1 121
byte 1 32
byte 1 102
byte 1 111
byte 1 114
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 115
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $58
byte 1 94
byte 1 51
byte 1 82
byte 1 97
byte 1 110
byte 1 100
byte 1 111
byte 1 109
byte 1 105
byte 1 122
byte 1 101
byte 1 77
byte 1 97
byte 1 112
byte 1 82
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 58
byte 1 32
byte 1 85
byte 1 110
byte 1 97
byte 1 98
byte 1 108
byte 1 101
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 97
byte 1 108
byte 1 108
byte 1 111
byte 1 99
byte 1 97
byte 1 116
byte 1 101
byte 1 32
byte 1 109
byte 1 101
byte 1 109
byte 1 111
byte 1 114
byte 1 121
byte 1 32
byte 1 102
byte 1 111
byte 1 114
byte 1 32
byte 1 98
byte 1 117
byte 1 102
byte 1 102
byte 1 101
byte 1 114
byte 1 46
byte 1 10
byte 1 0

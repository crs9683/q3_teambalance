data
export lastCallVoteTime
align 4
LABELV lastCallVoteTime
byte 4 0
export lastMapRotationTime
align 4
LABELV lastMapRotationTime
byte 4 0
align 4
LABELV gameCvarTable
byte 4 0
address $56
address $57
byte 4 68
byte 4 0
byte 4 0
skip 4
byte 4 0
address $58
address $59
byte 4 64
byte 4 0
byte 4 0
skip 4
address g_cheats
address $60
address $61
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_mapname
address $62
address $61
byte 4 68
byte 4 0
byte 4 0
byte 4 0
address sv_fps
address $63
address $64
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_gametype
address $65
address $66
byte 4 38
byte 4 0
byte 4 0
byte 4 0
address g_maxclients
address $67
address $68
byte 4 37
byte 4 0
byte 4 0
byte 4 0
address g_maxGameClients
address $69
address $66
byte 4 37
byte 4 0
byte 4 0
byte 4 0
address g_dmflags
address $70
address $66
byte 4 5
byte 4 0
byte 4 1
byte 4 0
address g_fraglimit
address $71
address $72
byte 4 1029
byte 4 0
byte 4 1
byte 4 0
address g_timelimit
address $73
address $66
byte 4 1029
byte 4 0
byte 4 1
byte 4 0
address g_capturelimit
address $74
address $68
byte 4 1029
byte 4 0
byte 4 1
byte 4 0
address g_synchronousClients
address $75
address $66
byte 4 8
byte 4 0
byte 4 0
byte 4 0
address g_friendlyFire
address $76
address $66
byte 4 1
byte 4 0
byte 4 1
byte 4 0
address g_autoJoin
address $77
address $78
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_teamForceBalance
address $79
address $66
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_warmup
address $80
address $72
byte 4 1
byte 4 0
byte 4 1
byte 4 0
address g_log
address $81
address $82
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_logSync
address $83
address $66
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_password
address $84
address $61
byte 4 2
byte 4 0
byte 4 0
byte 4 0
address g_banIPs
address $85
address $61
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_filterBan
address $86
address $78
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_needpass
address $87
address $66
byte 4 68
byte 4 0
byte 4 0
byte 4 0
address g_dedicated
address $88
address $66
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_speed
address $89
address $90
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_gravity
address $91
address $92
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_knockback
address $93
address $94
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_quadfactor
address $95
address $96
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_weaponRespawn
address $97
address $98
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_weaponTeamRespawn
address $99
address $64
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_forcerespawn
address $100
address $72
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_inactivity
address $101
address $66
byte 4 0
byte 4 0
byte 4 1
byte 4 0
address g_debugMove
address $102
address $66
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_debugDamage
address $103
address $66
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_debugAlloc
address $104
address $66
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_motd
address $105
address $61
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_blood
address $106
address $78
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_podiumDist
address $107
address $108
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_podiumDrop
address $109
address $110
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_allowVote
address $111
address $78
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_listEntity
address $112
address $66
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address g_unlagged
address $113
address $78
byte 4 5
byte 4 0
byte 4 0
byte 4 0
address g_predictPVS
address $114
address $66
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_smoothClients
address $115
address $78
byte 4 0
byte 4 0
byte 4 0
byte 4 0
address pmove_fixed
address $116
address $66
byte 4 8
byte 4 0
byte 4 0
byte 4 0
address pmove_msec
address $117
address $68
byte 4 8
byte 4 0
byte 4 0
byte 4 0
address g_rotation
address $118
address $66
byte 4 1
byte 4 0
byte 4 0
byte 4 0
address g_randomMap
address $119
address $66
byte 4 1
byte 4 0
byte 4 0
byte 4 0
export vmMain
code
proc vmMain 16 12
file "..\..\..\..\code\game\g_main.c"
line 64
;1:// Copyright (C) 1999-2000 Id Software, Inc.
;2://
;3:
;4:#include "g_local.h"
;5:
;6:int lastCallVoteTime = 0; // Define the variable
;7:int lastMapRotationTime = 0; // Define the variable
;8:
;9:level_locals_t	level;
;10:
;11:typedef struct {
;12:	vmCvar_t	*vmCvar;
;13:	const char	*cvarName;
;14:	const char	*defaultString;
;15:	int			cvarFlags;
;16:	int			modificationCount;	// for tracking changes
;17:	qboolean	trackChange;		// track this variable, and announce if changed
;18:	qboolean	teamShader;			// track and if changed, update shader state
;19:} cvarTable_t;
;20:
;21:gentity_t		g_entities[MAX_GENTITIES];
;22:gclient_t		g_clients[MAX_CLIENTS];
;23:
;24:#define DECLARE_G_CVAR
;25:	#include "g_cvar.h"
;26:#undef DECLARE_G_CVAR
;27:
;28:static cvarTable_t gameCvarTable[] = {
;29:
;30:	// noset vars
;31:	{ NULL, "gamename", GAMEVERSION , CVAR_SERVERINFO | CVAR_ROM, 0, qfalse  },
;32:	{ NULL, "gamedate", __DATE__ , CVAR_ROM, 0, qfalse  },
;33:
;34:#define G_CVAR_LIST
;35:	#include "g_cvar.h"
;36:#undef G_CVAR_LIST
;37:
;38:};
;39:
;40:
;41:static void G_InitGame( int levelTime, int randomSeed, int restart );
;42:static void G_RunFrame( int levelTime );
;43:static void G_ShutdownGame( int restart );
;44:static void CheckExitRules( void );
;45:static void SendScoreboardMessageToAllClients( void );
;46:
;47:// extension interface
;48:#ifdef Q3_VM
;49:qboolean (*trap_GetValue)( char *value, int valueSize, const char *key );
;50:#else
;51:int dll_com_trapGetValue;
;52:#endif
;53:
;54:int	svf_self_portal2;
;55:
;56:/*
;57:================
;58:vmMain
;59:
;60:This is the only way control passes into the module.
;61:This must be the very first function compiled into the .q3vm file
;62:================
;63:*/
;64:DLLEXPORT intptr_t vmMain( int command, int arg0, int arg1, int arg2 ) {
line 65
;65:	switch ( command ) {
ADDRLP4 0
ADDRFP4 0
INDIRI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
LTI4 $121
ADDRLP4 0
INDIRI4
CNSTI4 10
GTI4 $121
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $134
ADDP4
INDIRP4
JUMPV
data
align 4
LABELV $134
address $123
address $124
address $125
address $129
address $127
address $128
address $130
address $126
address $131
address $132
address $133
code
LABELV $123
line 67
;66:	case GAME_INIT:
;67:		G_InitGame( arg0, arg1, arg2 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRFP4 8
INDIRI4
ARGI4
ADDRFP4 12
INDIRI4
ARGI4
ADDRGP4 G_InitGame
CALLV
pop
line 68
;68:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $120
JUMPV
LABELV $124
line 70
;69:	case GAME_SHUTDOWN:
;70:		G_ShutdownGame( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 G_ShutdownGame
CALLV
pop
line 71
;71:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $120
JUMPV
LABELV $125
line 73
;72:	case GAME_CLIENT_CONNECT:
;73:		return (intptr_t)ClientConnect( arg0, arg1, arg2 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRFP4 8
INDIRI4
ARGI4
ADDRFP4 12
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 ClientConnect
CALLP4
ASGNP4
ADDRLP4 4
INDIRP4
CVPU4 4
CVUI4 4
RETI4
ADDRGP4 $120
JUMPV
LABELV $126
line 75
;74:	case GAME_CLIENT_THINK:
;75:		ClientThink( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientThink
CALLV
pop
line 76
;76:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $120
JUMPV
LABELV $127
line 78
;77:	case GAME_CLIENT_USERINFO_CHANGED:
;78:		ClientUserinfoChanged( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 79
;79:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $120
JUMPV
LABELV $128
line 81
;80:	case GAME_CLIENT_DISCONNECT:
;81:		ClientDisconnect( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientDisconnect
CALLV
pop
line 82
;82:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $120
JUMPV
LABELV $129
line 84
;83:	case GAME_CLIENT_BEGIN:
;84:		ClientBegin( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientBegin
CALLV
pop
line 85
;85:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $120
JUMPV
LABELV $130
line 87
;86:	case GAME_CLIENT_COMMAND:
;87:		ClientCommand( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientCommand
CALLV
pop
line 88
;88:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $120
JUMPV
LABELV $131
line 90
;89:	case GAME_RUN_FRAME:
;90:		G_RunFrame( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 G_RunFrame
CALLV
pop
line 91
;91:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $120
JUMPV
LABELV $132
line 93
;92:	case GAME_CONSOLE_COMMAND:
;93:		return ConsoleCommand();
ADDRLP4 8
ADDRGP4 ConsoleCommand
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
RETI4
ADDRGP4 $120
JUMPV
LABELV $133
line 95
;94:	case BOTAI_START_FRAME:
;95:		return BotAIStartFrame( arg0 );
ADDRFP4 4
INDIRI4
ARGI4
ADDRLP4 12
ADDRGP4 BotAIStartFrame
CALLI4
ASGNI4
ADDRLP4 12
INDIRI4
RETI4
ADDRGP4 $120
JUMPV
LABELV $121
line 98
;96:	}
;97:
;98:	return -1;
CNSTI4 -1
RETI4
LABELV $120
endproc vmMain 16 12
export G_Printf
proc G_Printf 8204 12
line 102
;99:}
;100:
;101:
;102:void QDECL G_Printf( const char *fmt, ... ) {
line 107
;103:	va_list		argptr;
;104:	char		text[BIG_INFO_STRING];
;105:	int			len;
;106:
;107:	va_start( argptr, fmt );
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
line 108
;108:	len = ED_vsprintf( text, fmt, argptr );
ADDRLP4 4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 8200
ADDRGP4 ED_vsprintf
CALLI4
ASGNI4
ADDRLP4 8196
ADDRLP4 8200
INDIRI4
ASGNI4
line 109
;109:	va_end( argptr );
ADDRLP4 0
CNSTP4 0
ASGNP4
line 111
;110:
;111:	text[4095] = '\0'; // truncate to 1.32b/c max print buffer size
ADDRLP4 4+4095
CNSTI1 0
ASGNI1
line 113
;112:
;113:	trap_Print( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Print
CALLV
pop
line 114
;114:}
LABELV $135
endproc G_Printf 8204 12
export G_BroadcastServerCommand
proc G_BroadcastServerCommand 4 8
line 117
;115:
;116:
;117:void G_BroadcastServerCommand( int ignoreClient, const char *command ) {
line 119
;118:	int i;
;119:	for ( i = 0; i < level.maxclients; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $142
JUMPV
LABELV $139
line 120
;120:		if ( i == ignoreClient )
ADDRLP4 0
INDIRI4
ADDRFP4 0
INDIRI4
NEI4 $144
line 121
;121:			continue;
ADDRGP4 $140
JUMPV
LABELV $144
line 122
;122:		if ( level.clients[ i ].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $146
line 123
;123:			trap_SendServerCommand( i, command );
ADDRLP4 0
INDIRI4
ARGI4
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 124
;124:		}
LABELV $146
line 125
;125:	}
LABELV $140
line 119
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $142
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $139
line 126
;126:}
LABELV $138
endproc G_BroadcastServerCommand 4 8
export G_Error
proc G_Error 1028 12
line 129
;127:
;128:
;129:void QDECL G_Error( const char *fmt, ... ) {
line 133
;130:	va_list		argptr;
;131:	char		text[1024];
;132:
;133:	va_start( argptr, fmt );
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
line 134
;134:	ED_vsprintf( text, fmt, argptr );
ADDRLP4 4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ED_vsprintf
CALLI4
pop
line 135
;135:	va_end( argptr );
ADDRLP4 0
CNSTP4 0
ASGNP4
line 137
;136:
;137:	trap_Error( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Error
CALLV
pop
line 138
;138:}
LABELV $148
endproc G_Error 1028 12
export G_FindTeams
proc G_FindTeams 36 12
line 152
;139:
;140:
;141:/*
;142:================
;143:G_FindTeams
;144:
;145:Chain together all entities with a matching team field.
;146:Entity teams are used for item groups and multi-entity mover groups.
;147:
;148:All but the first will have the FL_TEAMSLAVE flag set and teammaster field set
;149:All but the last will have the teamchain field set to the next one
;150:================
;151:*/
;152:void G_FindTeams( void ) {
line 157
;153:	gentity_t	*e, *e2;
;154:	int		i, j;
;155:	int		c, c2;
;156:
;157:	c = 0;
ADDRLP4 20
CNSTI4 0
ASGNI4
line 158
;158:	c2 = 0;
ADDRLP4 12
CNSTI4 0
ASGNI4
line 159
;159:	for ( i=MAX_CLIENTS, e=g_entities+i ; i < level.num_entities ; i++,e++ ){
ADDRLP4 16
CNSTI4 64
ASGNI4
ADDRLP4 4
ADDRLP4 16
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
ADDRGP4 $154
JUMPV
LABELV $151
line 160
;160:		if (!e->inuse)
ADDRLP4 4
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $156
line 161
;161:			continue;
ADDRGP4 $152
JUMPV
LABELV $156
line 162
;162:		if (!e->team)
ADDRLP4 4
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $158
line 163
;163:			continue;
ADDRGP4 $152
JUMPV
LABELV $158
line 164
;164:		if (e->flags & FL_TEAMSLAVE)
ADDRLP4 4
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 1024
BANDI4
CNSTI4 0
EQI4 $160
line 165
;165:			continue;
ADDRGP4 $152
JUMPV
LABELV $160
line 166
;166:		e->teammaster = e;
ADDRLP4 4
INDIRP4
CNSTI4 780
ADDP4
ADDRLP4 4
INDIRP4
ASGNP4
line 167
;167:		c++;
ADDRLP4 20
ADDRLP4 20
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 168
;168:		c2++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 169
;169:		for (j=i+1, e2=e+1 ; j < level.num_entities ; j++,e2++)
ADDRLP4 8
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 4
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
ADDRGP4 $165
JUMPV
LABELV $162
line 170
;170:		{
line 171
;171:			if (!e2->inuse)
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $167
line 172
;172:				continue;
ADDRGP4 $163
JUMPV
LABELV $167
line 173
;173:			if (!e2->team)
ADDRLP4 0
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $169
line 174
;174:				continue;
ADDRGP4 $163
JUMPV
LABELV $169
line 175
;175:			if (e2->flags & FL_TEAMSLAVE)
ADDRLP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 1024
BANDI4
CNSTI4 0
EQI4 $171
line 176
;176:				continue;
ADDRGP4 $163
JUMPV
LABELV $171
line 177
;177:			if (!strcmp(e->team, e2->team))
ADDRLP4 4
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 656
ADDP4
INDIRP4
ARGP4
ADDRLP4 28
ADDRGP4 strcmp
CALLI4
ASGNI4
ADDRLP4 28
INDIRI4
CNSTI4 0
NEI4 $173
line 178
;178:			{
line 179
;179:				c2++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 180
;180:				e2->teamchain = e->teamchain;
ADDRLP4 0
INDIRP4
CNSTI4 776
ADDP4
ADDRLP4 4
INDIRP4
CNSTI4 776
ADDP4
INDIRP4
ASGNP4
line 181
;181:				e->teamchain = e2;
ADDRLP4 4
INDIRP4
CNSTI4 776
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
line 182
;182:				e2->teammaster = e;
ADDRLP4 0
INDIRP4
CNSTI4 780
ADDP4
ADDRLP4 4
INDIRP4
ASGNP4
line 183
;183:				e2->flags |= FL_TEAMSLAVE;
ADDRLP4 32
ADDRLP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 1024
BORI4
ASGNI4
line 186
;184:
;185:				// make sure that targets only point at the master
;186:				if ( e2->targetname ) {
ADDRLP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $175
line 187
;187:					e->targetname = e2->targetname;
ADDRLP4 4
INDIRP4
CNSTI4 652
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 652
ADDP4
INDIRP4
ASGNP4
line 188
;188:					e2->targetname = NULL;
ADDRLP4 0
INDIRP4
CNSTI4 652
ADDP4
CNSTP4 0
ASGNP4
line 189
;189:				}
LABELV $175
line 190
;190:			}
LABELV $173
line 191
;191:		}
LABELV $163
line 169
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $165
ADDRLP4 8
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $162
line 192
;192:	}
LABELV $152
line 159
ADDRLP4 16
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
ADDRLP4 4
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $154
ADDRLP4 16
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $151
line 194
;193:
;194:	G_Printf ("%i teams with %i entities\n", c, c2);
ADDRGP4 $177
ARGP4
ADDRLP4 20
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
line 195
;195:}
LABELV $150
endproc G_FindTeams 36 12
export G_RemapTeamShaders
proc G_RemapTeamShaders 0 0
line 198
;196:
;197:
;198:void G_RemapTeamShaders( void ) {
line 210
;199:#ifdef MISSIONPACK
;200:	char string[1024];
;201:	float f = level.time * 0.001;
;202:	Com_sprintf( string, sizeof(string), "team_icon/%s_red", g_redteam.string );
;203:	AddRemap("textures/ctf2/redteam01", string, f); 
;204:	AddRemap("textures/ctf2/redteam02", string, f); 
;205:	Com_sprintf( string, sizeof(string), "team_icon/%s_blue", g_blueteam.string );
;206:	AddRemap("textures/ctf2/blueteam01", string, f); 
;207:	AddRemap("textures/ctf2/blueteam02", string, f); 
;208:	trap_SetConfigstring(CS_SHADERSTATE, BuildShaderStateConfig());
;209:#endif
;210:}
LABELV $178
endproc G_RemapTeamShaders 0 0
export G_RegisterCvars
proc G_RegisterCvars 20 16
line 218
;211:
;212:
;213:/*
;214:=================
;215:G_RegisterCvars
;216:=================
;217:*/
;218:void G_RegisterCvars( void ) {
line 219
;219:	qboolean remapped = qfalse;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 223
;220:	cvarTable_t *cv;
;221:	int i;
;222:
;223:	for ( i = 0, cv = gameCvarTable ; i < ARRAY_LEN( gameCvarTable ) ; i++, cv++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 0
ADDRGP4 gameCvarTable
ASGNP4
ADDRGP4 $183
JUMPV
LABELV $180
line 224
;224:		trap_Cvar_Register( cv->vmCvar, cv->cvarName,
ADDRLP4 0
INDIRP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 8
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 12
ADDP4
INDIRI4
ARGI4
ADDRGP4 trap_Cvar_Register
CALLV
pop
line 226
;225:			cv->defaultString, cv->cvarFlags );
;226:		if ( cv->vmCvar )
ADDRLP4 0
INDIRP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $184
line 227
;227:			cv->modificationCount = cv->vmCvar->modificationCount;
ADDRLP4 0
INDIRP4
CNSTI4 16
ADDP4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
ASGNI4
LABELV $184
line 229
;228:
;229:		if (cv->teamShader) {
ADDRLP4 0
INDIRP4
CNSTI4 24
ADDP4
INDIRI4
CNSTI4 0
EQI4 $186
line 230
;230:			remapped = qtrue;
ADDRLP4 8
CNSTI4 1
ASGNI4
line 231
;231:		}
LABELV $186
line 232
;232:	}
LABELV $181
line 223
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 28
ADDP4
ASGNP4
LABELV $183
ADDRLP4 4
INDIRI4
CVIU4 4
CNSTU4 48
LTU4 $180
line 234
;233:
;234:	if (remapped) {
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $188
line 235
;235:		G_RemapTeamShaders();
ADDRGP4 G_RemapTeamShaders
CALLV
pop
line 236
;236:	}
LABELV $188
line 239
;237:
;238:	// check some things
;239:	if ( g_gametype.integer < 0 || g_gametype.integer >= GT_MAX_GAME_TYPE ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 0
LTI4 $194
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 5
LTI4 $190
LABELV $194
line 240
;240:		G_Printf( "g_gametype %i is out of range, defaulting to 0\n", g_gametype.integer );
ADDRGP4 $195
ARGP4
ADDRGP4 g_gametype+12
INDIRI4
ARGI4
ADDRGP4 G_Printf
CALLV
pop
line 241
;241:		trap_Cvar_Set( "g_gametype", "0" );
ADDRGP4 $65
ARGP4
ADDRGP4 $66
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 242
;242:		trap_Cvar_Update( &g_gametype );
ADDRGP4 g_gametype
ARGP4
ADDRGP4 trap_Cvar_Update
CALLV
pop
line 243
;243:	}
LABELV $190
line 245
;244:
;245:	level.warmupModificationCount = g_warmup.modificationCount;
ADDRGP4 level+356
ADDRGP4 g_warmup+4
INDIRI4
ASGNI4
line 248
;246:
;247:	// force g_doWarmup to 1
;248:	trap_Cvar_Register( NULL, "g_doWarmup", "1", CVAR_ROM );
CNSTP4 0
ARGP4
ADDRGP4 $199
ARGP4
ADDRGP4 $78
ARGP4
CNSTI4 64
ARGI4
ADDRGP4 trap_Cvar_Register
CALLV
pop
line 249
;249:	trap_Cvar_Set( "g_doWarmup", "1" );
ADDRGP4 $199
ARGP4
ADDRGP4 $78
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 250
;250:}
LABELV $179
endproc G_RegisterCvars 20 16
proc G_UpdateCvars 28 12
line 258
;251:
;252:
;253:/*
;254:=================
;255:G_UpdateCvars
;256:=================
;257:*/
;258:static void G_UpdateCvars( void ) {
line 261
;259:	int			i;
;260:	cvarTable_t	*cv;
;261:	qboolean remapped = qfalse;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 263
;262:
;263:	for ( i = 0, cv = gameCvarTable ; i < ARRAY_LEN( gameCvarTable ) ; i++, cv++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 0
ADDRGP4 gameCvarTable
ASGNP4
ADDRGP4 $204
JUMPV
LABELV $201
line 264
;264:		if ( cv->vmCvar ) {
ADDRLP4 0
INDIRP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $205
line 265
;265:			trap_Cvar_Update( cv->vmCvar );
ADDRLP4 0
INDIRP4
INDIRP4
ARGP4
ADDRGP4 trap_Cvar_Update
CALLV
pop
line 267
;266:
;267:			if ( cv->modificationCount != cv->vmCvar->modificationCount ) {
ADDRLP4 0
INDIRP4
CNSTI4 16
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
EQI4 $207
line 268
;268:				cv->modificationCount = cv->vmCvar->modificationCount;
ADDRLP4 0
INDIRP4
CNSTI4 16
ADDP4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
ASGNI4
line 270
;269:
;270:				if ( cv->trackChange ) {
ADDRLP4 0
INDIRP4
CNSTI4 20
ADDP4
INDIRI4
CNSTI4 0
EQI4 $209
line 271
;271:					G_BroadcastServerCommand( -1, va("print \"Server: %s changed to %s\n\"", 
ADDRGP4 $211
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
INDIRP4
CNSTI4 16
ADDP4
ARGP4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 -1
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 273
;272:						cv->cvarName, cv->vmCvar->string ) );
;273:				}
LABELV $209
line 275
;274:
;275:				if (cv->teamShader) {
ADDRLP4 0
INDIRP4
CNSTI4 24
ADDP4
INDIRI4
CNSTI4 0
EQI4 $212
line 276
;276:					remapped = qtrue;
ADDRLP4 8
CNSTI4 1
ASGNI4
line 277
;277:				}
LABELV $212
line 278
;278:			}
LABELV $207
line 279
;279:		}
LABELV $205
line 280
;280:	}
LABELV $202
line 263
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 28
ADDP4
ASGNP4
LABELV $204
ADDRLP4 4
INDIRI4
CVIU4 4
CNSTU4 48
LTU4 $201
line 282
;281:
;282:	if (remapped) {
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $214
line 283
;283:		G_RemapTeamShaders();
ADDRGP4 G_RemapTeamShaders
CALLV
pop
line 284
;284:	}
LABELV $214
line 285
;285:}
LABELV $200
endproc G_UpdateCvars 28 12
proc G_LocateSpawnSpots 44 12
line 289
;286:
;287:
;288:static void G_LocateSpawnSpots( void ) 
;289:{
line 293
;290:	gentity_t			*ent;
;291:	int i, n;
;292:
;293:	level.spawnSpots[ SPAWN_SPOT_INTERMISSION ] = NULL;
ADDRGP4 level+7688+4092
CNSTP4 0
ASGNP4
line 296
;294:
;295:	// locate all spawn spots
;296:	n = 0;
ADDRLP4 4
CNSTI4 0
ASGNI4
line 297
;297:	ent = g_entities + MAX_CLIENTS;
ADDRLP4 0
ADDRGP4 g_entities+52224
ASGNP4
line 298
;298:	for ( i = MAX_CLIENTS; i < MAX_GENTITIES; i++, ent++ ) {
ADDRLP4 8
CNSTI4 64
ASGNI4
LABELV $220
line 300
;299:		
;300:		if ( !ent->inuse || !ent->classname )
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $226
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $224
LABELV $226
line 301
;301:			continue;
ADDRGP4 $221
JUMPV
LABELV $224
line 304
;302:
;303:		// intermission/ffa spots
;304:		if ( !Q_stricmpn( ent->classname, "info_player_", 12 ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
ARGP4
ADDRGP4 $229
ARGP4
CNSTI4 12
ARGI4
ADDRLP4 16
ADDRGP4 Q_stricmpn
CALLI4
ASGNI4
ADDRLP4 16
INDIRI4
CNSTI4 0
NEI4 $227
line 305
;305:			if ( !Q_stricmp( ent->classname+12, "intermission" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 12
ADDP4
ARGP4
ADDRGP4 $232
ARGP4
ADDRLP4 20
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 20
INDIRI4
CNSTI4 0
NEI4 $230
line 306
;306:				if ( level.spawnSpots[ SPAWN_SPOT_INTERMISSION ] == NULL ) {
ADDRGP4 level+7688+4092
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $221
line 307
;307:					level.spawnSpots[ SPAWN_SPOT_INTERMISSION ] = ent; // put in the last slot
ADDRGP4 level+7688+4092
ADDRLP4 0
INDIRP4
ASGNP4
line 308
;308:					ent->fteam = TEAM_FREE;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 0
ASGNI4
line 309
;309:				}
line 310
;310:				continue;
ADDRGP4 $221
JUMPV
LABELV $230
line 312
;311:			}
;312:			if ( !Q_stricmp( ent->classname+12, "deathmatch" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 12
ADDP4
ARGP4
ADDRGP4 $241
ARGP4
ADDRLP4 24
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 24
INDIRI4
CNSTI4 0
NEI4 $221
line 313
;313:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 314
;314:				level.numSpawnSpotsFFA++;
ADDRLP4 28
ADDRGP4 level+11792
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 315
;315:				ent->fteam = TEAM_FREE;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 0
ASGNI4
line 316
;316:				ent->count = 1;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 1
ASGNI4
line 317
;317:				continue;
ADDRGP4 $221
JUMPV
line 319
;318:			}
;319:			continue;
LABELV $227
line 323
;320:		}
;321:
;322:		// team spawn spots
;323:		if ( !Q_stricmpn( ent->classname, "team_CTF_", 9 ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
ARGP4
ADDRGP4 $246
ARGP4
CNSTI4 9
ARGI4
ADDRLP4 20
ADDRGP4 Q_stricmpn
CALLI4
ASGNI4
ADDRLP4 20
INDIRI4
CNSTI4 0
NEI4 $244
line 324
;324:			if ( !Q_stricmp( ent->classname+9, "redspawn" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 9
ADDP4
ARGP4
ADDRGP4 $249
ARGP4
ADDRLP4 24
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 24
INDIRI4
CNSTI4 0
NEI4 $247
line 325
;325:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 326
;326:				level.numSpawnSpotsTeam++;
ADDRLP4 28
ADDRGP4 level+11788
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 327
;327:				ent->fteam = TEAM_RED;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 1
ASGNI4
line 328
;328:				ent->count = 1; // means its not initial spawn point
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 1
ASGNI4
line 329
;329:				continue;
ADDRGP4 $221
JUMPV
LABELV $247
line 331
;330:			}
;331:			if ( !Q_stricmp( ent->classname+9, "bluespawn" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 9
ADDP4
ARGP4
ADDRGP4 $254
ARGP4
ADDRLP4 28
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 28
INDIRI4
CNSTI4 0
NEI4 $252
line 332
;332:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 333
;333:				level.numSpawnSpotsTeam++;
ADDRLP4 32
ADDRGP4 level+11788
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 334
;334:				ent->fteam = TEAM_BLUE;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 2
ASGNI4
line 335
;335:				ent->count = 1;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 1
ASGNI4
line 336
;336:				continue;
ADDRGP4 $221
JUMPV
LABELV $252
line 339
;337:			}
;338:			// base spawn spots
;339:			if ( !Q_stricmp( ent->classname+9, "redplayer" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 9
ADDP4
ARGP4
ADDRGP4 $259
ARGP4
ADDRLP4 32
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 32
INDIRI4
CNSTI4 0
NEI4 $257
line 340
;340:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 341
;341:				level.numSpawnSpotsTeam++;
ADDRLP4 36
ADDRGP4 level+11788
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 342
;342:				ent->fteam = TEAM_RED;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 1
ASGNI4
line 343
;343:				ent->count = 0;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 0
ASGNI4
line 344
;344:				continue;
ADDRGP4 $221
JUMPV
LABELV $257
line 346
;345:			}
;346:			if ( !Q_stricmp( ent->classname+9, "blueplayer" ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
CNSTI4 9
ADDP4
ARGP4
ADDRGP4 $264
ARGP4
ADDRLP4 36
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 36
INDIRI4
CNSTI4 0
NEI4 $262
line 347
;347:				level.spawnSpots[n] = ent; n++;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 348
;348:				level.numSpawnSpotsTeam++;
ADDRLP4 40
ADDRGP4 level+11788
ASGNP4
ADDRLP4 40
INDIRP4
ADDRLP4 40
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 349
;349:				ent->fteam = TEAM_BLUE;
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
CNSTI4 2
ASGNI4
line 350
;350:				ent->count = 0;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 0
ASGNI4
line 351
;351:				continue;
LABELV $262
line 353
;352:			}
;353:		}
LABELV $244
line 354
;354:	}
LABELV $221
line 298
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
ADDRLP4 8
INDIRI4
CNSTI4 1024
LTI4 $220
line 355
;355:	level.numSpawnSpots = n;
ADDRGP4 level+11784
ADDRLP4 4
INDIRI4
ASGNI4
line 356
;356:}
LABELV $216
endproc G_LocateSpawnSpots 44 12
proc G_InitGame 1288 20
line 365
;357:
;358:
;359:/*
;360:============
;361:G_InitGame
;362:
;363:============
;364:*/
;365:static void G_InitGame(int levelTime, int randomSeed, int restart) {
line 369
;366:	char value[MAX_CVAR_VALUE_STRING];
;367:	int i;
;368:
;369:	G_Printf("------- Game Initialization -------\n");
ADDRGP4 $269
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 370
;370:	G_Printf("gamename: %s\n", GAMEVERSION);
ADDRGP4 $270
ARGP4
ADDRGP4 $57
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 371
;371:	G_Printf("gamedate: %s\n", __DATE__);
ADDRGP4 $271
ARGP4
ADDRGP4 $59
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 373
;372:
;373:	if (restart) {
ADDRFP4 8
INDIRI4
CNSTI4 0
EQI4 $272
line 374
;374:		G_Printf("G_InitGame: Server is restarting\n");
ADDRGP4 $274
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 375
;375:	}
ADDRGP4 $273
JUMPV
LABELV $272
line 376
;376:	else {
line 377
;377:		G_Printf("G_InitGame: Server is starting up\n");
ADDRGP4 $275
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 378
;378:	}
LABELV $273
line 381
;379:
;380:	// Initialize last map rotation time
;381:	lastMapRotationTime = levelTime;
ADDRGP4 lastMapRotationTime
ADDRFP4 0
INDIRI4
ASGNI4
line 384
;382:
;383:	// Extension interface
;384:	trap_Cvar_VariableStringBuffer("//trap_GetValue", value, sizeof(value));
ADDRGP4 $276
ARGP4
ADDRLP4 4
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 trap_Cvar_VariableStringBuffer
CALLV
pop
line 385
;385:	if (value[0]) {
ADDRLP4 4
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $277
line 387
;386:#ifdef Q3_VM
;387:		trap_GetValue = (void*)~atoi(value);
ADDRLP4 4
ARGP4
ADDRLP4 260
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRGP4 trap_GetValue
ADDRLP4 260
INDIRI4
BCOMI4
CVIU4 4
CVUP4 4
ASGNP4
line 391
;388:#else
;389:		dll_com_trapGetValue = atoi(value);
;390:#endif
;391:		if (trap_GetValue(value, sizeof(value), "SVF_SELF_PORTAL2_Q3E")) {
ADDRLP4 4
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 $281
ARGP4
ADDRLP4 264
ADDRGP4 trap_GetValue
INDIRP4
CALLI4
ASGNI4
ADDRLP4 264
INDIRI4
CNSTI4 0
EQI4 $279
line 392
;392:			svf_self_portal2 = atoi(value);
ADDRLP4 4
ARGP4
ADDRLP4 268
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRGP4 svf_self_portal2
ADDRLP4 268
INDIRI4
ASGNI4
line 393
;393:		}
ADDRGP4 $280
JUMPV
LABELV $279
line 394
;394:		else {
line 395
;395:			svf_self_portal2 = 0;
ADDRGP4 svf_self_portal2
CNSTI4 0
ASGNI4
line 396
;396:		}
LABELV $280
line 397
;397:	}
LABELV $277
line 399
;398:
;399:	srand(randomSeed);
ADDRFP4 4
INDIRI4
CVIU4 4
ARGU4
ADDRGP4 srand
CALLV
pop
line 401
;400:
;401:	G_RegisterCvars();
ADDRGP4 G_RegisterCvars
CALLV
pop
line 403
;402:
;403:	G_ProcessIPBans();
ADDRGP4 G_ProcessIPBans
CALLV
pop
line 404
;404:	G_InitMemory();
ADDRGP4 G_InitMemory
CALLV
pop
line 407
;405:
;406:	// Set some level globals
;407:	memset(&level, 0, sizeof(level));
ADDRGP4 level
ARGP4
CNSTI4 0
ARGI4
CNSTI4 11804
ARGI4
ADDRGP4 memset
CALLP4
pop
line 408
;408:	level.time = levelTime;
ADDRGP4 level+32
ADDRFP4 0
INDIRI4
ASGNI4
line 409
;409:	level.startTime = levelTime;
ADDRGP4 level+40
ADDRFP4 0
INDIRI4
ASGNI4
line 410
;410:	level.previousTime = levelTime;
ADDRGP4 level+36
ADDRFP4 0
INDIRI4
ASGNI4
line 411
;411:	level.msec = FRAMETIME;
ADDRGP4 level+44
CNSTI4 100
ASGNI4
line 413
;412:
;413:	level.snd_fry = G_SoundIndex("sound/player/fry.wav"); // FIXME standing in lava / slime
ADDRGP4 $287
ARGP4
ADDRLP4 260
ADDRGP4 G_SoundIndex
CALLI4
ASGNI4
ADDRGP4 level+352
ADDRLP4 260
INDIRI4
ASGNI4
line 415
;414:
;415:	if (g_gametype.integer != GT_SINGLE_PLAYER && g_log.string[0]) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $288
ADDRGP4 g_log+16
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $288
line 416
;416:		if (g_logSync.integer) {
ADDRGP4 g_logSync+12
INDIRI4
CNSTI4 0
EQI4 $292
line 417
;417:			trap_FS_FOpenFile(g_log.string, &level.logFile, FS_APPEND_SYNC);
ADDRGP4 g_log+16
ARGP4
ADDRGP4 level+20
ARGP4
CNSTI4 3
ARGI4
ADDRGP4 trap_FS_FOpenFile
CALLI4
pop
line 418
;418:		}
ADDRGP4 $293
JUMPV
LABELV $292
line 419
;419:		else {
line 420
;420:			trap_FS_FOpenFile(g_log.string, &level.logFile, FS_APPEND);
ADDRGP4 g_log+16
ARGP4
ADDRGP4 level+20
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 trap_FS_FOpenFile
CALLI4
pop
line 421
;421:		}
LABELV $293
line 422
;422:		if (level.logFile == FS_INVALID_HANDLE) {
ADDRGP4 level+20
INDIRI4
CNSTI4 0
NEI4 $299
line 423
;423:			G_Printf("WARNING: Couldn't open logfile: %s\n", g_log.string);
ADDRGP4 $302
ARGP4
ADDRGP4 g_log+16
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 424
;424:		}
ADDRGP4 $289
JUMPV
LABELV $299
line 425
;425:		else {
line 427
;426:			char serverinfo[MAX_INFO_STRING];
;427:			trap_GetServerinfo(serverinfo, sizeof(serverinfo));
ADDRLP4 264
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_GetServerinfo
CALLV
pop
line 428
;428:			G_LogPrintf("------------------------------------------------------------\n");
ADDRGP4 $304
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 429
;429:			G_LogPrintf("InitGame: %s\n", serverinfo);
ADDRGP4 $305
ARGP4
ADDRLP4 264
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 430
;430:		}
line 431
;431:	}
ADDRGP4 $289
JUMPV
LABELV $288
line 432
;432:	else {
line 433
;433:		G_Printf("Not logging to disk.\n");
ADDRGP4 $306
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 434
;434:	}
LABELV $289
line 436
;435:
;436:	G_InitWorldSession();
ADDRGP4 G_InitWorldSession
CALLV
pop
line 439
;437:
;438:	// Initialize all entities for this game
;439:	memset(g_entities, 0, MAX_GENTITIES * sizeof(g_entities[0]));
ADDRGP4 g_entities
ARGP4
CNSTI4 0
ARGI4
CNSTI4 835584
ARGI4
ADDRGP4 memset
CALLP4
pop
line 440
;440:	level.gentities = g_entities;
ADDRGP4 level+4
ADDRGP4 g_entities
ASGNP4
line 443
;441:
;442:	// Initialize all clients for this game
;443:	level.maxclients = g_maxclients.integer;
ADDRGP4 level+24
ADDRGP4 g_maxclients+12
INDIRI4
ASGNI4
line 444
;444:	memset(g_clients, 0, MAX_CLIENTS * sizeof(g_clients[0]));
ADDRGP4 g_clients
ARGP4
CNSTI4 0
ARGI4
CNSTI4 101120
ARGI4
ADDRGP4 memset
CALLP4
pop
line 445
;445:	level.clients = g_clients;
ADDRGP4 level
ADDRGP4 g_clients
ASGNP4
line 448
;446:
;447:	// Set client fields on player ents
;448:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $313
JUMPV
LABELV $310
line 449
;449:		g_entities[i].client = level.clients + i;
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+516
ADDP4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 450
;450:	}
LABELV $311
line 448
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $313
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $310
line 455
;451:
;452:	// Always leave room for the max number of clients,
;453:	// even if they aren't all used, so numbers inside that
;454:	// range are NEVER anything but clients
;455:	level.num_entities = MAX_CLIENTS;
ADDRGP4 level+12
CNSTI4 64
ASGNI4
line 457
;456:
;457:	for (i = 0; i < MAX_CLIENTS; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
LABELV $317
line 458
;458:		g_entities[i].classname = "clientslot";
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+524
ADDP4
ADDRGP4 $322
ASGNP4
line 459
;459:	}
LABELV $318
line 457
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 64
LTI4 $317
line 462
;460:
;461:	// Let the server system know where the entities are
;462:	trap_LocateGameData(level.gentities, level.num_entities, sizeof(gentity_t),
ADDRGP4 level+4
INDIRP4
ARGP4
ADDRGP4 level+12
INDIRI4
ARGI4
CNSTI4 816
ARGI4
ADDRGP4 level
INDIRP4
ARGP4
CNSTI4 1580
ARGI4
ADDRGP4 trap_LocateGameData
CALLV
pop
line 466
;463:		&level.clients[0].ps, sizeof(level.clients[0]));
;464:
;465:	// Reserve some spots for dead player bodies
;466:	InitBodyQue();
ADDRGP4 InitBodyQue
CALLV
pop
line 468
;467:
;468:	ClearRegisteredItems();
ADDRGP4 ClearRegisteredItems
CALLV
pop
line 471
;469:
;470:	// Parse the key/value pairs and spawn gentities
;471:	G_SpawnEntitiesFromString();
ADDRGP4 G_SpawnEntitiesFromString
CALLV
pop
line 474
;472:
;473:	// General initialization
;474:	G_FindTeams();
ADDRGP4 G_FindTeams
CALLV
pop
line 477
;475:
;476:	// Make sure we have flags for CTF, etc
;477:	if (g_gametype.integer >= GT_TEAM) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $325
line 478
;478:		G_CheckTeamItems();
ADDRGP4 G_CheckTeamItems
CALLV
pop
line 479
;479:	}
LABELV $325
line 481
;480:
;481:	SaveRegisteredItems();
ADDRGP4 SaveRegisteredItems
CALLV
pop
line 483
;482:
;483:	G_LocateSpawnSpots();
ADDRGP4 G_LocateSpawnSpots
CALLV
pop
line 485
;484:
;485:	G_Printf("-----------------------------------\n");
ADDRGP4 $328
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 487
;486:
;487:	if (g_gametype.integer == GT_SINGLE_PLAYER || trap_Cvar_VariableIntegerValue("com_buildScript")) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $333
ADDRGP4 $332
ARGP4
ADDRLP4 264
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 264
INDIRI4
CNSTI4 0
EQI4 $329
LABELV $333
line 488
;488:		G_ModelIndex(SP_PODIUM_MODEL);
ADDRGP4 $334
ARGP4
ADDRGP4 G_ModelIndex
CALLI4
pop
line 489
;489:	}
LABELV $329
line 491
;490:
;491:	if (trap_Cvar_VariableIntegerValue("bot_enable")) {
ADDRGP4 $337
ARGP4
ADDRLP4 268
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 268
INDIRI4
CNSTI4 0
EQI4 $335
line 492
;492:		BotAISetup(restart);
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 BotAISetup
CALLI4
pop
line 493
;493:		BotAILoadMap(restart);
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 BotAILoadMap
CALLI4
pop
line 494
;494:		G_InitBots(restart);
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 G_InitBots
CALLV
pop
line 495
;495:	}
LABELV $335
line 497
;496:
;497:	G_RemapTeamShaders();
ADDRGP4 G_RemapTeamShaders
CALLV
pop
line 500
;498:
;499:	// Don't forget to reset times
;500:	trap_SetConfigstring(CS_INTERMISSION, "");
CNSTI4 22
ARGI4
ADDRGP4 $61
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 502
;501:
;502:	if (g_gametype.integer != GT_SINGLE_PLAYER) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $338
line 504
;503:		// Launch rotation system on first map load
;504:		if (trap_Cvar_VariableIntegerValue(SV_ROTATION) == 0) {
ADDRGP4 $343
ARGP4
ADDRLP4 272
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 272
INDIRI4
CNSTI4 0
NEI4 $341
line 505
;505:			trap_Cvar_Set(SV_ROTATION, "1");
ADDRGP4 $343
ARGP4
ADDRGP4 $78
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 506
;506:			level.denyMapRestart = qtrue;
ADDRGP4 level+11796
CNSTI4 1
ASGNI4
line 507
;507:			ParseMapRotation();
ADDRGP4 ParseMapRotation
CALLI4
pop
line 508
;508:		}
LABELV $341
line 509
;509:	}
LABELV $338
line 511
;510:
;511:	G_Printf("G_InitGame: Initialization complete\n");
ADDRGP4 $345
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 512
;512:}
LABELV $268
endproc G_InitGame 1288 20
proc G_ShutdownGame 4 4
line 521
;513:
;514:
;515:/*
;516:=================
;517:G_ShutdownGame
;518:=================
;519:*/
;520:static void G_ShutdownGame(int restart)
;521:{
line 522
;522:	G_Printf("==== ShutdownGame ====\n");
ADDRGP4 $347
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 524
;523:
;524:	if (restart) {
ADDRFP4 0
INDIRI4
CNSTI4 0
EQI4 $348
line 525
;525:		G_Printf("G_ShutdownGame: Server is restarting\n");
ADDRGP4 $350
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 526
;526:	}
ADDRGP4 $349
JUMPV
LABELV $348
line 527
;527:	else {
line 528
;528:		G_Printf("G_ShutdownGame: Server is shutting down\n");
ADDRGP4 $351
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 529
;529:	}
LABELV $349
line 531
;530:
;531:	if (level.logFile != FS_INVALID_HANDLE) {
ADDRGP4 level+20
INDIRI4
CNSTI4 0
EQI4 $352
line 532
;532:		G_LogPrintf("ShutdownGame:\n");
ADDRGP4 $355
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 533
;533:		G_LogPrintf("------------------------------------------------------------\n");
ADDRGP4 $304
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 534
;534:		trap_FS_FCloseFile(level.logFile);
ADDRGP4 level+20
INDIRI4
ARGI4
ADDRGP4 trap_FS_FCloseFile
CALLV
pop
line 535
;535:		level.logFile = FS_INVALID_HANDLE;
ADDRGP4 level+20
CNSTI4 0
ASGNI4
line 536
;536:	}
LABELV $352
line 539
;537:
;538:	// Write all the client session data so we can get it back
;539:	G_WriteSessionData();
ADDRGP4 G_WriteSessionData
CALLV
pop
line 540
;540:	G_Printf("G_ShutdownGame: Session data written\n");
ADDRGP4 $358
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 542
;541:
;542:	if (trap_Cvar_VariableIntegerValue("bot_enable")) {
ADDRGP4 $337
ARGP4
ADDRLP4 0
ADDRGP4 trap_Cvar_VariableIntegerValue
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $359
line 543
;543:		G_Printf("G_ShutdownGame: Shutting down bots\n");
ADDRGP4 $361
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 544
;544:		BotAIShutdown(restart);
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 BotAIShutdown
CALLI4
pop
line 545
;545:	}
LABELV $359
line 547
;546:
;547:	G_Printf("==== ShutdownGame Complete ====\n");
ADDRGP4 $362
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 548
;548:}
LABELV $346
endproc G_ShutdownGame 4 4
export Com_Error
proc Com_Error 4100 12
line 556
;549:
;550:
;551://===================================================================
;552:
;553:#ifndef GAME_HARD_LINKED
;554:// this is only here so the functions in q_shared.c and bg_*.c can link
;555:
;556:void QDECL Com_Error( int level, const char *fmt, ... ) {
line 560
;557:	va_list		argptr;
;558:	char		text[4096];
;559:
;560:	va_start( argptr, fmt );
ADDRLP4 0
ADDRFP4 4+4
ASGNP4
line 561
;561:	ED_vsprintf( text, fmt, argptr );
ADDRLP4 4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ED_vsprintf
CALLI4
pop
line 562
;562:	va_end( argptr );
ADDRLP4 0
CNSTP4 0
ASGNP4
line 564
;563:
;564:	trap_Error( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Error
CALLV
pop
line 565
;565:}
LABELV $363
endproc Com_Error 4100 12
export Com_Printf
proc Com_Printf 4100 12
line 568
;566:
;567:
;568:void QDECL Com_Printf( const char *fmt, ... ) {
line 572
;569:	va_list		argptr;
;570:	char		text[4096];
;571:
;572:	va_start( argptr, fmt );
ADDRLP4 0
ADDRFP4 0+4
ASGNP4
line 573
;573:	ED_vsprintf( text, fmt, argptr );
ADDRLP4 4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ED_vsprintf
CALLI4
pop
line 574
;574:	va_end( argptr );
ADDRLP4 0
CNSTP4 0
ASGNP4
line 576
;575:
;576:	trap_Print( text );
ADDRLP4 4
ARGP4
ADDRGP4 trap_Print
CALLV
pop
line 577
;577:}
LABELV $365
endproc Com_Printf 4100 12
export AddTournamentPlayer
proc AddTournamentPlayer 20 8
line 597
;578:
;579:#endif
;580:
;581:/*
;582:========================================================================
;583:
;584:PLAYER COUNTING / SCORE SORTING
;585:
;586:========================================================================
;587:*/
;588:
;589:/*
;590:=============
;591:AddTournamentPlayer
;592:
;593:If there are less than two tournament players, put a
;594:spectator in the game and restart
;595:=============
;596:*/
;597:void AddTournamentPlayer( void ) {
line 602
;598:	int			i;
;599:	gclient_t	*client;
;600:	gclient_t	*nextInLine;
;601:
;602:	if ( level.numPlayingClients >= 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
LTI4 $368
line 603
;603:		return;
ADDRGP4 $367
JUMPV
LABELV $368
line 607
;604:	}
;605:
;606:	// never change during intermission
;607:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $371
line 608
;608:		return;
ADDRGP4 $367
JUMPV
LABELV $371
line 611
;609:	}
;610:
;611:	nextInLine = NULL;
ADDRLP4 8
CNSTP4 0
ASGNP4
line 613
;612:
;613:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $377
JUMPV
LABELV $374
line 614
;614:		client = &level.clients[i];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 615
;615:		if ( client->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $379
line 616
;616:			continue;
ADDRGP4 $375
JUMPV
LABELV $379
line 618
;617:		}
;618:		if ( client->sess.sessionTeam != TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
EQI4 $381
line 619
;619:			continue;
ADDRGP4 $375
JUMPV
LABELV $381
line 622
;620:		}
;621:		// never select the dedicated follow or scoreboard clients
;622:		if ( client->sess.spectatorState == SPECTATOR_SCOREBOARD || 
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 3
EQI4 $385
ADDRLP4 0
INDIRP4
CNSTI4 648
ADDP4
INDIRI4
CNSTI4 0
GEI4 $383
LABELV $385
line 623
;623:			client->sess.spectatorClient < 0  ) {
line 624
;624:			continue;
ADDRGP4 $375
JUMPV
LABELV $383
line 627
;625:		}
;626:
;627:		if ( !nextInLine || client->sess.spectatorTime > nextInLine->sess.spectatorTime ) {
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $388
ADDRLP4 0
INDIRP4
CNSTI4 640
ADDP4
INDIRI4
ADDRLP4 8
INDIRP4
CNSTI4 640
ADDP4
INDIRI4
LEI4 $386
LABELV $388
line 628
;628:			nextInLine = client;
ADDRLP4 8
ADDRLP4 0
INDIRP4
ASGNP4
line 629
;629:		}
LABELV $386
line 630
;630:	}
LABELV $375
line 613
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $377
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $374
line 632
;631:
;632:	if ( !nextInLine ) {
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $389
line 633
;633:		return;
ADDRGP4 $367
JUMPV
LABELV $389
line 636
;634:	}
;635:
;636:	level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 639
;637:
;638:	// set them to free-for-all team
;639:	SetTeam( &g_entities[ nextInLine - level.clients ], "f" );
ADDRLP4 8
INDIRP4
CVPU4 4
ADDRGP4 level
INDIRP4
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 1580
DIVI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $392
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 640
;640:}
LABELV $367
endproc AddTournamentPlayer 20 8
export RemoveTournamentLoser
proc RemoveTournamentLoser 4 8
line 650
;641:
;642:
;643:/*
;644:=======================
;645:RemoveTournamentLoser
;646:
;647:Make the loser a spectator at the back of the line
;648:=======================
;649:*/
;650:void RemoveTournamentLoser( void ) {
line 653
;651:	int			clientNum;
;652:
;653:	if ( level.numPlayingClients != 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
EQI4 $394
line 654
;654:		return;
ADDRGP4 $393
JUMPV
LABELV $394
line 657
;655:	}
;656:
;657:	clientNum = level.sortedClients[1];
ADDRLP4 0
ADDRGP4 level+88+4
INDIRI4
ASGNI4
line 659
;658:
;659:	if ( level.clients[ clientNum ].pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $399
line 660
;660:		return;
ADDRGP4 $393
JUMPV
LABELV $399
line 664
;661:	}
;662:
;663:	// make them a spectator
;664:	SetTeam( &g_entities[ clientNum ], "s" );
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $401
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 665
;665:}
LABELV $393
endproc RemoveTournamentLoser 4 8
export RemoveTournamentWinner
proc RemoveTournamentWinner 4 8
line 673
;666:
;667:
;668:/*
;669:=======================
;670:RemoveTournamentWinner
;671:=======================
;672:*/
;673:void RemoveTournamentWinner( void ) {
line 676
;674:	int			clientNum;
;675:
;676:	if ( level.numPlayingClients != 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
EQI4 $403
line 677
;677:		return;
ADDRGP4 $402
JUMPV
LABELV $403
line 680
;678:	}
;679:
;680:	clientNum = level.sortedClients[0];
ADDRLP4 0
ADDRGP4 level+88
INDIRI4
ASGNI4
line 682
;681:
;682:	if ( level.clients[ clientNum ].pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $407
line 683
;683:		return;
ADDRGP4 $402
JUMPV
LABELV $407
line 687
;684:	}
;685:
;686:	// make them a spectator
;687:	SetTeam( &g_entities[ clientNum ], "s" );
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $401
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 688
;688:}
LABELV $402
endproc RemoveTournamentWinner 4 8
export AdjustTournamentScores
proc AdjustTournamentScores 8 4
line 696
;689:
;690:
;691:/*
;692:=======================
;693:AdjustTournamentScores
;694:=======================
;695:*/
;696:void AdjustTournamentScores( void ) {
line 699
;697:	int			clientNum;
;698:
;699:	clientNum = level.sortedClients[0];
ADDRLP4 0
ADDRGP4 level+88
INDIRI4
ASGNI4
line 700
;700:	if ( level.clients[ clientNum ].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $411
line 701
;701:		level.clients[ clientNum ].sess.wins++;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 652
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 702
;702:		ClientUserinfoChanged( clientNum );
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 703
;703:	}
LABELV $411
line 705
;704:
;705:	clientNum = level.sortedClients[1];
ADDRLP4 0
ADDRGP4 level+88+4
INDIRI4
ASGNI4
line 706
;706:	if ( level.clients[ clientNum ].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $415
line 707
;707:		level.clients[ clientNum ].sess.losses++;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 656
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 708
;708:		ClientUserinfoChanged( clientNum );
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 709
;709:	}
LABELV $415
line 711
;710:
;711:}
LABELV $409
endproc AdjustTournamentScores 8 4
proc SortRanks 16 0
line 719
;712:
;713:
;714:/*
;715:=============
;716:SortRanks
;717:=============
;718:*/
;719:static int QDECL SortRanks( const void *a, const void *b ) {
line 722
;720:	gclient_t	*ca, *cb;
;721:
;722:	ca = &level.clients[*(int *)a];
ADDRLP4 0
ADDRFP4 0
INDIRP4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 723
;723:	cb = &level.clients[*(int *)b];
ADDRLP4 4
ADDRFP4 4
INDIRP4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 726
;724:
;725:	// sort special clients last
;726:	if ( ca->sess.spectatorState == SPECTATOR_SCOREBOARD || ca->sess.spectatorClient < 0 ) {
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 3
EQI4 $420
ADDRLP4 0
INDIRP4
CNSTI4 648
ADDP4
INDIRI4
CNSTI4 0
GEI4 $418
LABELV $420
line 727
;727:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $417
JUMPV
LABELV $418
line 729
;728:	}
;729:	if ( cb->sess.spectatorState == SPECTATOR_SCOREBOARD || cb->sess.spectatorClient < 0  ) {
ADDRLP4 4
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 3
EQI4 $423
ADDRLP4 4
INDIRP4
CNSTI4 648
ADDP4
INDIRI4
CNSTI4 0
GEI4 $421
LABELV $423
line 730
;730:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $417
JUMPV
LABELV $421
line 734
;731:	}
;732:
;733:	// then connecting clients
;734:	if ( ca->pers.connected == CON_CONNECTING ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $424
line 735
;735:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $417
JUMPV
LABELV $424
line 737
;736:	}
;737:	if ( cb->pers.connected == CON_CONNECTING ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $426
line 738
;738:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $417
JUMPV
LABELV $426
line 742
;739:	}
;740:
;741:	// then spectators
;742:	if ( ca->sess.sessionTeam == TEAM_SPECTATOR && cb->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $428
ADDRLP4 4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $428
line 743
;743:		if ( ca->sess.spectatorTime > cb->sess.spectatorTime ) {
ADDRLP4 0
INDIRP4
CNSTI4 640
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 640
ADDP4
INDIRI4
LEI4 $430
line 744
;744:			return -1;
CNSTI4 -1
RETI4
ADDRGP4 $417
JUMPV
LABELV $430
line 746
;745:		}
;746:		if ( ca->sess.spectatorTime < cb->sess.spectatorTime ) {
ADDRLP4 0
INDIRP4
CNSTI4 640
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 640
ADDP4
INDIRI4
GEI4 $432
line 747
;747:			return 1;
CNSTI4 1
RETI4
ADDRGP4 $417
JUMPV
LABELV $432
line 749
;748:		}
;749:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $417
JUMPV
LABELV $428
line 751
;750:	}
;751:	if ( ca->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $434
line 752
;752:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $417
JUMPV
LABELV $434
line 754
;753:	}
;754:	if ( cb->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $436
line 755
;755:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $417
JUMPV
LABELV $436
line 759
;756:	}
;757:
;758:	// then sort by score
;759:	if ( ca->ps.persistant[PERS_SCORE]
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
LEI4 $438
line 760
;760:		> cb->ps.persistant[PERS_SCORE] ) {
line 761
;761:		return -1;
CNSTI4 -1
RETI4
ADDRGP4 $417
JUMPV
LABELV $438
line 763
;762:	}
;763:	if ( ca->ps.persistant[PERS_SCORE]
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
GEI4 $440
line 764
;764:		< cb->ps.persistant[PERS_SCORE] ) {
line 765
;765:		return 1;
CNSTI4 1
RETI4
ADDRGP4 $417
JUMPV
LABELV $440
line 767
;766:	}
;767:	return 0;
CNSTI4 0
RETI4
LABELV $417
endproc SortRanks 16 0
export CalculateRanks
proc CalculateRanks 44 16
line 780
;768:}
;769:
;770:
;771:/*
;772:============
;773:CalculateRanks
;774:
;775:Recalculates the score ranks of all players
;776:This will be called on every client connect, begin, disconnect, death,
;777:and team change.
;778:============
;779:*/
;780:void CalculateRanks( void ) {
line 787
;781:	int		i;
;782:	int		rank;
;783:	int		score;
;784:	int		newScore;
;785:	gclient_t	*cl;
;786:
;787:	if ( level.restarted )
ADDRGP4 level+72
INDIRI4
CNSTI4 0
EQI4 $443
line 788
;788:		return;
ADDRGP4 $442
JUMPV
LABELV $443
line 790
;789:
;790:	level.follow1 = -1;
ADDRGP4 level+344
CNSTI4 -1
ASGNI4
line 791
;791:	level.follow2 = -1;
ADDRGP4 level+348
CNSTI4 -1
ASGNI4
line 792
;792:	level.numConnectedClients = 0;
ADDRGP4 level+76
CNSTI4 0
ASGNI4
line 793
;793:	level.numNonSpectatorClients = 0;
ADDRGP4 level+80
CNSTI4 0
ASGNI4
line 794
;794:	level.numPlayingClients = 0;
ADDRGP4 level+84
CNSTI4 0
ASGNI4
line 795
;795:	level.numVotingClients = 0;		// don't count bots
ADDRGP4 level+888
CNSTI4 0
ASGNI4
line 796
;796:	for (i = 0; i < ARRAY_LEN(level.numteamVotingClients); i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $455
JUMPV
LABELV $452
line 797
;797:		level.numteamVotingClients[i] = 0;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2964
ADDP4
CNSTI4 0
ASGNI4
line 798
;798:	}
LABELV $453
line 796
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $455
ADDRLP4 0
INDIRI4
CVIU4 4
CNSTU4 4
LTU4 $452
line 799
;799:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $462
JUMPV
LABELV $459
line 800
;800:		if ( level.clients[i].pers.connected != CON_DISCONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 0
EQI4 $464
line 801
;801:			level.sortedClients[level.numConnectedClients] = i;
ADDRGP4 level+76
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
ADDRLP4 0
INDIRI4
ASGNI4
line 802
;802:			level.numConnectedClients++;
ADDRLP4 20
ADDRGP4 level+76
ASGNP4
ADDRLP4 20
INDIRP4
ADDRLP4 20
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 804
;803:
;804:			if ( level.clients[i].sess.sessionTeam != TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
EQI4 $469
line 805
;805:				level.numNonSpectatorClients++;
ADDRLP4 24
ADDRGP4 level+80
ASGNP4
ADDRLP4 24
INDIRP4
ADDRLP4 24
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 808
;806:			
;807:				// decide if this should be auto-followed
;808:				if ( level.clients[i].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $472
line 809
;809:					level.numPlayingClients++;
ADDRLP4 28
ADDRGP4 level+84
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 810
;810:					if ( !(g_entities[i].r.svFlags & SVF_BOT) ) {
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $475
line 811
;811:						level.numVotingClients++;
ADDRLP4 32
ADDRGP4 level+888
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 812
;812:						if ( level.clients[i].sess.sessionTeam == TEAM_RED )
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 1
NEI4 $480
line 813
;813:							level.numteamVotingClients[0]++;
ADDRLP4 36
ADDRGP4 level+2964
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRGP4 $481
JUMPV
LABELV $480
line 814
;814:						else if ( level.clients[i].sess.sessionTeam == TEAM_BLUE )
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 2
NEI4 $483
line 815
;815:							level.numteamVotingClients[1]++;
ADDRLP4 40
ADDRGP4 level+2964+4
ASGNP4
ADDRLP4 40
INDIRP4
ADDRLP4 40
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $483
LABELV $481
line 816
;816:					}
LABELV $475
line 817
;817:					if ( level.follow1 == -1 ) {
ADDRGP4 level+344
INDIRI4
CNSTI4 -1
NEI4 $487
line 818
;818:						level.follow1 = i;
ADDRGP4 level+344
ADDRLP4 0
INDIRI4
ASGNI4
line 819
;819:					} else if ( level.follow2 == -1 ) {
ADDRGP4 $488
JUMPV
LABELV $487
ADDRGP4 level+348
INDIRI4
CNSTI4 -1
NEI4 $491
line 820
;820:						level.follow2 = i;
ADDRGP4 level+348
ADDRLP4 0
INDIRI4
ASGNI4
line 821
;821:					}
LABELV $491
LABELV $488
line 822
;822:				}
LABELV $472
line 823
;823:			}
LABELV $469
line 824
;824:		}
LABELV $464
line 825
;825:	}
LABELV $460
line 799
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $462
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $459
line 827
;826:
;827:	qsort( level.sortedClients, level.numConnectedClients, 
ADDRGP4 level+88
ARGP4
ADDRGP4 level+76
INDIRI4
ARGI4
CNSTI4 4
ARGI4
ADDRGP4 SortRanks
ARGP4
ADDRGP4 qsort
CALLV
pop
line 831
;828:		sizeof(level.sortedClients[0]), SortRanks );
;829:
;830:	// set the rank value for all clients that are connected and not spectators
;831:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $498
line 833
;832:		// in team games, rank is just the order of the teams, 0=red, 1=blue, 2=tied
;833:		for ( i = 0;  i < level.numConnectedClients; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $504
JUMPV
LABELV $501
line 834
;834:			cl = &level.clients[ level.sortedClients[i] ];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 835
;835:			if ( level.teamScores[TEAM_RED] == level.teamScores[TEAM_BLUE] ) {
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 level+48+8
INDIRI4
NEI4 $507
line 836
;836:				cl->ps.persistant[PERS_RANK] = 2;
ADDRLP4 4
INDIRP4
CNSTI4 256
ADDP4
CNSTI4 2
ASGNI4
line 837
;837:			} else if ( level.teamScores[TEAM_RED] > level.teamScores[TEAM_BLUE] ) {
ADDRGP4 $508
JUMPV
LABELV $507
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 level+48+8
INDIRI4
LEI4 $513
line 838
;838:				cl->ps.persistant[PERS_RANK] = 0;
ADDRLP4 4
INDIRP4
CNSTI4 256
ADDP4
CNSTI4 0
ASGNI4
line 839
;839:			} else {
ADDRGP4 $514
JUMPV
LABELV $513
line 840
;840:				cl->ps.persistant[PERS_RANK] = 1;
ADDRLP4 4
INDIRP4
CNSTI4 256
ADDP4
CNSTI4 1
ASGNI4
line 841
;841:			}
LABELV $514
LABELV $508
line 842
;842:		}
LABELV $502
line 833
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $504
ADDRLP4 0
INDIRI4
ADDRGP4 level+76
INDIRI4
LTI4 $501
line 843
;843:	} else {	
ADDRGP4 $499
JUMPV
LABELV $498
line 844
;844:		rank = -1;
ADDRLP4 12
CNSTI4 -1
ASGNI4
line 845
;845:		score = MAX_QINT;
ADDRLP4 16
CNSTI4 2147483647
ASGNI4
line 846
;846:		for ( i = 0;  i < level.numPlayingClients; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $522
JUMPV
LABELV $519
line 847
;847:			cl = &level.clients[ level.sortedClients[i] ];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 848
;848:			newScore = cl->ps.persistant[PERS_SCORE];
ADDRLP4 8
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 849
;849:			if ( i == 0 || newScore != score ) {
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $527
ADDRLP4 8
INDIRI4
ADDRLP4 16
INDIRI4
EQI4 $525
LABELV $527
line 850
;850:				rank = i;
ADDRLP4 12
ADDRLP4 0
INDIRI4
ASGNI4
line 852
;851:				// assume we aren't tied until the next client is checked
;852:				level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
ASGNI4
line 853
;853:			} else {
ADDRGP4 $526
JUMPV
LABELV $525
line 855
;854:				// we are tied with the previous client
;855:				level.clients[ level.sortedClients[i-1] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88-4
ADDP4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 856
;856:				level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 857
;857:			}
LABELV $526
line 858
;858:			score = newScore;
ADDRLP4 16
ADDRLP4 8
INDIRI4
ASGNI4
line 859
;859:			if ( g_gametype.integer == GT_SINGLE_PLAYER && level.numPlayingClients == 1 ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $532
ADDRGP4 level+84
INDIRI4
CNSTI4 1
NEI4 $532
line 860
;860:				level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 256
ADDP4
ADDRLP4 12
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 861
;861:			}
LABELV $532
line 862
;862:		}
LABELV $520
line 846
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $522
ADDRLP4 0
INDIRI4
ADDRGP4 level+84
INDIRI4
LTI4 $519
line 863
;863:	}
LABELV $499
line 866
;864:
;865:	// set the CS_SCORES1/2 configstrings, which will be visible to everyone
;866:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $537
line 867
;867:		trap_SetConfigstring( CS_SCORES1, va("%i", level.teamScores[TEAM_RED] ) );
ADDRGP4 $540
ARGP4
ADDRGP4 level+48+4
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 868
;868:		trap_SetConfigstring( CS_SCORES2, va("%i", level.teamScores[TEAM_BLUE] ) );
ADDRGP4 $540
ARGP4
ADDRGP4 level+48+8
INDIRI4
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 869
;869:	} else {
ADDRGP4 $538
JUMPV
LABELV $537
line 870
;870:		if ( level.numConnectedClients == 0 ) {
ADDRGP4 level+76
INDIRI4
CNSTI4 0
NEI4 $545
line 871
;871:			trap_SetConfigstring( CS_SCORES1, va("%i", SCORE_NOT_PRESENT) );
ADDRGP4 $540
ARGP4
CNSTI4 -9999
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 872
;872:			trap_SetConfigstring( CS_SCORES2, va("%i", SCORE_NOT_PRESENT) );
ADDRGP4 $540
ARGP4
CNSTI4 -9999
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 873
;873:		} else if ( level.numConnectedClients == 1 ) {
ADDRGP4 $546
JUMPV
LABELV $545
ADDRGP4 level+76
INDIRI4
CNSTI4 1
NEI4 $548
line 874
;874:			trap_SetConfigstring( CS_SCORES1, va("%i", level.clients[ level.sortedClients[0] ].ps.persistant[PERS_SCORE] ) );
ADDRGP4 $540
ARGP4
ADDRGP4 level+88
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 875
;875:			trap_SetConfigstring( CS_SCORES2, va("%i", SCORE_NOT_PRESENT) );
ADDRGP4 $540
ARGP4
CNSTI4 -9999
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 876
;876:		} else {
ADDRGP4 $549
JUMPV
LABELV $548
line 877
;877:			trap_SetConfigstring( CS_SCORES1, va("%i", level.clients[ level.sortedClients[0] ].ps.persistant[PERS_SCORE] ) );
ADDRGP4 $540
ARGP4
ADDRGP4 level+88
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 6
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 878
;878:			trap_SetConfigstring( CS_SCORES2, va("%i", level.clients[ level.sortedClients[1] ].ps.persistant[PERS_SCORE] ) );
ADDRGP4 $540
ARGP4
ADDRGP4 level+88+4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 24
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 7
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 879
;879:		}
LABELV $549
LABELV $546
line 880
;880:	}
LABELV $538
line 883
;881:
;882:	// see if it is time to end the level
;883:	CheckExitRules();
ADDRGP4 CheckExitRules
CALLV
pop
line 886
;884:
;885:	// if we are at the intermission, send the new info to everyone
;886:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $555
line 887
;887:		SendScoreboardMessageToAllClients();
ADDRGP4 SendScoreboardMessageToAllClients
CALLV
pop
line 888
;888:	}
LABELV $555
line 889
;889:}
LABELV $442
endproc CalculateRanks 44 16
proc SendScoreboardMessageToAllClients 4 4
line 908
;890:
;891:
;892:/*
;893:========================================================================
;894:
;895:MAP CHANGING
;896:
;897:========================================================================
;898:*/
;899:
;900:/*
;901:========================
;902:SendScoreboardMessageToAllClients
;903:
;904:Do this at BeginIntermission time and whenever ranks are recalculated
;905:due to enters/exits/forced team changes
;906:========================
;907:*/
;908:static void SendScoreboardMessageToAllClients( void ) {
line 911
;909:	int		i;
;910:
;911:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $562
JUMPV
LABELV $559
line 912
;912:		if ( level.clients[ i ].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $564
line 913
;913:			DeathmatchScoreboardMessage( g_entities + i );
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 DeathmatchScoreboardMessage
CALLV
pop
line 914
;914:		}
LABELV $564
line 915
;915:	}
LABELV $560
line 911
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $562
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $559
line 916
;916:}
LABELV $558
endproc SendScoreboardMessageToAllClients 4 4
export MoveClientToIntermission
proc MoveClientToIntermission 8 12
line 927
;917:
;918:
;919:/*
;920:========================
;921:MoveClientToIntermission
;922:
;923:When the intermission starts, this will be called for all players.
;924:If a new client connects, this will be called after the spawn function.
;925:========================
;926:*/
;927:void MoveClientToIntermission( gentity_t *ent ) {
line 931
;928:	
;929:	gclient_t * client;
;930:	
;931:	client = ent->client;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 934
;932:	
;933:	// take out of follow mode if needed
;934:	if ( client->sess.spectatorState == SPECTATOR_FOLLOW ) {
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 2
NEI4 $567
line 935
;935:		StopFollowing( ent, qtrue );
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 StopFollowing
CALLV
pop
line 936
;936:	}
LABELV $567
line 939
;937:
;938:	// move to the spot
;939:	VectorCopy( level.intermission_origin, ent->s.origin );
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ADDRGP4 level+7616
INDIRB
ASGNB 12
line 940
;940:	VectorCopy( level.intermission_origin, client->ps.origin );
ADDRLP4 0
INDIRP4
CNSTI4 20
ADDP4
ADDRGP4 level+7616
INDIRB
ASGNB 12
line 941
;941:	SetClientViewAngle( ent, level.intermission_angle );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 level+7628
ARGP4
ADDRGP4 SetClientViewAngle
CALLV
pop
line 942
;942:	client->ps.pm_type = PM_INTERMISSION;
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 5
ASGNI4
line 945
;943:
;944:	// clean up powerup info
;945:	memset( client->ps.powerups, 0, sizeof( client->ps.powerups ) );
ADDRLP4 0
INDIRP4
CNSTI4 312
ADDP4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 64
ARGI4
ADDRGP4 memset
CALLP4
pop
line 947
;946:
;947:	client->ps.eFlags = ( client->ps.eFlags & ~EF_PERSISTANT ) | ( client->ps.eFlags & EF_PERSISTANT );
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
INDIRI4
CNSTI4 -548865
BANDI4
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
INDIRI4
CNSTI4 548864
BANDI4
BORI4
ASGNI4
line 949
;948:
;949:	ent->s.eFlags = client->ps.eFlags;
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
INDIRI4
ASGNI4
line 950
;950:	ent->s.eType = ET_GENERAL;
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 0
ASGNI4
line 951
;951:	ent->s.modelindex = 0;
ADDRFP4 0
INDIRP4
CNSTI4 160
ADDP4
CNSTI4 0
ASGNI4
line 952
;952:	ent->s.loopSound = 0;
ADDRFP4 0
INDIRP4
CNSTI4 156
ADDP4
CNSTI4 0
ASGNI4
line 953
;953:	ent->s.event = 0;
ADDRFP4 0
INDIRP4
CNSTI4 180
ADDP4
CNSTI4 0
ASGNI4
line 954
;954:	ent->r.contents = 0;
ADDRFP4 0
INDIRP4
CNSTI4 460
ADDP4
CNSTI4 0
ASGNI4
line 956
;955:
;956:	ent->s.legsAnim = LEGS_IDLE;
ADDRFP4 0
INDIRP4
CNSTI4 196
ADDP4
CNSTI4 22
ASGNI4
line 957
;957:	ent->s.torsoAnim = TORSO_STAND;
ADDRFP4 0
INDIRP4
CNSTI4 200
ADDP4
CNSTI4 11
ASGNI4
line 958
;958:}
LABELV $566
endproc MoveClientToIntermission 8 12
export FindIntermissionPoint
proc FindIntermissionPoint 28 16
line 968
;959:
;960:
;961:/*
;962:==================
;963:FindIntermissionPoint
;964:
;965:This is also used for spectator spawns
;966:==================
;967:*/
;968:void FindIntermissionPoint( void ) {
line 972
;969:	gentity_t	*ent, *target;
;970:	vec3_t		dir;
;971:
;972:	if ( level.intermission_spot ) // search only once
ADDRGP4 level+7640
INDIRI4
CNSTI4 0
EQI4 $573
line 973
;973:		return;
ADDRGP4 $572
JUMPV
LABELV $573
line 976
;974:
;975:	// find the intermission spot
;976:	ent = level.spawnSpots[ SPAWN_SPOT_INTERMISSION ];
ADDRLP4 0
ADDRGP4 level+7688+4092
INDIRP4
ASGNP4
line 978
;977:
;978:	if ( !ent ) { // the map creator forgot to put in an intermission point...
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $578
line 979
;979:		SelectSpawnPoint( NULL, vec3_origin, level.intermission_origin, level.intermission_angle );
CNSTP4 0
ARGP4
ADDRGP4 vec3_origin
ARGP4
ADDRGP4 level+7616
ARGP4
ADDRGP4 level+7628
ARGP4
ADDRGP4 SelectSpawnPoint
CALLP4
pop
line 980
;980:	} else {
ADDRGP4 $579
JUMPV
LABELV $578
line 981
;981:		VectorCopy (ent->s.origin, level.intermission_origin);
ADDRGP4 level+7616
ADDRLP4 0
INDIRP4
CNSTI4 92
ADDP4
INDIRB
ASGNB 12
line 982
;982:		VectorCopy (ent->s.angles, level.intermission_angle);
ADDRGP4 level+7628
ADDRLP4 0
INDIRP4
CNSTI4 116
ADDP4
INDIRB
ASGNB 12
line 984
;983:		// if it has a target, look towards it
;984:		if ( ent->target ) {
ADDRLP4 0
INDIRP4
CNSTI4 648
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $584
line 985
;985:			target = G_PickTarget( ent->target );
ADDRLP4 0
INDIRP4
CNSTI4 648
ADDP4
INDIRP4
ARGP4
ADDRLP4 20
ADDRGP4 G_PickTarget
CALLP4
ASGNP4
ADDRLP4 4
ADDRLP4 20
INDIRP4
ASGNP4
line 986
;986:			if ( target ) {
ADDRLP4 4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $586
line 987
;987:				VectorSubtract( target->s.origin, level.intermission_origin, dir );
ADDRLP4 24
ADDRLP4 4
INDIRP4
ASGNP4
ADDRLP4 8
ADDRLP4 24
INDIRP4
CNSTI4 92
ADDP4
INDIRF4
ADDRGP4 level+7616
INDIRF4
SUBF4
ASGNF4
ADDRLP4 8+4
ADDRLP4 24
INDIRP4
CNSTI4 96
ADDP4
INDIRF4
ADDRGP4 level+7616+4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 8+8
ADDRLP4 4
INDIRP4
CNSTI4 100
ADDP4
INDIRF4
ADDRGP4 level+7616+8
INDIRF4
SUBF4
ASGNF4
line 988
;988:				vectoangles( dir, level.intermission_angle );
ADDRLP4 8
ARGP4
ADDRGP4 level+7628
ARGP4
ADDRGP4 vectoangles
CALLV
pop
line 989
;989:			}
LABELV $586
line 990
;990:		}
LABELV $584
line 991
;991:	}
LABELV $579
line 993
;992:
;993:	level.intermission_spot = qtrue;
ADDRGP4 level+7640
CNSTI4 1
ASGNI4
line 994
;994:}
LABELV $572
endproc FindIntermissionPoint 28 16
export BeginIntermission
proc BeginIntermission 8 4
line 1002
;995:
;996:
;997:/*
;998:==================
;999:BeginIntermission
;1000:==================
;1001:*/
;1002:void BeginIntermission( void ) {
line 1006
;1003:	int			i;
;1004:	gentity_t	*client;
;1005:
;1006:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $598
line 1007
;1007:		return;	// already active
ADDRGP4 $597
JUMPV
LABELV $598
line 1011
;1008:	}
;1009:
;1010:	// if in tournement mode, change the wins / losses
;1011:	if ( g_gametype.integer == GT_TOURNAMENT ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $601
line 1012
;1012:		AdjustTournamentScores();
ADDRGP4 AdjustTournamentScores
CALLV
pop
line 1013
;1013:	}
LABELV $601
line 1015
;1014:
;1015:	level.intermissiontime = level.time;
ADDRGP4 level+7604
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1016
;1016:	FindIntermissionPoint();
ADDRGP4 FindIntermissionPoint
CALLV
pop
line 1019
;1017:
;1018:	// move all clients to the intermission point
;1019:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $609
JUMPV
LABELV $606
line 1020
;1020:		client = g_entities + i;
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1021
;1021:		if ( !client->inuse )
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $611
line 1022
;1022:			continue;
ADDRGP4 $607
JUMPV
LABELV $611
line 1025
;1023:
;1024:		// respawn if dead
;1025:		if ( client->health <= 0 ) {
ADDRLP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CNSTI4 0
GTI4 $613
line 1026
;1026:			respawn( client );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 respawn
CALLV
pop
line 1027
;1027:		}
LABELV $613
line 1029
;1028:
;1029:		MoveClientToIntermission( client );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 MoveClientToIntermission
CALLV
pop
line 1030
;1030:	}
LABELV $607
line 1019
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $609
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $606
line 1039
;1031:
;1032:#ifdef MISSIONPACK
;1033:	if (g_singlePlayer.integer) {
;1034:		trap_Cvar_Set("ui_singlePlayerActive", "0");
;1035:		UpdateTournamentInfo();
;1036:	}
;1037:#else
;1038:	// if single player game
;1039:	if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $615
line 1040
;1040:		UpdateTournamentInfo();
ADDRGP4 UpdateTournamentInfo
CALLV
pop
line 1041
;1041:		SpawnModelsOnVictoryPads();
ADDRGP4 SpawnModelsOnVictoryPads
CALLV
pop
line 1042
;1042:	}
LABELV $615
line 1046
;1043:#endif
;1044:
;1045:	// send the current scoring to all clients
;1046:	SendScoreboardMessageToAllClients();
ADDRGP4 SendScoreboardMessageToAllClients
CALLV
pop
line 1047
;1047:}
LABELV $597
endproc BeginIntermission 8 4
export ExitLevel
proc ExitLevel 272 12
line 1058
;1048:
;1049:
;1050:/*
;1051:=============
;1052:ExitLevel
;1053:
;1054:When the intermission has been exited, the server is either killed
;1055:or moved to a new level based on the "nextmap" cvar 
;1056:=============
;1057:*/
;1058:void ExitLevel( void ) {
line 1063
;1059:	int		i;
;1060:	gclient_t *cl;
;1061:
;1062:	//bot interbreeding
;1063:	BotInterbreedEndMatch();
ADDRGP4 BotInterbreedEndMatch
CALLV
pop
line 1067
;1064:
;1065:	// if we are running a tournement map, kick the loser to spectator status,
;1066:	// which will automatically grab the next spectator and restart
;1067:	if ( g_gametype.integer == GT_TOURNAMENT  ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $619
line 1068
;1068:		if ( !level.restarted ) {
ADDRGP4 level+72
INDIRI4
CNSTI4 0
NEI4 $618
line 1069
;1069:			RemoveTournamentLoser();
ADDRGP4 RemoveTournamentLoser
CALLV
pop
line 1070
;1070:			trap_SendConsoleCommand( EXEC_APPEND, "map_restart 0\n" );
CNSTI4 2
ARGI4
ADDRGP4 $625
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1071
;1071:			level.restarted = qtrue;
ADDRGP4 level+72
CNSTI4 1
ASGNI4
line 1072
;1072:			level.intermissiontime = 0;
ADDRGP4 level+7604
CNSTI4 0
ASGNI4
line 1073
;1073:		}
line 1074
;1074:		return;	
ADDRGP4 $618
JUMPV
LABELV $619
line 1077
;1075:	}
;1076:
;1077:	level.intermissiontime = 0;
ADDRGP4 level+7604
CNSTI4 0
ASGNI4
line 1080
;1078:
;1079:	// reset all the scores so we don't enter the intermission again
;1080:	level.teamScores[TEAM_RED] = 0;
ADDRGP4 level+48+4
CNSTI4 0
ASGNI4
line 1081
;1081:	level.teamScores[TEAM_BLUE] = 0;
ADDRGP4 level+48+8
CNSTI4 0
ASGNI4
line 1082
;1082:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $636
JUMPV
LABELV $633
line 1083
;1083:		cl = level.clients + i;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1084
;1084:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $638
line 1085
;1085:			continue;
ADDRGP4 $634
JUMPV
LABELV $638
line 1087
;1086:		}
;1087:		cl->ps.persistant[PERS_SCORE] = 0;
ADDRLP4 4
INDIRP4
CNSTI4 248
ADDP4
CNSTI4 0
ASGNI4
line 1088
;1088:	}
LABELV $634
line 1082
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $636
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $633
line 1091
;1089:
;1090:	// we need to do this here before changing to CON_CONNECTING
;1091:	G_WriteSessionData();
ADDRGP4 G_WriteSessionData
CALLV
pop
line 1095
;1092:
;1093:	// change all client states to connecting, so the early players into the
;1094:	// next level will know the others aren't done reconnecting
;1095:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $643
JUMPV
LABELV $640
line 1096
;1096:		if ( level.clients[i].pers.connected == CON_CONNECTED ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $645
line 1097
;1097:			level.clients[i].pers.connected = CON_CONNECTING;
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
CNSTI4 1
ASGNI4
line 1098
;1098:		}
LABELV $645
line 1099
;1099:	}
LABELV $641
line 1095
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $643
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $640
line 1101
;1100:
;1101:	if ( !ParseMapRotation() ) {
ADDRLP4 8
ADDRGP4 ParseMapRotation
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $647
line 1104
;1102:		char val[ MAX_CVAR_VALUE_STRING ];
;1103:
;1104:		trap_Cvar_VariableStringBuffer( "nextmap", val, sizeof( val ) );
ADDRGP4 $649
ARGP4
ADDRLP4 12
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 trap_Cvar_VariableStringBuffer
CALLV
pop
line 1106
;1105:
;1106:		if ( !val[0] || !Q_stricmpn( val, "map_restart ", 12 ) )
ADDRLP4 12
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $653
ADDRLP4 12
ARGP4
ADDRGP4 $652
ARGP4
CNSTI4 12
ARGI4
ADDRLP4 268
ADDRGP4 Q_stricmpn
CALLI4
ASGNI4
ADDRLP4 268
INDIRI4
CNSTI4 0
NEI4 $650
LABELV $653
line 1107
;1107:			G_LoadMap( NULL );
CNSTP4 0
ARGP4
ADDRGP4 G_LoadMap
CALLV
pop
ADDRGP4 $651
JUMPV
LABELV $650
line 1109
;1108:		else
;1109:			trap_SendConsoleCommand( EXEC_APPEND, "vstr nextmap\n" );
CNSTI4 2
ARGI4
ADDRGP4 $654
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
LABELV $651
line 1110
;1110:	} 
LABELV $647
line 1111
;1111:}
LABELV $618
endproc ExitLevel 272 12
export G_LogPrintf
proc G_LogPrintf 8224 24
line 1121
;1112:
;1113:
;1114:/*
;1115:=================
;1116:G_LogPrintf
;1117:
;1118:Print to the logfile with a time stamp if it is open
;1119:=================
;1120:*/
;1121:void QDECL G_LogPrintf( const char *fmt, ... ) {
line 1126
;1122:	va_list		argptr;
;1123:	char		string[BIG_INFO_STRING];
;1124:	int			min, tsec, sec, len, n;
;1125:
;1126:	tsec = level.time / 100;
ADDRLP4 8192
ADDRGP4 level+32
INDIRI4
CNSTI4 100
DIVI4
ASGNI4
line 1127
;1127:	sec = tsec / 10;
ADDRLP4 8196
ADDRLP4 8192
INDIRI4
CNSTI4 10
DIVI4
ASGNI4
line 1128
;1128:	tsec %= 10;
ADDRLP4 8192
ADDRLP4 8192
INDIRI4
CNSTI4 10
MODI4
ASGNI4
line 1129
;1129:	min = sec / 60;
ADDRLP4 8204
ADDRLP4 8196
INDIRI4
CNSTI4 60
DIVI4
ASGNI4
line 1130
;1130:	sec -= min * 60;
ADDRLP4 8196
ADDRLP4 8196
INDIRI4
ADDRLP4 8204
INDIRI4
CNSTI4 60
MULI4
SUBI4
ASGNI4
line 1132
;1131:
;1132:	len = Com_sprintf( string, sizeof( string ), "%3i:%02i.%i ", min, sec, tsec );
ADDRLP4 0
ARGP4
CNSTI4 8192
ARGI4
ADDRGP4 $657
ARGP4
ADDRLP4 8204
INDIRI4
ARGI4
ADDRLP4 8196
INDIRI4
ARGI4
ADDRLP4 8192
INDIRI4
ARGI4
ADDRLP4 8216
ADDRGP4 Com_sprintf
CALLI4
ASGNI4
ADDRLP4 8208
ADDRLP4 8216
INDIRI4
ASGNI4
line 1134
;1133:
;1134:	va_start( argptr, fmt );
ADDRLP4 8200
ADDRFP4 0+4
ASGNP4
line 1135
;1135:	ED_vsprintf( string + len, fmt,argptr );
ADDRLP4 8208
INDIRI4
ADDRLP4 0
ADDP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 8200
INDIRP4
ARGP4
ADDRGP4 ED_vsprintf
CALLI4
pop
line 1136
;1136:	va_end( argptr );
ADDRLP4 8200
CNSTP4 0
ASGNP4
line 1138
;1137:
;1138:	n = (int)strlen( string );
ADDRLP4 0
ARGP4
ADDRLP4 8220
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 8212
ADDRLP4 8220
INDIRI4
ASGNI4
line 1140
;1139:
;1140:	if ( g_dedicated.integer ) {
ADDRGP4 g_dedicated+12
INDIRI4
CNSTI4 0
EQI4 $659
line 1141
;1141:		G_Printf( "%s", string + len );
ADDRGP4 $662
ARGP4
ADDRLP4 8208
INDIRI4
ADDRLP4 0
ADDP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 1142
;1142:	}
LABELV $659
line 1144
;1143:
;1144:	if ( level.logFile == FS_INVALID_HANDLE ) {
ADDRGP4 level+20
INDIRI4
CNSTI4 0
NEI4 $663
line 1145
;1145:		return;
ADDRGP4 $655
JUMPV
LABELV $663
line 1148
;1146:	}
;1147:
;1148:	trap_FS_Write( string, n, level.logFile );
ADDRLP4 0
ARGP4
ADDRLP4 8212
INDIRI4
ARGI4
ADDRGP4 level+20
INDIRI4
ARGI4
ADDRGP4 trap_FS_Write
CALLV
pop
line 1149
;1149:}
LABELV $655
endproc G_LogPrintf 8224 24
export LogExit
proc LogExit 24 20
line 1159
;1150:
;1151:
;1152:/*
;1153:================
;1154:LogExit
;1155:
;1156:Append information about this game to the log file
;1157:================
;1158:*/
;1159:void LogExit( const char *string ) {
line 1165
;1160:	int				i, numSorted;
;1161:	gclient_t		*cl;
;1162:#ifdef MISSIONPACK
;1163:	qboolean won = qtrue;
;1164:#endif
;1165:	G_LogPrintf( "Exit: %s\n", string );
ADDRGP4 $668
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1167
;1166:
;1167:	level.intermissionQueued = level.time;
ADDRGP4 level+7600
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1171
;1168:
;1169:	// this will keep the clients from playing any voice sounds
;1170:	// that will get cut off when the queued intermission starts
;1171:	trap_SetConfigstring( CS_INTERMISSION, "1" );
CNSTI4 22
ARGI4
ADDRGP4 $78
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1174
;1172:
;1173:	// don't send more than 32 scores (FIXME?)
;1174:	numSorted = level.numConnectedClients;
ADDRLP4 8
ADDRGP4 level+76
INDIRI4
ASGNI4
line 1175
;1175:	if ( numSorted > 32 ) {
ADDRLP4 8
INDIRI4
CNSTI4 32
LEI4 $672
line 1176
;1176:		numSorted = 32;
ADDRLP4 8
CNSTI4 32
ASGNI4
line 1177
;1177:	}
LABELV $672
line 1179
;1178:
;1179:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $674
line 1180
;1180:		G_LogPrintf( "red:%i  blue:%i\n",
ADDRGP4 $677
ARGP4
ADDRGP4 level+48+4
INDIRI4
ARGI4
ADDRGP4 level+48+8
INDIRI4
ARGI4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1182
;1181:			level.teamScores[TEAM_RED], level.teamScores[TEAM_BLUE] );
;1182:	}
LABELV $674
line 1184
;1183:
;1184:	for (i=0 ; i < numSorted ; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $685
JUMPV
LABELV $682
line 1187
;1185:		int		ping;
;1186:
;1187:		cl = &level.clients[level.sortedClients[i]];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1189
;1188:
;1189:		if ( cl->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $687
line 1190
;1190:			continue;
ADDRGP4 $683
JUMPV
LABELV $687
line 1192
;1191:		}
;1192:		if ( cl->pers.connected == CON_CONNECTING ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $689
line 1193
;1193:			continue;
ADDRGP4 $683
JUMPV
LABELV $689
line 1196
;1194:		}
;1195:
;1196:		ping = cl->ps.ping < 999 ? cl->ps.ping : 999;
ADDRLP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRI4
CNSTI4 999
GEI4 $692
ADDRLP4 16
ADDRLP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRI4
ASGNI4
ADDRGP4 $693
JUMPV
LABELV $692
ADDRLP4 16
CNSTI4 999
ASGNI4
LABELV $693
ADDRLP4 12
ADDRLP4 16
INDIRI4
ASGNI4
line 1198
;1197:
;1198:		G_LogPrintf( "score: %i  ping: %i  client: %i %s\n", cl->ps.persistant[PERS_SCORE], ping, level.sortedClients[i],	cl->pers.netname );
ADDRGP4 $694
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1207
;1199:#ifdef MISSIONPACK
;1200:		if (g_singlePlayer.integer && g_gametype.integer == GT_TOURNAMENT) {
;1201:			if (g_entities[cl - level.clients].r.svFlags & SVF_BOT && cl->ps.persistant[PERS_RANK] == 0) {
;1202:				won = qfalse;
;1203:			}
;1204:		}
;1205:#endif
;1206:
;1207:	}
LABELV $683
line 1184
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $685
ADDRLP4 4
INDIRI4
ADDRLP4 8
INDIRI4
LTI4 $682
line 1219
;1208:
;1209:#ifdef MISSIONPACK
;1210:	if (g_singlePlayer.integer) {
;1211:		if (g_gametype.integer >= GT_CTF) {
;1212:			won = level.teamScores[TEAM_RED] > level.teamScores[TEAM_BLUE];
;1213:		}
;1214:		trap_SendConsoleCommand( EXEC_APPEND, (won) ? "spWin\n" : "spLose\n" );
;1215:	}
;1216:#endif
;1217:
;1218:
;1219:}
LABELV $667
endproc LogExit 24 20
export CheckIntermissionExit
proc CheckIntermissionExit 20 0
line 1232
;1220:
;1221:
;1222:/*
;1223:=================
;1224:CheckIntermissionExit
;1225:
;1226:The level will stay at the intermission for a minimum of 5 seconds
;1227:If all players wish to continue, the level will then exit.
;1228:If one or more players have not acknowledged the continue, the game will
;1229:wait 10 seconds before going on.
;1230:=================
;1231:*/
;1232:void CheckIntermissionExit( void ) {
line 1238
;1233:	int			ready, notReady;
;1234:	int			i;
;1235:	gclient_t	*cl;
;1236:	int			readyMask;
;1237:
;1238:	if ( g_gametype.integer == GT_SINGLE_PLAYER )
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $697
line 1239
;1239:		return;
ADDRGP4 $696
JUMPV
LABELV $697
line 1242
;1240:
;1241:	// see which players are ready
;1242:	ready = 0;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 1243
;1243:	notReady = 0;
ADDRLP4 12
CNSTI4 0
ASGNI4
line 1244
;1244:	readyMask = 0;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 1245
;1245:	for ( i = 0 ; i < level.maxclients ; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $703
JUMPV
LABELV $700
line 1246
;1246:		cl = level.clients + i;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1247
;1247:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $705
line 1248
;1248:			continue;
ADDRGP4 $701
JUMPV
LABELV $705
line 1251
;1249:		}
;1250:
;1251:		if ( g_entities[i].r.svFlags & SVF_BOT ) {
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $707
line 1252
;1252:			cl->readyToExit = qtrue;
ADDRLP4 4
INDIRP4
CNSTI4 664
ADDP4
CNSTI4 1
ASGNI4
line 1253
;1253:		} 
LABELV $707
line 1255
;1254:
;1255:		if ( cl->readyToExit ) {
ADDRLP4 4
INDIRP4
CNSTI4 664
ADDP4
INDIRI4
CNSTI4 0
EQI4 $711
line 1256
;1256:			ready++;
ADDRLP4 16
ADDRLP4 16
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1257
;1257:			if ( i < 16 ) {
ADDRLP4 0
INDIRI4
CNSTI4 16
GEI4 $712
line 1258
;1258:				readyMask |= 1 << i;
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDRLP4 0
INDIRI4
LSHI4
BORI4
ASGNI4
line 1259
;1259:			}
line 1260
;1260:		} else {
ADDRGP4 $712
JUMPV
LABELV $711
line 1261
;1261:			notReady++;
ADDRLP4 12
ADDRLP4 12
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1262
;1262:		}
LABELV $712
line 1263
;1263:	}
LABELV $701
line 1245
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $703
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $700
line 1266
;1264:
;1265:	// vote in progress
;1266:	if ( level.voteTime || level.voteExecuteTime ) {
ADDRGP4 level+872
INDIRI4
CNSTI4 0
NEI4 $719
ADDRGP4 level+876
INDIRI4
CNSTI4 0
EQI4 $715
LABELV $719
line 1267
;1267:		ready  = 0;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 1268
;1268:		notReady = 1;
ADDRLP4 12
CNSTI4 1
ASGNI4
line 1269
;1269:	}
LABELV $715
line 1273
;1270:
;1271:	// copy the readyMask to each player's stats so
;1272:	// it can be displayed on the scoreboard
;1273:	for ( i = 0 ; i < level.maxclients ; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $723
JUMPV
LABELV $720
line 1274
;1274:		cl = level.clients + i;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1275
;1275:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $725
line 1276
;1276:			continue;
ADDRGP4 $721
JUMPV
LABELV $725
line 1278
;1277:		}
;1278:		cl->ps.stats[STAT_CLIENTS_READY] = readyMask;
ADDRLP4 4
INDIRP4
CNSTI4 204
ADDP4
ADDRLP4 8
INDIRI4
ASGNI4
line 1279
;1279:	}
LABELV $721
line 1273
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $723
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $720
line 1282
;1280:
;1281:	// never exit in less than five seconds
;1282:	if ( level.time < level.intermissiontime + 5000 ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+7604
INDIRI4
CNSTI4 5000
ADDI4
GEI4 $727
line 1283
;1283:		return;
ADDRGP4 $696
JUMPV
LABELV $727
line 1287
;1284:	}
;1285:
;1286:	// if nobody wants to go, clear timer
;1287:	if ( !ready && notReady ) {
ADDRLP4 16
INDIRI4
CNSTI4 0
NEI4 $731
ADDRLP4 12
INDIRI4
CNSTI4 0
EQI4 $731
line 1288
;1288:		level.readyToExit = qfalse;
ADDRGP4 level+7608
CNSTI4 0
ASGNI4
line 1289
;1289:		return;
ADDRGP4 $696
JUMPV
LABELV $731
line 1293
;1290:	}
;1291:
;1292:	// if everyone wants to go, go now
;1293:	if ( !notReady ) {
ADDRLP4 12
INDIRI4
CNSTI4 0
NEI4 $734
line 1294
;1294:		ExitLevel();
ADDRGP4 ExitLevel
CALLV
pop
line 1295
;1295:		return;
ADDRGP4 $696
JUMPV
LABELV $734
line 1299
;1296:	}
;1297:
;1298:	// the first person to ready starts the ten second timeout
;1299:	if ( !level.readyToExit ) {
ADDRGP4 level+7608
INDIRI4
CNSTI4 0
NEI4 $736
line 1300
;1300:		level.readyToExit = qtrue;
ADDRGP4 level+7608
CNSTI4 1
ASGNI4
line 1301
;1301:		level.exitTime = level.time + 10000;
ADDRGP4 level+7612
ADDRGP4 level+32
INDIRI4
CNSTI4 10000
ADDI4
ASGNI4
line 1302
;1302:	}
LABELV $736
line 1306
;1303:
;1304:	// if we have waited ten seconds since at least one player
;1305:	// wanted to exit, go ahead
;1306:	if ( level.time < level.exitTime ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+7612
INDIRI4
GEI4 $742
line 1307
;1307:		return;
ADDRGP4 $696
JUMPV
LABELV $742
line 1310
;1308:	}
;1309:
;1310:	ExitLevel();
ADDRGP4 ExitLevel
CALLV
pop
line 1311
;1311:}
LABELV $696
endproc CheckIntermissionExit 20 0
proc ScoreIsTied 12 0
line 1319
;1312:
;1313:
;1314:/*
;1315:=============
;1316:ScoreIsTied
;1317:=============
;1318:*/
;1319:static qboolean ScoreIsTied( void ) {
line 1322
;1320:	int		a, b;
;1321:
;1322:	if ( level.numPlayingClients < 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
GEI4 $747
line 1323
;1323:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $746
JUMPV
LABELV $747
line 1326
;1324:	}
;1325:	
;1326:	if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $750
line 1327
;1327:		return level.teamScores[TEAM_RED] == level.teamScores[TEAM_BLUE];
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 level+48+8
INDIRI4
NEI4 $758
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRGP4 $759
JUMPV
LABELV $758
ADDRLP4 8
CNSTI4 0
ASGNI4
LABELV $759
ADDRLP4 8
INDIRI4
RETI4
ADDRGP4 $746
JUMPV
LABELV $750
line 1330
;1328:	}
;1329:
;1330:	a = level.clients[level.sortedClients[0]].ps.persistant[PERS_SCORE];
ADDRLP4 0
ADDRGP4 level+88
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1331
;1331:	b = level.clients[level.sortedClients[1]].ps.persistant[PERS_SCORE];
ADDRLP4 4
ADDRGP4 level+88+4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1333
;1332:
;1333:	return a == b;
ADDRLP4 0
INDIRI4
ADDRLP4 4
INDIRI4
NEI4 $764
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRGP4 $765
JUMPV
LABELV $764
ADDRLP4 8
CNSTI4 0
ASGNI4
LABELV $765
ADDRLP4 8
INDIRI4
RETI4
LABELV $746
endproc ScoreIsTied 12 0
proc CheckExitRules 16 8
line 1346
;1334:}
;1335:
;1336:
;1337:/*
;1338:=================
;1339:CheckExitRules
;1340:
;1341:There will be a delay between the time the exit is qualified for
;1342:and the time everyone is moved to the intermission spot, so you
;1343:can see the last frag.
;1344:=================
;1345:*/
;1346:static void CheckExitRules( void ) {
line 1352
;1347: 	int			i;
;1348:	gclient_t	*cl;
;1349:
;1350:	// if at the intermission, wait for all non-bots to
;1351:	// signal ready, then go to next level
;1352:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $767
line 1353
;1353:		CheckIntermissionExit();
ADDRGP4 CheckIntermissionExit
CALLV
pop
line 1354
;1354:		return;
ADDRGP4 $766
JUMPV
LABELV $767
line 1357
;1355:	}
;1356:
;1357:	if ( level.intermissionQueued ) {
ADDRGP4 level+7600
INDIRI4
CNSTI4 0
EQI4 $770
line 1365
;1358:#ifdef MISSIONPACK
;1359:		int time = (g_singlePlayer.integer) ? SP_INTERMISSION_DELAY_TIME : INTERMISSION_DELAY_TIME;
;1360:		if ( level.time - level.intermissionQueued >= time ) {
;1361:			level.intermissionQueued = 0;
;1362:			BeginIntermission();
;1363:		}
;1364:#else
;1365:		if ( level.time - level.intermissionQueued >= INTERMISSION_DELAY_TIME ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+7600
INDIRI4
SUBI4
CNSTI4 1000
LTI4 $766
line 1366
;1366:			level.intermissionQueued = 0;
ADDRGP4 level+7600
CNSTI4 0
ASGNI4
line 1367
;1367:			BeginIntermission();
ADDRGP4 BeginIntermission
CALLV
pop
line 1368
;1368:		}
line 1370
;1369:#endif
;1370:		return;
ADDRGP4 $766
JUMPV
LABELV $770
line 1374
;1371:	}
;1372:
;1373:	// check for sudden death
;1374:	if ( ScoreIsTied() ) {
ADDRLP4 8
ADDRGP4 ScoreIsTied
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $778
line 1376
;1375:		// always wait for sudden death
;1376:		return;
ADDRGP4 $766
JUMPV
LABELV $778
line 1379
;1377:	}
;1378:
;1379:	if ( g_timelimit.integer && !level.warmupTime ) {
ADDRGP4 g_timelimit+12
INDIRI4
CNSTI4 0
EQI4 $780
ADDRGP4 level+16
INDIRI4
CNSTI4 0
NEI4 $780
line 1380
;1380:		if ( level.time - level.startTime >= g_timelimit.integer*60000 ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+40
INDIRI4
SUBI4
ADDRGP4 g_timelimit+12
INDIRI4
CNSTI4 60000
MULI4
LTI4 $784
line 1381
;1381:			G_BroadcastServerCommand( -1, "print \"Timelimit hit.\n\"");
CNSTI4 -1
ARGI4
ADDRGP4 $789
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1382
;1382:			LogExit( "Timelimit hit." );
ADDRGP4 $790
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1383
;1383:			return;
ADDRGP4 $766
JUMPV
LABELV $784
line 1385
;1384:		}
;1385:	}
LABELV $780
line 1387
;1386:
;1387:	if ( level.numPlayingClients < 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
GEI4 $791
line 1388
;1388:		return;
ADDRGP4 $766
JUMPV
LABELV $791
line 1391
;1389:	}
;1390:
;1391:	if ( g_gametype.integer < GT_CTF && g_fraglimit.integer ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 4
GEI4 $794
ADDRGP4 g_fraglimit+12
INDIRI4
CNSTI4 0
EQI4 $794
line 1392
;1392:		if ( level.teamScores[TEAM_RED] >= g_fraglimit.integer ) {
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 g_fraglimit+12
INDIRI4
LTI4 $798
line 1393
;1393:			G_BroadcastServerCommand( -1, "print \"Red hit the fraglimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $803
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1394
;1394:			LogExit( "Fraglimit hit." );
ADDRGP4 $804
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1395
;1395:			return;
ADDRGP4 $766
JUMPV
LABELV $798
line 1398
;1396:		}
;1397:
;1398:		if ( level.teamScores[TEAM_BLUE] >= g_fraglimit.integer ) {
ADDRGP4 level+48+8
INDIRI4
ADDRGP4 g_fraglimit+12
INDIRI4
LTI4 $805
line 1399
;1399:			G_BroadcastServerCommand( -1, "print \"Blue hit the fraglimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $810
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1400
;1400:			LogExit( "Fraglimit hit." );
ADDRGP4 $804
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1401
;1401:			return;
ADDRGP4 $766
JUMPV
LABELV $805
line 1404
;1402:		}
;1403:
;1404:		for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $814
JUMPV
LABELV $811
line 1405
;1405:			cl = level.clients + i;
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1406
;1406:			if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $816
line 1407
;1407:				continue;
ADDRGP4 $812
JUMPV
LABELV $816
line 1409
;1408:			}
;1409:			if ( cl->sess.sessionTeam != TEAM_FREE ) {
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
EQI4 $818
line 1410
;1410:				continue;
ADDRGP4 $812
JUMPV
LABELV $818
line 1413
;1411:			}
;1412:
;1413:			if ( cl->ps.persistant[PERS_SCORE] >= g_fraglimit.integer ) {
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
INDIRI4
ADDRGP4 g_fraglimit+12
INDIRI4
LTI4 $820
line 1414
;1414:				LogExit( "Fraglimit hit." );
ADDRGP4 $804
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1415
;1415:				G_BroadcastServerCommand( -1, va("print \"%s" S_COLOR_WHITE " hit the fraglimit.\n\"",
ADDRGP4 $823
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 12
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 -1
ARGI4
ADDRLP4 12
INDIRP4
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1417
;1416:					cl->pers.netname ) );
;1417:				return;
ADDRGP4 $766
JUMPV
LABELV $820
line 1419
;1418:			}
;1419:		}
LABELV $812
line 1404
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $814
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $811
line 1420
;1420:	}
LABELV $794
line 1422
;1421:
;1422:	if ( g_gametype.integer >= GT_CTF && g_capturelimit.integer ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 4
LTI4 $824
ADDRGP4 g_capturelimit+12
INDIRI4
CNSTI4 0
EQI4 $824
line 1424
;1423:
;1424:		if ( level.teamScores[TEAM_RED] >= g_capturelimit.integer ) {
ADDRGP4 level+48+4
INDIRI4
ADDRGP4 g_capturelimit+12
INDIRI4
LTI4 $828
line 1425
;1425:			G_BroadcastServerCommand( -1, "print \"Red hit the capturelimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $833
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1426
;1426:			LogExit( "Capturelimit hit." );
ADDRGP4 $834
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1427
;1427:			return;
ADDRGP4 $766
JUMPV
LABELV $828
line 1430
;1428:		}
;1429:
;1430:		if ( level.teamScores[TEAM_BLUE] >= g_capturelimit.integer ) {
ADDRGP4 level+48+8
INDIRI4
ADDRGP4 g_capturelimit+12
INDIRI4
LTI4 $835
line 1431
;1431:			G_BroadcastServerCommand( -1, "print \"Blue hit the capturelimit.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $840
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1432
;1432:			LogExit( "Capturelimit hit." );
ADDRGP4 $834
ARGP4
ADDRGP4 LogExit
CALLV
pop
line 1433
;1433:			return;
LABELV $835
line 1435
;1434:		}
;1435:	}
LABELV $824
line 1436
;1436:}
LABELV $766
endproc CheckExitRules 16 8
proc ClearBodyQue 12 4
line 1439
;1437:
;1438:
;1439:static void ClearBodyQue( void ) {
line 1443
;1440:	int	i;
;1441:	gentity_t	*ent;
;1442:
;1443:	for ( i = 0 ; i < BODY_QUEUE_SIZE ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
LABELV $842
line 1444
;1444:		ent = level.bodyQue[ i ];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7656
ADDP4
INDIRP4
ASGNP4
line 1445
;1445:		if ( ent->r.linked || ent->physicsObject ) {
ADDRLP4 0
INDIRP4
CNSTI4 416
ADDP4
INDIRI4
CNSTI4 0
NEI4 $849
ADDRLP4 0
INDIRP4
CNSTI4 564
ADDP4
INDIRI4
CNSTI4 0
EQI4 $847
LABELV $849
line 1446
;1446:			trap_UnlinkEntity( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_UnlinkEntity
CALLV
pop
line 1447
;1447:			ent->physicsObject = qfalse;
ADDRLP4 0
INDIRP4
CNSTI4 564
ADDP4
CNSTI4 0
ASGNI4
line 1448
;1448:		}
LABELV $847
line 1449
;1449:	}
LABELV $843
line 1443
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 8
LTI4 $842
line 1450
;1450:}
LABELV $841
endproc ClearBodyQue 12 4
proc G_WarmupEnd 44 12
line 1453
;1451:
;1452:static void G_WarmupEnd(void)
;1453:{
line 1459
;1454:	gclient_t* client;
;1455:	gentity_t* ent;
;1456:	int i, t;
;1457:
;1458:	// remove corpses
;1459:	ClearBodyQue();
ADDRGP4 ClearBodyQue
CALLV
pop
line 1462
;1460:
;1461:	// return flags
;1462:	Team_ResetFlags();
ADDRGP4 Team_ResetFlags
CALLV
pop
line 1464
;1463:
;1464:	memset(level.teamScores, 0, sizeof(level.teamScores));
ADDRGP4 level+48
ARGP4
CNSTI4 0
ARGI4
CNSTI4 16
ARGI4
ADDRGP4 memset
CALLP4
pop
line 1466
;1465:
;1466:	level.warmupTime = 0;
ADDRGP4 level+16
CNSTI4 0
ASGNI4
line 1467
;1467:	level.startTime = level.time;
ADDRGP4 level+40
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1469
;1468:
;1469:	trap_SetConfigstring(CS_SCORES1, "0");
CNSTI4 6
ARGI4
ADDRGP4 $66
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1470
;1470:	trap_SetConfigstring(CS_SCORES2, "0");
CNSTI4 7
ARGI4
ADDRGP4 $66
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1471
;1471:	trap_SetConfigstring(CS_WARMUP, "");
CNSTI4 5
ARGI4
ADDRGP4 $61
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1472
;1472:	trap_SetConfigstring(CS_LEVEL_START_TIME, va("%i", level.startTime));
ADDRGP4 $540
ARGP4
ADDRGP4 level+40
INDIRI4
ARGI4
ADDRLP4 16
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 21
ARGI4
ADDRLP4 16
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1474
;1473:
;1474:	client = level.clients;
ADDRLP4 0
ADDRGP4 level
INDIRP4
ASGNP4
line 1475
;1475:	for (i = 0; i < level.maxclients; i++, client++) {
ADDRLP4 8
CNSTI4 0
ASGNI4
ADDRGP4 $860
JUMPV
LABELV $857
line 1477
;1476:
;1477:		if (client->pers.connected != CON_CONNECTED)
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $862
line 1478
;1478:			continue;
ADDRGP4 $858
JUMPV
LABELV $862
line 1481
;1479:
;1480:		// reset player awards
;1481:		client->ps.persistant[PERS_IMPRESSIVE_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 284
ADDP4
CNSTI4 0
ASGNI4
line 1482
;1482:		client->ps.persistant[PERS_EXCELLENT_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 288
ADDP4
CNSTI4 0
ASGNI4
line 1483
;1483:		client->ps.persistant[PERS_DEFEND_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 292
ADDP4
CNSTI4 0
ASGNI4
line 1484
;1484:		client->ps.persistant[PERS_ASSIST_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 296
ADDP4
CNSTI4 0
ASGNI4
line 1485
;1485:		client->ps.persistant[PERS_GAUNTLET_FRAG_COUNT] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 300
ADDP4
CNSTI4 0
ASGNI4
line 1487
;1486:
;1487:		client->ps.persistant[PERS_SCORE] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 248
ADDP4
CNSTI4 0
ASGNI4
line 1488
;1488:		client->ps.persistant[PERS_CAPTURES] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 304
ADDP4
CNSTI4 0
ASGNI4
line 1490
;1489:
;1490:		client->ps.persistant[PERS_ATTACKER] = ENTITYNUM_NONE;
ADDRLP4 0
INDIRP4
CNSTI4 272
ADDP4
CNSTI4 1023
ASGNI4
line 1491
;1491:		client->ps.persistant[PERS_ATTACKEE_ARMOR] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 276
ADDP4
CNSTI4 0
ASGNI4
line 1492
;1492:		client->damage.enemy = client->damage.team = 0;
ADDRLP4 24
CNSTI4 0
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 1568
ADDP4
ADDRLP4 24
INDIRI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 1572
ADDP4
ADDRLP4 24
INDIRI4
ASGNI4
line 1494
;1493:
;1494:		client->ps.stats[STAT_CLIENTS_READY] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 204
ADDP4
CNSTI4 0
ASGNI4
line 1495
;1495:		client->ps.stats[STAT_HOLDABLE_ITEM] = 0;
ADDRLP4 0
INDIRP4
CNSTI4 188
ADDP4
CNSTI4 0
ASGNI4
line 1497
;1496:
;1497:		memset(&client->ps.powerups, 0, sizeof(client->ps.powerups));
ADDRLP4 0
INDIRP4
CNSTI4 312
ADDP4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 64
ARGI4
ADDRGP4 memset
CALLP4
pop
line 1499
;1498:
;1499:		ClientUserinfoChanged(i); // set max.health etc.
ADDRLP4 8
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 1501
;1500:
;1501:		if (client->sess.sessionTeam != TEAM_SPECTATOR) {
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
EQI4 $864
line 1502
;1502:			ClientSpawn(level.gentities + i);
ADDRLP4 8
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 level+4
INDIRP4
ADDP4
ARGP4
ADDRGP4 ClientSpawn
CALLV
pop
line 1503
;1503:		}
LABELV $864
line 1505
;1504:
;1505:		trap_SendServerCommand(i, "map_restart");
ADDRLP4 8
INDIRI4
ARGI4
ADDRGP4 $867
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1506
;1506:	}
LABELV $858
line 1475
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 1580
ADDP4
ASGNP4
LABELV $860
ADDRLP4 8
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $857
line 1509
;1507:
;1508:	// respawn items, remove projectiles, etc.
;1509:	ent = level.gentities + MAX_CLIENTS;
ADDRLP4 4
ADDRGP4 level+4
INDIRP4
CNSTI4 52224
ADDP4
ASGNP4
line 1510
;1510:	for (i = MAX_CLIENTS; i < level.num_entities; i++, ent++) {
ADDRLP4 8
CNSTI4 64
ASGNI4
ADDRGP4 $872
JUMPV
LABELV $869
line 1512
;1511:
;1512:		if (!ent->inuse || ent->freeAfterEvent)
ADDRLP4 4
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $876
ADDRLP4 4
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
CNSTI4 0
EQI4 $874
LABELV $876
line 1513
;1513:			continue;
ADDRGP4 $870
JUMPV
LABELV $874
line 1515
;1514:
;1515:		if (ent->tag == TAG_DONTSPAWN) {
ADDRLP4 4
INDIRP4
CNSTI4 812
ADDP4
INDIRI4
CNSTI4 1
NEI4 $877
line 1516
;1516:			ent->nextthink = 0;
ADDRLP4 4
INDIRP4
CNSTI4 688
ADDP4
CNSTI4 0
ASGNI4
line 1517
;1517:			continue;
ADDRGP4 $870
JUMPV
LABELV $877
line 1520
;1518:		}
;1519:
;1520:		if (ent->s.eType == ET_ITEM && ent->item) {
ADDRLP4 4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 2
NEI4 $879
ADDRLP4 4
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $879
line 1523
;1521:
;1522:			// already processed in Team_ResetFlags()
;1523:			if (ent->item->giTag == PW_NEUTRALFLAG || ent->item->giTag == PW_REDFLAG || ent->item->giTag == PW_BLUEFLAG)
ADDRLP4 4
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 9
EQI4 $884
ADDRLP4 4
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 7
EQI4 $884
ADDRLP4 4
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 8
NEI4 $881
LABELV $884
line 1524
;1524:				continue;
ADDRGP4 $870
JUMPV
LABELV $881
line 1527
;1525:
;1526:			// remove dropped items
;1527:			if (ent->flags & FL_DROPPED_ITEM) {
ADDRLP4 4
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 4096
BANDI4
CNSTI4 0
EQI4 $885
line 1528
;1528:				ent->nextthink = level.time;
ADDRLP4 4
INDIRP4
CNSTI4 688
ADDP4
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1529
;1529:				continue;
ADDRGP4 $870
JUMPV
LABELV $885
line 1533
;1530:			}
;1531:
;1532:			// respawn picked up items
;1533:			t = SpawnTime(ent, qtrue);
ADDRLP4 4
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRLP4 32
ADDRGP4 SpawnTime
CALLI4
ASGNI4
ADDRLP4 12
ADDRLP4 32
INDIRI4
ASGNI4
line 1534
;1534:			if (t != 0) {
ADDRLP4 12
INDIRI4
CNSTI4 0
EQI4 $888
line 1536
;1535:				// hide items with defined spawn time
;1536:				ent->s.eFlags |= EF_NODRAW;
ADDRLP4 36
ADDRLP4 4
INDIRP4
CNSTI4 8
ADDP4
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 128
BORI4
ASGNI4
line 1537
;1537:				ent->r.svFlags |= SVF_NOCLIENT;
ADDRLP4 40
ADDRLP4 4
INDIRP4
CNSTI4 424
ADDP4
ASGNP4
ADDRLP4 40
INDIRP4
ADDRLP4 40
INDIRP4
INDIRI4
CNSTI4 1
BORI4
ASGNI4
line 1538
;1538:				ent->r.contents = 0;
ADDRLP4 4
INDIRP4
CNSTI4 460
ADDP4
CNSTI4 0
ASGNI4
line 1539
;1539:				ent->activator = NULL;
ADDRLP4 4
INDIRP4
CNSTI4 772
ADDP4
CNSTP4 0
ASGNP4
line 1540
;1540:				ent->think = RespawnItem;
ADDRLP4 4
INDIRP4
CNSTI4 692
ADDP4
ADDRGP4 RespawnItem
ASGNP4
line 1541
;1541:			}
ADDRGP4 $889
JUMPV
LABELV $888
line 1542
;1542:			else {
line 1543
;1543:				t = FRAMETIME;
ADDRLP4 12
CNSTI4 100
ASGNI4
line 1544
;1544:				if (ent->activator) {
ADDRLP4 4
INDIRP4
CNSTI4 772
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $890
line 1545
;1545:					ent->activator = NULL;
ADDRLP4 4
INDIRP4
CNSTI4 772
ADDP4
CNSTP4 0
ASGNP4
line 1546
;1546:					ent->think = RespawnItem;
ADDRLP4 4
INDIRP4
CNSTI4 692
ADDP4
ADDRGP4 RespawnItem
ASGNP4
line 1547
;1547:				}
LABELV $890
line 1548
;1548:			}
LABELV $889
line 1549
;1549:			if (ent->random) {
ADDRLP4 4
INDIRP4
CNSTI4 800
ADDP4
INDIRF4
CNSTF4 0
EQF4 $892
line 1550
;1550:				t += (crandom() * ent->random) * 1000;
ADDRLP4 36
ADDRGP4 rand
CALLI4
ASGNI4
ADDRLP4 12
ADDRLP4 12
INDIRI4
CVIF4 4
ADDRLP4 36
INDIRI4
CNSTI4 32767
BANDI4
CVIF4 4
CNSTF4 939524352
MULF4
CNSTF4 1056964608
SUBF4
CNSTF4 1073741824
MULF4
ADDRLP4 4
INDIRP4
CNSTI4 800
ADDP4
INDIRF4
MULF4
CNSTF4 1148846080
MULF4
ADDF4
CVFI4 4
ASGNI4
line 1551
;1551:				if (t < FRAMETIME) {
ADDRLP4 12
INDIRI4
CNSTI4 100
GEI4 $894
line 1552
;1552:					t = FRAMETIME;
ADDRLP4 12
CNSTI4 100
ASGNI4
line 1553
;1553:				}
LABELV $894
line 1554
;1554:			}
LABELV $892
line 1555
;1555:			ent->nextthink = level.time + t;
ADDRLP4 4
INDIRP4
CNSTI4 688
ADDP4
ADDRGP4 level+32
INDIRI4
ADDRLP4 12
INDIRI4
ADDI4
ASGNI4
line 1557
;1556:
;1557:		}
ADDRGP4 $880
JUMPV
LABELV $879
line 1558
;1558:		else if (ent->s.eType == ET_MISSILE) {
ADDRLP4 4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 3
NEI4 $897
line 1560
;1559:			// remove all launched missiles
;1560:			G_FreeEntity(ent);
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 G_FreeEntity
CALLV
pop
line 1561
;1561:		}
LABELV $897
LABELV $880
line 1562
;1562:	}
LABELV $870
line 1510
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
ADDRLP4 4
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $872
ADDRLP4 8
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $869
line 1563
;1563:}
LABELV $850
endproc G_WarmupEnd 44 12
proc CheckTournament 28 8
line 1583
;1564:
;1565:
;1566:
;1567:/*
;1568:========================================================================
;1569:
;1570:FUNCTIONS CALLED EVERY FRAME
;1571:
;1572:========================================================================
;1573:*/
;1574:
;1575:
;1576:/*
;1577:=============
;1578:CheckTournament
;1579:
;1580:Once a frame, check for changes in tournement player state
;1581:=============
;1582:*/
;1583:static void CheckTournament( void ) {
line 1587
;1584:
;1585:	// check because we run 3 game frames before calling Connect and/or ClientBegin
;1586:	// for clients on a map_restart
;1587:	if ( level.numPlayingClients == 0 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 0
NEI4 $900
line 1588
;1588:		return;
ADDRGP4 $899
JUMPV
LABELV $900
line 1591
;1589:	}
;1590:
;1591:	if ( g_gametype.integer == GT_TOURNAMENT ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $903
line 1594
;1592:
;1593:		// pull in a spectator if needed
;1594:		if ( level.numPlayingClients < 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
GEI4 $906
line 1595
;1595:			AddTournamentPlayer();
ADDRGP4 AddTournamentPlayer
CALLV
pop
line 1596
;1596:		}
LABELV $906
line 1599
;1597:
;1598:		// if we don't have two players, go back to "waiting for players"
;1599:		if ( level.numPlayingClients != 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
EQI4 $909
line 1600
;1600:			if ( level.warmupTime != -1 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 -1
EQI4 $899
line 1601
;1601:				level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1602
;1602:				trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $540
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 0
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1603
;1603:				G_LogPrintf( "Warmup:\n" );
ADDRGP4 $917
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1604
;1604:			}
line 1605
;1605:			return;
ADDRGP4 $899
JUMPV
LABELV $909
line 1608
;1606:		}
;1607:
;1608:		if ( level.warmupTime == 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
NEI4 $918
line 1609
;1609:			return;
ADDRGP4 $899
JUMPV
LABELV $918
line 1613
;1610:		}
;1611:
;1612:		// if the warmup is changed at the console, restart it
;1613:		if ( g_warmup.modificationCount != level.warmupModificationCount ) {
ADDRGP4 g_warmup+4
INDIRI4
ADDRGP4 level+356
INDIRI4
EQI4 $921
line 1614
;1614:			level.warmupModificationCount = g_warmup.modificationCount;
ADDRGP4 level+356
ADDRGP4 g_warmup+4
INDIRI4
ASGNI4
line 1615
;1615:			level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1616
;1616:		}
LABELV $921
line 1619
;1617:
;1618:		// if all players have arrived, start the countdown
;1619:		if ( level.warmupTime < 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
GEI4 $928
line 1620
;1620:			if ( level.numPlayingClients == 2 ) {
ADDRGP4 level+84
INDIRI4
CNSTI4 2
NEI4 $899
line 1621
;1621:				if ( g_warmup.integer > 0 ) {
ADDRGP4 g_warmup+12
INDIRI4
CNSTI4 0
LEI4 $934
line 1622
;1622:					level.warmupTime = level.time + g_warmup.integer * 1000;
ADDRGP4 level+16
ADDRGP4 level+32
INDIRI4
ADDRGP4 g_warmup+12
INDIRI4
CNSTI4 1000
MULI4
ADDI4
ASGNI4
line 1623
;1623:				} else {
ADDRGP4 $935
JUMPV
LABELV $934
line 1624
;1624:					level.warmupTime = 0;
ADDRGP4 level+16
CNSTI4 0
ASGNI4
line 1625
;1625:				}
LABELV $935
line 1627
;1626:
;1627:				trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $540
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 0
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1628
;1628:			}
line 1629
;1629:			return;
ADDRGP4 $899
JUMPV
LABELV $928
line 1633
;1630:		}
;1631:
;1632:		// if the warmup time has counted down, restart
;1633:		if ( level.time > level.warmupTime ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+16
INDIRI4
LEI4 $904
line 1634
;1634:			G_WarmupEnd();
ADDRGP4 G_WarmupEnd
CALLV
pop
line 1635
;1635:			return;
ADDRGP4 $899
JUMPV
line 1637
;1636:		}
;1637:	} else if ( g_gametype.integer != GT_SINGLE_PLAYER && level.warmupTime != 0 ) {
LABELV $903
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
EQI4 $946
ADDRGP4 level+16
INDIRI4
CNSTI4 0
EQI4 $946
line 1639
;1638:		int		counts[TEAM_NUM_TEAMS];
;1639:		qboolean	notEnough = qfalse;
ADDRLP4 0
CNSTI4 0
ASGNI4
line 1641
;1640:
;1641:		if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $950
line 1642
;1642:			counts[TEAM_BLUE] = TeamConnectedCount( -1, TEAM_BLUE );
CNSTI4 -1
ARGI4
CNSTI4 2
ARGI4
ADDRLP4 20
ADDRGP4 TeamConnectedCount
CALLI4
ASGNI4
ADDRLP4 4+8
ADDRLP4 20
INDIRI4
ASGNI4
line 1643
;1643:			counts[TEAM_RED] = TeamConnectedCount( -1, TEAM_RED );
CNSTI4 -1
ARGI4
CNSTI4 1
ARGI4
ADDRLP4 24
ADDRGP4 TeamConnectedCount
CALLI4
ASGNI4
ADDRLP4 4+4
ADDRLP4 24
INDIRI4
ASGNI4
line 1645
;1644:
;1645:			if (counts[TEAM_RED] < 1 || counts[TEAM_BLUE] < 1) {
ADDRLP4 4+4
INDIRI4
CNSTI4 1
LTI4 $959
ADDRLP4 4+8
INDIRI4
CNSTI4 1
GEI4 $951
LABELV $959
line 1646
;1646:				notEnough = qtrue;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1647
;1647:			}
line 1648
;1648:		} else if ( level.numPlayingClients < 2 ) {
ADDRGP4 $951
JUMPV
LABELV $950
ADDRGP4 level+84
INDIRI4
CNSTI4 2
GEI4 $960
line 1649
;1649:			notEnough = qtrue;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1650
;1650:		}
LABELV $960
LABELV $951
line 1652
;1651:
;1652:		if ( notEnough ) {
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $963
line 1653
;1653:			if ( level.warmupTime != -1 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 -1
EQI4 $899
line 1654
;1654:				level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1655
;1655:				trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $540
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1656
;1656:				G_LogPrintf( "Warmup:\n" );
ADDRGP4 $917
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 1657
;1657:			}
line 1658
;1658:			return; // still waiting for team members
ADDRGP4 $899
JUMPV
LABELV $963
line 1661
;1659:		}
;1660:
;1661:		if ( level.warmupTime == 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
NEI4 $970
line 1662
;1662:			return;
ADDRGP4 $899
JUMPV
LABELV $970
line 1666
;1663:		}
;1664:
;1665:		// if the warmup is changed at the console, restart it
;1666:		if ( g_warmup.modificationCount != level.warmupModificationCount ) {
ADDRGP4 g_warmup+4
INDIRI4
ADDRGP4 level+356
INDIRI4
EQI4 $973
line 1667
;1667:			level.warmupModificationCount = g_warmup.modificationCount;
ADDRGP4 level+356
ADDRGP4 g_warmup+4
INDIRI4
ASGNI4
line 1668
;1668:			level.warmupTime = -1;
ADDRGP4 level+16
CNSTI4 -1
ASGNI4
line 1669
;1669:		}
LABELV $973
line 1672
;1670:
;1671:		// if all players have arrived, start the countdown
;1672:		if ( level.warmupTime < 0 ) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
GEI4 $980
line 1673
;1673:			if ( g_warmup.integer > 0 ) {
ADDRGP4 g_warmup+12
INDIRI4
CNSTI4 0
LEI4 $983
line 1674
;1674:				level.warmupTime = level.time + g_warmup.integer * 1000;
ADDRGP4 level+16
ADDRGP4 level+32
INDIRI4
ADDRGP4 g_warmup+12
INDIRI4
CNSTI4 1000
MULI4
ADDI4
ASGNI4
line 1675
;1675:			} else {
ADDRGP4 $984
JUMPV
LABELV $983
line 1676
;1676:				level.warmupTime = 0;
ADDRGP4 level+16
CNSTI4 0
ASGNI4
line 1677
;1677:			}
LABELV $984
line 1679
;1678:
;1679:			trap_SetConfigstring( CS_WARMUP, va("%i", level.warmupTime) );
ADDRGP4 $540
ARGP4
ADDRGP4 level+16
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 5
ARGI4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1680
;1680:			return;
ADDRGP4 $899
JUMPV
LABELV $980
line 1684
;1681:		}
;1682:
;1683:		// if the warmup time has counted down, restart
;1684:		if ( level.time > level.warmupTime ) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+16
INDIRI4
LEI4 $991
line 1685
;1685:			G_WarmupEnd();
ADDRGP4 G_WarmupEnd
CALLV
pop
line 1686
;1686:			return;
LABELV $991
line 1688
;1687:		}
;1688:	}
LABELV $946
LABELV $904
line 1689
;1689:}
LABELV $899
endproc CheckTournament 28 8
proc CheckVote 8 8
line 1697
;1690:
;1691:
;1692:/*
;1693:==================
;1694:CheckVote
;1695:==================
;1696:*/
;1697:static void CheckVote(void) {
line 1698
;1698:	if (level.voteExecuteTime && level.voteExecuteTime < level.time) {
ADDRGP4 level+876
INDIRI4
CNSTI4 0
EQI4 $996
ADDRGP4 level+876
INDIRI4
ADDRGP4 level+32
INDIRI4
GEI4 $996
line 1699
;1699:		level.voteExecuteTime = 0;
ADDRGP4 level+876
CNSTI4 0
ASGNI4
line 1701
;1700:
;1701:		if (!Q_stricmp(level.voteString, "shuffle")) {
ADDRGP4 level+360
ARGP4
ADDRGP4 $1005
ARGP4
ADDRLP4 0
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
NEI4 $1002
line 1702
;1702:			ShuffleTeams();
ADDRGP4 ShuffleTeams
CALLI4
pop
line 1703
;1703:		}
ADDRGP4 $995
JUMPV
LABELV $1002
line 1704
;1704:		else {
line 1705
;1705:			trap_SendConsoleCommand(EXEC_APPEND, va("%s\n", level.voteString));
ADDRGP4 $1006
ARGP4
ADDRGP4 level+360
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 2
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1706
;1706:		}
line 1708
;1707:
;1708:		return;
ADDRGP4 $995
JUMPV
LABELV $996
line 1711
;1709:	}
;1710:
;1711:	if (!level.voteTime) {
ADDRGP4 level+872
INDIRI4
CNSTI4 0
NEI4 $1008
line 1712
;1712:		return;
ADDRGP4 $995
JUMPV
LABELV $1008
line 1715
;1713:	}
;1714:
;1715:	if (level.time - level.voteTime >= VOTE_TIME) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+872
INDIRI4
SUBI4
CNSTI4 30000
LTI4 $1011
line 1716
;1716:		G_BroadcastServerCommand(-1, "print \"Vote failed.\n\"");
CNSTI4 -1
ARGI4
ADDRGP4 $1015
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1717
;1717:	}
ADDRGP4 $1012
JUMPV
LABELV $1011
line 1718
;1718:	else {
line 1719
;1719:		if (level.voteYes > level.numVotingClients / 2) {
ADDRGP4 level+880
INDIRI4
ADDRGP4 level+888
INDIRI4
CNSTI4 2
DIVI4
LEI4 $1016
line 1720
;1720:			G_BroadcastServerCommand(-1, "print \"Vote passed.\n\"");
CNSTI4 -1
ARGI4
ADDRGP4 $1020
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1721
;1721:			level.voteExecuteTime = level.time + 3000;
ADDRGP4 level+876
ADDRGP4 level+32
INDIRI4
CNSTI4 3000
ADDI4
ASGNI4
line 1722
;1722:		}
ADDRGP4 $1017
JUMPV
LABELV $1016
line 1723
;1723:		else if (level.voteNo >= level.numVotingClients / 2) {
ADDRGP4 level+884
INDIRI4
ADDRGP4 level+888
INDIRI4
CNSTI4 2
DIVI4
LTI4 $995
line 1724
;1724:			G_BroadcastServerCommand(-1, "print \"Vote failed.\n\"");
CNSTI4 -1
ARGI4
ADDRGP4 $1015
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1725
;1725:		}
line 1726
;1726:		else {
line 1727
;1727:			return;
LABELV $1024
LABELV $1017
line 1729
;1728:		}
;1729:	}
LABELV $1012
line 1731
;1730:
;1731:	level.voteTime = 0;
ADDRGP4 level+872
CNSTI4 0
ASGNI4
line 1732
;1732:	trap_SetConfigstring(CS_VOTE_TIME, "");
CNSTI4 8
ARGI4
ADDRGP4 $61
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1733
;1733:}
LABELV $995
endproc CheckVote 8 8
proc PrintTeam 4 8
line 1741
;1734:
;1735:
;1736:/*
;1737:==================
;1738:PrintTeam
;1739:==================
;1740:*/
;1741:static void PrintTeam( team_t team, const char *message ) {
line 1744
;1742:	int i;
;1743:
;1744:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1032
JUMPV
LABELV $1029
line 1745
;1745:		if ( level.clients[i].sess.sessionTeam != team )
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $1034
line 1746
;1746:			continue;
ADDRGP4 $1030
JUMPV
LABELV $1034
line 1747
;1747:		if ( level.clients[i].pers.connected != CON_CONNECTED )
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $1036
line 1748
;1748:			continue;
ADDRGP4 $1030
JUMPV
LABELV $1036
line 1749
;1749:		trap_SendServerCommand( i, message );
ADDRLP4 0
INDIRI4
ARGI4
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1750
;1750:	}
LABELV $1030
line 1744
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1032
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1029
line 1751
;1751:}
LABELV $1028
endproc PrintTeam 4 8
export SetLeader
proc SetLeader 8 8
line 1759
;1752:
;1753:
;1754:/*
;1755:==================
;1756:SetLeader
;1757:==================
;1758:*/
;1759:void SetLeader( team_t team, int client ) {
line 1762
;1760:	int i;
;1761:
;1762:	if ( level.clients[client].pers.connected == CON_DISCONNECTED ) {
ADDRFP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1039
line 1763
;1763:		PrintTeam( team, va("print \"%s "S_COLOR_STRIP"is not connected\n\"", level.clients[client].pers.netname) );
ADDRGP4 $1041
ARGP4
ADDRFP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintTeam
CALLV
pop
line 1764
;1764:		return;
ADDRGP4 $1038
JUMPV
LABELV $1039
line 1766
;1765:	}
;1766:	if (level.clients[client].sess.sessionTeam != team) {
ADDRFP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $1042
line 1767
;1767:		PrintTeam( team, va("print \"%s "S_COLOR_STRIP"is not on the team anymore\n\"", level.clients[client].pers.netname) );
ADDRGP4 $1044
ARGP4
ADDRFP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintTeam
CALLV
pop
line 1768
;1768:		return;
ADDRGP4 $1038
JUMPV
LABELV $1042
line 1770
;1769:	}
;1770:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1048
JUMPV
LABELV $1045
line 1771
;1771:		if (level.clients[i].sess.sessionTeam != team)
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $1050
line 1772
;1772:			continue;
ADDRGP4 $1046
JUMPV
LABELV $1050
line 1773
;1773:		if (level.clients[i].sess.teamLeader) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 660
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1052
line 1774
;1774:			level.clients[i].sess.teamLeader = qfalse;
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 660
ADDP4
CNSTI4 0
ASGNI4
line 1775
;1775:			ClientUserinfoChanged( i );
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 1776
;1776:		}
LABELV $1052
line 1777
;1777:	}
LABELV $1046
line 1770
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1048
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1045
line 1778
;1778:	level.clients[client].sess.teamLeader = qtrue;
ADDRFP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 660
ADDP4
CNSTI4 1
ASGNI4
line 1779
;1779:	ClientUserinfoChanged( client );
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 1780
;1780:	PrintTeam( team, va("print \"%s is the new team leader\n\"", level.clients[client].pers.netname) );
ADDRGP4 $1054
ARGP4
ADDRFP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintTeam
CALLV
pop
line 1781
;1781:}
LABELV $1038
endproc SetLeader 8 8
export CheckTeamLeader
proc CheckTeamLeader 28 8
line 1789
;1782:
;1783:
;1784:/*
;1785:==================
;1786:CheckTeamLeader
;1787:==================
;1788:*/
;1789:void CheckTeamLeader( team_t team ) {
line 1794
;1790:	int i;
;1791:	int	max_score, max_id;
;1792:	int	max_bot_score, max_bot_id;
;1793:
;1794:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1059
JUMPV
LABELV $1056
line 1796
;1795:
;1796:		if ( level.clients[i].sess.sessionTeam != team || level.clients[i].pers.connected == CON_DISCONNECTED )
ADDRLP4 24
ADDRGP4 level
INDIRP4
ASGNP4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRLP4 24
INDIRP4
ADDP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
NEI4 $1063
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRLP4 24
INDIRP4
ADDP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1061
LABELV $1063
line 1797
;1797:			continue;
ADDRGP4 $1057
JUMPV
LABELV $1061
line 1799
;1798:
;1799:		if ( level.clients[i].sess.teamLeader )
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 660
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1064
line 1800
;1800:			return;
ADDRGP4 $1055
JUMPV
LABELV $1064
line 1801
;1801:	}
LABELV $1057
line 1794
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1059
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1056
line 1804
;1802:
;1803:	// no leaders? find player with highest score
;1804:	max_score = SHRT_MIN;
ADDRLP4 4
CNSTI4 -32768
ASGNI4
line 1805
;1805:	max_id = -1;
ADDRLP4 12
CNSTI4 -1
ASGNI4
line 1806
;1806:	max_bot_score = SHRT_MIN;
ADDRLP4 8
CNSTI4 -32768
ASGNI4
line 1807
;1807:	max_bot_id = -1;
ADDRLP4 16
CNSTI4 -1
ASGNI4
line 1809
;1808:
;1809:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1069
JUMPV
LABELV $1066
line 1811
;1810:
;1811:		if ( level.clients[i].sess.sessionTeam != team )
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $1071
line 1812
;1812:			continue;
ADDRGP4 $1067
JUMPV
LABELV $1071
line 1814
;1813:
;1814:		if ( g_entities[i].r.svFlags & SVF_BOT ) {
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $1073
line 1815
;1815:			if ( level.clients[i].ps.persistant[PERS_SCORE] > max_bot_score ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ADDRLP4 8
INDIRI4
LEI4 $1074
line 1816
;1816:				max_bot_score = level.clients[i].ps.persistant[PERS_SCORE];
ADDRLP4 8
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1817
;1817:				max_bot_id = i;
ADDRLP4 16
ADDRLP4 0
INDIRI4
ASGNI4
line 1818
;1818:			}
line 1819
;1819:		} else {
ADDRGP4 $1074
JUMPV
LABELV $1073
line 1820
;1820:			if ( level.clients[i].ps.persistant[PERS_SCORE] > max_score ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ADDRLP4 4
INDIRI4
LEI4 $1079
line 1821
;1821:				max_score = level.clients[i].ps.persistant[PERS_SCORE];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 1822
;1822:				max_id = i;
ADDRLP4 12
ADDRLP4 0
INDIRI4
ASGNI4
line 1823
;1823:			}
LABELV $1079
line 1824
;1824:		}
LABELV $1074
line 1825
;1825:	}
LABELV $1067
line 1809
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1069
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1066
line 1827
;1826:
;1827:	if ( max_id != -1 ) {
ADDRLP4 12
INDIRI4
CNSTI4 -1
EQI4 $1081
line 1828
;1828:		SetLeader( team, max_id ); 
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 SetLeader
CALLV
pop
line 1829
;1829:		return;
ADDRGP4 $1055
JUMPV
LABELV $1081
line 1832
;1830:	}
;1831:
;1832:	if ( max_bot_id != -1 ) {
ADDRLP4 16
INDIRI4
CNSTI4 -1
EQI4 $1083
line 1833
;1833:		SetLeader( team, max_bot_id );
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 16
INDIRI4
ARGI4
ADDRGP4 SetLeader
CALLV
pop
line 1834
;1834:		return;
LABELV $1083
line 1836
;1835:	}
;1836:}
LABELV $1055
endproc CheckTeamLeader 28 8
proc CheckTeamVote 16 12
line 1844
;1837:
;1838:
;1839:/*
;1840:==================
;1841:CheckTeamVote
;1842:==================
;1843:*/
;1844:static void CheckTeamVote( team_t team ) {
line 1847
;1845:	int cs_offset;
;1846:
;1847:	if ( team == TEAM_RED )
ADDRFP4 0
INDIRI4
CNSTI4 1
NEI4 $1086
line 1848
;1848:		cs_offset = 0;
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $1087
JUMPV
LABELV $1086
line 1849
;1849:	else if ( team == TEAM_BLUE )
ADDRFP4 0
INDIRI4
CNSTI4 2
NEI4 $1085
line 1850
;1850:		cs_offset = 1;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1852
;1851:	else
;1852:		return;
LABELV $1089
LABELV $1087
line 1854
;1853:
;1854:	if ( !level.teamVoteTime[cs_offset] ) {
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1090
line 1855
;1855:		return;
ADDRGP4 $1085
JUMPV
LABELV $1090
line 1857
;1856:	}
;1857:	if ( level.time - level.teamVoteTime[cs_offset] >= VOTE_TIME ) {
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
INDIRI4
SUBI4
CNSTI4 30000
LTI4 $1093
line 1858
;1858:		G_BroadcastServerCommand( -1, "print \"Team vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $1097
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1859
;1859:	} else {
ADDRGP4 $1094
JUMPV
LABELV $1093
line 1860
;1860:		if ( level.teamVoteYes[cs_offset] > level.numteamVotingClients[cs_offset]/2 ) {
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2948
ADDP4
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2964
ADDP4
INDIRI4
CNSTI4 2
DIVI4
LEI4 $1098
line 1862
;1861:			// execute the command, then remove the vote
;1862:			G_BroadcastServerCommand( -1, "print \"Team vote passed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $1102
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1864
;1863:			//
;1864:			if ( !Q_strncmp( "leader", level.teamVoteString[cs_offset], 6) ) {
ADDRGP4 $1105
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+892
ADDP4
ARGP4
CNSTI4 6
ARGI4
ADDRLP4 8
ADDRGP4 Q_strncmp
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $1103
line 1866
;1865:				//set the team leader
;1866:				SetLeader(team, atoi(level.teamVoteString[cs_offset] + 7));
ADDRLP4 0
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+892+7
ADDP4
ARGP4
ADDRLP4 12
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 SetLeader
CALLV
pop
line 1867
;1867:			}
ADDRGP4 $1099
JUMPV
LABELV $1103
line 1868
;1868:			else {
line 1869
;1869:				trap_SendConsoleCommand( EXEC_APPEND, va("%s\n", level.teamVoteString[cs_offset] ) );
ADDRGP4 $1006
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+892
ADDP4
ARGP4
ADDRLP4 12
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 2
ARGI4
ADDRLP4 12
INDIRP4
ARGP4
ADDRGP4 trap_SendConsoleCommand
CALLV
pop
line 1870
;1870:			}
line 1871
;1871:		} else if ( level.teamVoteNo[cs_offset] >= level.numteamVotingClients[cs_offset]/2 ) {
ADDRGP4 $1099
JUMPV
LABELV $1098
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2956
ADDP4
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2964
ADDP4
INDIRI4
CNSTI4 2
DIVI4
LTI4 $1085
line 1873
;1872:			// same behavior as a timeout
;1873:			G_BroadcastServerCommand( -1, "print \"Team vote failed.\n\"" );
CNSTI4 -1
ARGI4
ADDRGP4 $1097
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 1874
;1874:		} else {
line 1876
;1875:			// still waiting for a majority
;1876:			return;
LABELV $1111
LABELV $1099
line 1878
;1877:		}
;1878:	}
LABELV $1094
line 1879
;1879:	level.teamVoteTime[cs_offset] = 0;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
CNSTI4 0
ASGNI4
line 1880
;1880:	trap_SetConfigstring( CS_TEAMVOTE_TIME + cs_offset, "" );
ADDRLP4 0
INDIRI4
CNSTI4 12
ADDI4
ARGI4
ADDRGP4 $61
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1882
;1881:
;1882:}
LABELV $1085
endproc CheckTeamVote 16 12
data
align 4
LABELV $1116
byte 4 -1
export CheckCvars
code
proc CheckCvars 4 8
line 1890
;1883:
;1884:
;1885:/*
;1886:==================
;1887:CheckCvars
;1888:==================
;1889:*/
;1890:void CheckCvars( void ) {
line 1893
;1891:	static int lastMod = -1;
;1892:
;1893:	if ( lastMod != g_password.modificationCount ) {
ADDRGP4 $1116
INDIRI4
ADDRGP4 g_password+4
INDIRI4
EQI4 $1117
line 1894
;1894:		lastMod = g_password.modificationCount;
ADDRGP4 $1116
ADDRGP4 g_password+4
INDIRI4
ASGNI4
line 1895
;1895:		if ( g_password.string[0] && Q_stricmp( g_password.string, "none" ) != 0 ) {
ADDRGP4 g_password+16
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $1121
ADDRGP4 g_password+16
ARGP4
ADDRGP4 $1125
ARGP4
ADDRLP4 0
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $1121
line 1896
;1896:			trap_Cvar_Set( "g_needpass", "1" );
ADDRGP4 $87
ARGP4
ADDRGP4 $78
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 1897
;1897:		} else {
ADDRGP4 $1122
JUMPV
LABELV $1121
line 1898
;1898:			trap_Cvar_Set( "g_needpass", "0" );
ADDRGP4 $87
ARGP4
ADDRGP4 $66
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 1899
;1899:		}
LABELV $1122
line 1900
;1900:	}
LABELV $1117
line 1901
;1901:}
LABELV $1115
endproc CheckCvars 4 8
export G_RunThink
proc G_RunThink 8 4
line 1911
;1902:
;1903:
;1904:/*
;1905:=============
;1906:G_RunThink
;1907:
;1908:Runs thinking code for this frame if necessary
;1909:=============
;1910:*/
;1911:void G_RunThink( gentity_t *ent ) {
line 1914
;1912:	int	thinktime;
;1913:
;1914:	thinktime = ent->nextthink;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 688
ADDP4
INDIRI4
ASGNI4
line 1915
;1915:	if (thinktime <= 0) {
ADDRLP4 0
INDIRI4
CNSTI4 0
GTI4 $1127
line 1916
;1916:		return;
ADDRGP4 $1126
JUMPV
LABELV $1127
line 1918
;1917:	}
;1918:	if (thinktime > level.time) {
ADDRLP4 0
INDIRI4
ADDRGP4 level+32
INDIRI4
LEI4 $1129
line 1919
;1919:		return;
ADDRGP4 $1126
JUMPV
LABELV $1129
line 1922
;1920:	}
;1921:	
;1922:	ent->nextthink = 0;
ADDRFP4 0
INDIRP4
CNSTI4 688
ADDP4
CNSTI4 0
ASGNI4
line 1923
;1923:	if ( !ent->think ) {
ADDRFP4 0
INDIRP4
CNSTI4 692
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $1132
line 1924
;1924:		G_Error ( "NULL ent->think");
ADDRGP4 $1134
ARGP4
ADDRGP4 G_Error
CALLV
pop
line 1925
;1925:	} else {
ADDRGP4 $1133
JUMPV
LABELV $1132
line 1926
;1926:		ent->think (ent);
ADDRLP4 4
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRLP4 4
INDIRP4
CNSTI4 692
ADDP4
INDIRP4
CALLV
pop
line 1927
;1927:	}
LABELV $1133
line 1928
;1928:}
LABELV $1126
endproc G_RunThink 8 4
bss
align 4
LABELV $1136
skip 3840
code
proc G_RunFrame 32 12
line 1938
;1929:
;1930:
;1931:/*
;1932:================
;1933:G_RunFrame
;1934:
;1935:Advances the non-player objects in the world
;1936:================
;1937:*/
;1938:static void G_RunFrame( int levelTime ) {
line 1946
;1939:	int			i;
;1940:	gentity_t	*ent;
;1941:	gclient_t	*client;
;1942:	static	gentity_t *missiles[ MAX_GENTITIES - MAX_CLIENTS ];
;1943:	int		numMissiles;
;1944:	
;1945:	// if we are waiting for the level to restart, do nothing
;1946:	if ( level.restarted ) {
ADDRGP4 level+72
INDIRI4
CNSTI4 0
EQI4 $1137
line 1947
;1947:		return;
ADDRGP4 $1135
JUMPV
LABELV $1137
line 1950
;1948:	}
;1949:
;1950:	level.framenum++;
ADDRLP4 16
ADDRGP4 level+28
ASGNP4
ADDRLP4 16
INDIRP4
ADDRLP4 16
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1951
;1951:	level.previousTime = level.time;
ADDRGP4 level+36
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1952
;1952:	level.time = levelTime;
ADDRGP4 level+32
ADDRFP4 0
INDIRI4
ASGNI4
line 1953
;1953:	level.msec = level.time - level.previousTime;
ADDRGP4 level+44
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+36
INDIRI4
SUBI4
ASGNI4
line 1956
;1954:
;1955:	// get any cvar changes
;1956:	G_UpdateCvars();
ADDRGP4 G_UpdateCvars
CALLV
pop
line 1958
;1957:
;1958:	numMissiles = 0;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 1963
;1959:
;1960:	//
;1961:	// go through all allocated objects
;1962:	//
;1963:	ent = &g_entities[0];
ADDRLP4 0
ADDRGP4 g_entities
ASGNP4
line 1964
;1964:	for (i=0 ; i<level.num_entities ; i++, ent++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $1150
JUMPV
LABELV $1147
line 1965
;1965:		if ( !ent->inuse ) {
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1152
line 1966
;1966:			continue;
ADDRGP4 $1148
JUMPV
LABELV $1152
line 1970
;1967:		}
;1968:
;1969:		// clear events that are too old
;1970:		if ( level.time - ent->eventTime > EVENT_VALID_MSEC ) {
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 552
ADDP4
INDIRI4
SUBI4
CNSTI4 300
LEI4 $1154
line 1971
;1971:			if ( ent->s.event ) {
ADDRLP4 0
INDIRP4
CNSTI4 180
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1157
line 1972
;1972:				ent->s.event = 0;	// &= EV_EVENT_BITS;
ADDRLP4 0
INDIRP4
CNSTI4 180
ADDP4
CNSTI4 0
ASGNI4
line 1973
;1973:				if ( ent->client ) {
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $1159
line 1974
;1974:					ent->client->ps.externalEvent = 0;
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 128
ADDP4
CNSTI4 0
ASGNI4
line 1978
;1975:					// predicted events should never be set to zero
;1976:					//ent->client->ps.events[0] = 0;
;1977:					//ent->client->ps.events[1] = 0;
;1978:				}
LABELV $1159
line 1979
;1979:			}
LABELV $1157
line 1980
;1980:			if ( ent->freeAfterEvent ) {
ADDRLP4 0
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1161
line 1982
;1981:				// tempEntities or dropped items completely go away after their event
;1982:				G_FreeEntity( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_FreeEntity
CALLV
pop
line 1983
;1983:				continue;
ADDRGP4 $1148
JUMPV
LABELV $1161
line 1984
;1984:			} else if ( ent->unlinkAfterEvent ) {
ADDRLP4 0
INDIRP4
CNSTI4 560
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1163
line 1986
;1985:				// items that will respawn will hide themselves after their pickup event
;1986:				ent->unlinkAfterEvent = qfalse;
ADDRLP4 0
INDIRP4
CNSTI4 560
ADDP4
CNSTI4 0
ASGNI4
line 1987
;1987:				trap_UnlinkEntity( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 trap_UnlinkEntity
CALLV
pop
line 1988
;1988:			}
LABELV $1163
line 1989
;1989:		}
LABELV $1154
line 1992
;1990:
;1991:		// temporary entities don't think
;1992:		if ( ent->freeAfterEvent ) {
ADDRLP4 0
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1165
line 1993
;1993:			continue;
ADDRGP4 $1148
JUMPV
LABELV $1165
line 1996
;1994:		}
;1995:
;1996:		if ( !ent->r.linked && ent->neverFree ) {
ADDRLP4 0
INDIRP4
CNSTI4 416
ADDP4
INDIRI4
CNSTI4 0
NEI4 $1167
ADDRLP4 0
INDIRP4
CNSTI4 532
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1167
line 1997
;1997:			continue;
ADDRGP4 $1148
JUMPV
LABELV $1167
line 2000
;1998:		}
;1999:
;2000:		if ( ent->s.eType == ET_MISSILE ) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 3
NEI4 $1169
line 2002
;2001:			// queue for unlagged pass
;2002:			missiles[ numMissiles ] = ent;
ADDRLP4 8
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $1136
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
line 2003
;2003:			numMissiles++;
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 2004
;2004:			continue;
ADDRGP4 $1148
JUMPV
LABELV $1169
line 2007
;2005:		}
;2006:
;2007:		if ( ent->s.eType == ET_ITEM || ent->physicsObject ) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 2
EQI4 $1173
ADDRLP4 0
INDIRP4
CNSTI4 564
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1171
LABELV $1173
line 2008
;2008:			G_RunItem( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunItem
CALLV
pop
line 2009
;2009:			continue;
ADDRGP4 $1148
JUMPV
LABELV $1171
line 2012
;2010:		}
;2011:
;2012:		if ( ent->s.eType == ET_MOVER ) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 4
NEI4 $1174
line 2013
;2013:			G_RunMover( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunMover
CALLV
pop
line 2014
;2014:			continue;
ADDRGP4 $1148
JUMPV
LABELV $1174
line 2017
;2015:		}
;2016:
;2017:		if ( i < MAX_CLIENTS ) {
ADDRLP4 4
INDIRI4
CNSTI4 64
GEI4 $1176
line 2018
;2018:			client = ent->client;
ADDRLP4 12
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 2019
;2019:			client->sess.spectatorTime += level.msec; 
ADDRLP4 28
ADDRLP4 12
INDIRP4
CNSTI4 640
ADDP4
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
ADDRGP4 level+44
INDIRI4
ADDI4
ASGNI4
line 2020
;2020:			if ( client->pers.connected == CON_CONNECTED )
ADDRLP4 12
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $1148
line 2021
;2021:				G_RunClient( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunClient
CALLV
pop
line 2022
;2022:			continue;
ADDRGP4 $1148
JUMPV
LABELV $1176
line 2025
;2023:		}
;2024:
;2025:		G_RunThink( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_RunThink
CALLV
pop
line 2026
;2026:	}
LABELV $1148
line 1964
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $1150
ADDRLP4 4
INDIRI4
ADDRGP4 level+12
INDIRI4
LTI4 $1147
line 2028
;2027:
;2028:	if ( numMissiles ) {
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $1181
line 2030
;2029:		// unlagged
;2030:		G_TimeShiftAllClients( level.previousTime, NULL );
ADDRGP4 level+36
INDIRI4
ARGI4
CNSTP4 0
ARGP4
ADDRGP4 G_TimeShiftAllClients
CALLV
pop
line 2032
;2031:		// run missiles
;2032:		for ( i = 0; i < numMissiles; i++ )
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $1187
JUMPV
LABELV $1184
line 2033
;2033:			G_RunMissile( missiles[ i ] );
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $1136
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_RunMissile
CALLV
pop
LABELV $1185
line 2032
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $1187
ADDRLP4 4
INDIRI4
ADDRLP4 8
INDIRI4
LTI4 $1184
line 2035
;2034:		// unlagged
;2035:		G_UnTimeShiftAllClients( NULL );
CNSTP4 0
ARGP4
ADDRGP4 G_UnTimeShiftAllClients
CALLV
pop
line 2036
;2036:	}
LABELV $1181
line 2039
;2037:
;2038:	// perform final fixups on the players
;2039:	ent = &g_entities[0];
ADDRLP4 0
ADDRGP4 g_entities
ASGNP4
line 2040
;2040:	for (i = 0 ; i < level.maxclients ; i++, ent++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $1191
JUMPV
LABELV $1188
line 2041
;2041:		if ( ent->inuse ) {
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $1193
line 2042
;2042:			ClientEndFrame( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ClientEndFrame
CALLV
pop
line 2043
;2043:		}
LABELV $1193
line 2044
;2044:	}
LABELV $1189
line 2040
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 816
ADDP4
ASGNP4
LABELV $1191
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $1188
line 2047
;2045:
;2046:	// see if it is time to do a tournement restart
;2047:	CheckTournament();
ADDRGP4 CheckTournament
CALLV
pop
line 2050
;2048:
;2049:	// see if it is time to end the level
;2050:	CheckExitRules();
ADDRGP4 CheckExitRules
CALLV
pop
line 2053
;2051:
;2052:	// update to team status?
;2053:	CheckTeamStatus();
ADDRGP4 CheckTeamStatus
CALLV
pop
line 2056
;2054:
;2055:	// cancel vote if timed out
;2056:	CheckVote();
ADDRGP4 CheckVote
CALLV
pop
line 2059
;2057:
;2058:	// check team votes
;2059:	CheckTeamVote( TEAM_RED );
CNSTI4 1
ARGI4
ADDRGP4 CheckTeamVote
CALLV
pop
line 2060
;2060:	CheckTeamVote( TEAM_BLUE );
CNSTI4 2
ARGI4
ADDRGP4 CheckTeamVote
CALLV
pop
line 2063
;2061:
;2062:	// for tracking changes
;2063:	CheckCvars();
ADDRGP4 CheckCvars
CALLV
pop
line 2065
;2064:
;2065:	if (g_listEntity.integer) {
ADDRGP4 g_listEntity+12
INDIRI4
CNSTI4 0
EQI4 $1195
line 2066
;2066:		for (i = 0; i < MAX_GENTITIES; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
LABELV $1198
line 2067
;2067:			G_Printf("%4i: %s\n", i, g_entities[i].classname);
ADDRGP4 $1202
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+524
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 2068
;2068:		}
LABELV $1199
line 2066
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 1024
LTI4 $1198
line 2069
;2069:		trap_Cvar_Set("g_listEntity", "0");
ADDRGP4 $112
ARGP4
ADDRGP4 $66
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 2070
;2070:	}
LABELV $1195
line 2073
;2071:
;2072:	// unlagged
;2073:	level.frameStartTime = trap_Milliseconds();
ADDRLP4 20
ADDRGP4 trap_Milliseconds
CALLI4
ASGNI4
ADDRGP4 level+11800
ADDRLP4 20
INDIRI4
ASGNI4
line 2076
;2074:
;2075:	// Check if the game is in a warmup period
;2076:	if (level.warmupTime == 0) {
ADDRGP4 level+16
INDIRI4
CNSTI4 0
NEI4 $1205
line 2077
;2077:		CheckTeamBalance();
ADDRGP4 CheckTeamBalance
CALLI4
pop
line 2078
;2078:	}
LABELV $1205
line 2080
;2079:
;2080:	TrackPlayerTime();
ADDRGP4 TrackPlayerTime
CALLI4
pop
line 2082
;2081:
;2082:	TrackPlayerFrags();
ADDRGP4 TrackPlayerFrags
CALLI4
pop
line 2083
;2083:}
LABELV $1135
endproc G_RunFrame 32 12
import TrackPlayerFrags
import TrackPlayerTime
import CheckTeamBalance
import ShuffleTeams
bss
export trap_GetValue
align 4
LABELV trap_GetValue
skip 4
export g_clients
align 4
LABELV g_clients
skip 101120
export svf_self_portal2
align 4
LABELV svf_self_portal2
skip 4
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
export g_rotation
align 4
LABELV g_rotation
skip 272
export pmove_msec
align 4
LABELV pmove_msec
skip 272
export pmove_fixed
align 4
LABELV pmove_fixed
skip 272
export g_smoothClients
align 4
LABELV g_smoothClients
skip 272
export g_predictPVS
align 4
LABELV g_predictPVS
skip 272
export g_unlagged
align 4
LABELV g_unlagged
skip 272
export g_listEntity
align 4
LABELV g_listEntity
skip 272
export g_allowVote
align 4
LABELV g_allowVote
skip 272
export g_podiumDrop
align 4
LABELV g_podiumDrop
skip 272
export g_podiumDist
align 4
LABELV g_podiumDist
skip 272
export g_blood
align 4
LABELV g_blood
skip 272
export g_motd
align 4
LABELV g_motd
skip 272
export g_debugAlloc
align 4
LABELV g_debugAlloc
skip 272
export g_debugDamage
align 4
LABELV g_debugDamage
skip 272
export g_debugMove
align 4
LABELV g_debugMove
skip 272
export g_inactivity
align 4
LABELV g_inactivity
skip 272
export g_forcerespawn
align 4
LABELV g_forcerespawn
skip 272
export g_weaponTeamRespawn
align 4
LABELV g_weaponTeamRespawn
skip 272
export g_weaponRespawn
align 4
LABELV g_weaponRespawn
skip 272
export g_quadfactor
align 4
LABELV g_quadfactor
skip 272
export g_knockback
align 4
LABELV g_knockback
skip 272
export g_gravity
align 4
LABELV g_gravity
skip 272
export g_speed
align 4
LABELV g_speed
skip 272
export g_dedicated
align 4
LABELV g_dedicated
skip 272
export g_needpass
align 4
LABELV g_needpass
skip 272
export g_filterBan
align 4
LABELV g_filterBan
skip 272
export g_banIPs
align 4
LABELV g_banIPs
skip 272
export g_password
align 4
LABELV g_password
skip 272
export g_logSync
align 4
LABELV g_logSync
skip 272
export g_log
align 4
LABELV g_log
skip 272
export g_warmup
align 4
LABELV g_warmup
skip 272
export g_teamForceBalance
align 4
LABELV g_teamForceBalance
skip 272
export g_autoJoin
align 4
LABELV g_autoJoin
skip 272
export g_friendlyFire
align 4
LABELV g_friendlyFire
skip 272
export g_synchronousClients
align 4
LABELV g_synchronousClients
skip 272
export g_capturelimit
align 4
LABELV g_capturelimit
skip 272
export g_timelimit
align 4
LABELV g_timelimit
skip 272
export g_fraglimit
align 4
LABELV g_fraglimit
skip 272
export g_dmflags
align 4
LABELV g_dmflags
skip 272
export g_maxGameClients
align 4
LABELV g_maxGameClients
skip 272
export g_maxclients
align 4
LABELV g_maxclients
skip 272
export g_gametype
align 4
LABELV g_gametype
skip 272
export sv_fps
align 4
LABELV sv_fps
skip 272
export g_mapname
align 4
LABELV g_mapname
skip 272
export g_cheats
align 4
LABELV g_cheats
skip 272
export g_entities
align 4
LABELV g_entities
skip 835584
export level
align 4
LABELV level
skip 11804
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
export g_randomMap
align 4
LABELV g_randomMap
skip 272
import G_MapExist
import G_LoadMap
import ParseMapRotation
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
import DeathmatchScoreboardMessage
import FireWeapon
import G_FilterPacket
import G_ProcessIPBans
import ConsoleCommand
import SpotWouldTelefrag
import AddScore
import player_die
import ClientSpawn
import InitBodyQue
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
LABELV $1202
byte 1 37
byte 1 52
byte 1 105
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $1134
byte 1 78
byte 1 85
byte 1 76
byte 1 76
byte 1 32
byte 1 101
byte 1 110
byte 1 116
byte 1 45
byte 1 62
byte 1 116
byte 1 104
byte 1 105
byte 1 110
byte 1 107
byte 1 0
align 1
LABELV $1125
byte 1 110
byte 1 111
byte 1 110
byte 1 101
byte 1 0
align 1
LABELV $1105
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $1102
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1097
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 102
byte 1 97
byte 1 105
byte 1 108
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1054
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 110
byte 1 101
byte 1 119
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1044
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 32
byte 1 94
byte 1 55
byte 1 105
byte 1 115
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 111
byte 1 110
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 97
byte 1 110
byte 1 121
byte 1 109
byte 1 111
byte 1 114
byte 1 101
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1041
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 32
byte 1 94
byte 1 55
byte 1 105
byte 1 115
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 99
byte 1 111
byte 1 110
byte 1 110
byte 1 101
byte 1 99
byte 1 116
byte 1 101
byte 1 100
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1020
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1015
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 102
byte 1 97
byte 1 105
byte 1 108
byte 1 101
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $1006
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $1005
byte 1 115
byte 1 104
byte 1 117
byte 1 102
byte 1 102
byte 1 108
byte 1 101
byte 1 0
align 1
LABELV $917
byte 1 87
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 58
byte 1 10
byte 1 0
align 1
LABELV $867
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
byte 1 0
align 1
LABELV $840
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 66
byte 1 108
byte 1 117
byte 1 101
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $834
byte 1 67
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 0
align 1
LABELV $833
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 82
byte 1 101
byte 1 100
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $823
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $810
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 66
byte 1 108
byte 1 117
byte 1 101
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $804
byte 1 70
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 0
align 1
LABELV $803
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 82
byte 1 101
byte 1 100
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $790
byte 1 84
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 0
align 1
LABELV $789
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 104
byte 1 105
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $694
byte 1 115
byte 1 99
byte 1 111
byte 1 114
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 32
byte 1 112
byte 1 105
byte 1 110
byte 1 103
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 32
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $677
byte 1 114
byte 1 101
byte 1 100
byte 1 58
byte 1 37
byte 1 105
byte 1 32
byte 1 32
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 58
byte 1 37
byte 1 105
byte 1 10
byte 1 0
align 1
LABELV $668
byte 1 69
byte 1 120
byte 1 105
byte 1 116
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $662
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $657
byte 1 37
byte 1 51
byte 1 105
byte 1 58
byte 1 37
byte 1 48
byte 1 50
byte 1 105
byte 1 46
byte 1 37
byte 1 105
byte 1 32
byte 1 0
align 1
LABELV $654
byte 1 118
byte 1 115
byte 1 116
byte 1 114
byte 1 32
byte 1 110
byte 1 101
byte 1 120
byte 1 116
byte 1 109
byte 1 97
byte 1 112
byte 1 10
byte 1 0
align 1
LABELV $652
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
byte 1 0
align 1
LABELV $649
byte 1 110
byte 1 101
byte 1 120
byte 1 116
byte 1 109
byte 1 97
byte 1 112
byte 1 0
align 1
LABELV $625
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
LABELV $540
byte 1 37
byte 1 105
byte 1 0
align 1
LABELV $401
byte 1 115
byte 1 0
align 1
LABELV $392
byte 1 102
byte 1 0
align 1
LABELV $362
byte 1 61
byte 1 61
byte 1 61
byte 1 61
byte 1 32
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 32
byte 1 67
byte 1 111
byte 1 109
byte 1 112
byte 1 108
byte 1 101
byte 1 116
byte 1 101
byte 1 32
byte 1 61
byte 1 61
byte 1 61
byte 1 61
byte 1 10
byte 1 0
align 1
LABELV $361
byte 1 71
byte 1 95
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 32
byte 1 98
byte 1 111
byte 1 116
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $358
byte 1 71
byte 1 95
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 83
byte 1 101
byte 1 115
byte 1 115
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 100
byte 1 97
byte 1 116
byte 1 97
byte 1 32
byte 1 119
byte 1 114
byte 1 105
byte 1 116
byte 1 116
byte 1 101
byte 1 110
byte 1 10
byte 1 0
align 1
LABELV $355
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 10
byte 1 0
align 1
LABELV $351
byte 1 71
byte 1 95
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 83
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 115
byte 1 104
byte 1 117
byte 1 116
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 10
byte 1 0
align 1
LABELV $350
byte 1 71
byte 1 95
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 83
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 114
byte 1 101
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 10
byte 1 0
align 1
LABELV $347
byte 1 61
byte 1 61
byte 1 61
byte 1 61
byte 1 32
byte 1 83
byte 1 104
byte 1 117
byte 1 116
byte 1 100
byte 1 111
byte 1 119
byte 1 110
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 32
byte 1 61
byte 1 61
byte 1 61
byte 1 61
byte 1 10
byte 1 0
align 1
LABELV $345
byte 1 71
byte 1 95
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 105
byte 1 97
byte 1 108
byte 1 105
byte 1 122
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 99
byte 1 111
byte 1 109
byte 1 112
byte 1 108
byte 1 101
byte 1 116
byte 1 101
byte 1 10
byte 1 0
align 1
LABELV $343
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
LABELV $337
byte 1 98
byte 1 111
byte 1 116
byte 1 95
byte 1 101
byte 1 110
byte 1 97
byte 1 98
byte 1 108
byte 1 101
byte 1 0
align 1
LABELV $334
byte 1 109
byte 1 111
byte 1 100
byte 1 101
byte 1 108
byte 1 115
byte 1 47
byte 1 109
byte 1 97
byte 1 112
byte 1 111
byte 1 98
byte 1 106
byte 1 101
byte 1 99
byte 1 116
byte 1 115
byte 1 47
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 47
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 52
byte 1 46
byte 1 109
byte 1 100
byte 1 51
byte 1 0
align 1
LABELV $332
byte 1 99
byte 1 111
byte 1 109
byte 1 95
byte 1 98
byte 1 117
byte 1 105
byte 1 108
byte 1 100
byte 1 83
byte 1 99
byte 1 114
byte 1 105
byte 1 112
byte 1 116
byte 1 0
align 1
LABELV $328
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 10
byte 1 0
align 1
LABELV $322
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 108
byte 1 111
byte 1 116
byte 1 0
align 1
LABELV $306
byte 1 78
byte 1 111
byte 1 116
byte 1 32
byte 1 108
byte 1 111
byte 1 103
byte 1 103
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 100
byte 1 105
byte 1 115
byte 1 107
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $305
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $304
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 10
byte 1 0
align 1
LABELV $302
byte 1 87
byte 1 65
byte 1 82
byte 1 78
byte 1 73
byte 1 78
byte 1 71
byte 1 58
byte 1 32
byte 1 67
byte 1 111
byte 1 117
byte 1 108
byte 1 100
byte 1 110
byte 1 39
byte 1 116
byte 1 32
byte 1 111
byte 1 112
byte 1 101
byte 1 110
byte 1 32
byte 1 108
byte 1 111
byte 1 103
byte 1 102
byte 1 105
byte 1 108
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $287
byte 1 115
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 47
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 47
byte 1 102
byte 1 114
byte 1 121
byte 1 46
byte 1 119
byte 1 97
byte 1 118
byte 1 0
align 1
LABELV $281
byte 1 83
byte 1 86
byte 1 70
byte 1 95
byte 1 83
byte 1 69
byte 1 76
byte 1 70
byte 1 95
byte 1 80
byte 1 79
byte 1 82
byte 1 84
byte 1 65
byte 1 76
byte 1 50
byte 1 95
byte 1 81
byte 1 51
byte 1 69
byte 1 0
align 1
LABELV $276
byte 1 47
byte 1 47
byte 1 116
byte 1 114
byte 1 97
byte 1 112
byte 1 95
byte 1 71
byte 1 101
byte 1 116
byte 1 86
byte 1 97
byte 1 108
byte 1 117
byte 1 101
byte 1 0
align 1
LABELV $275
byte 1 71
byte 1 95
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 83
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 117
byte 1 112
byte 1 10
byte 1 0
align 1
LABELV $274
byte 1 71
byte 1 95
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 83
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 114
byte 1 101
byte 1 115
byte 1 116
byte 1 97
byte 1 114
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 10
byte 1 0
align 1
LABELV $271
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 100
byte 1 97
byte 1 116
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $270
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $269
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 32
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 32
byte 1 73
byte 1 110
byte 1 105
byte 1 116
byte 1 105
byte 1 97
byte 1 108
byte 1 105
byte 1 122
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 32
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 45
byte 1 10
byte 1 0
align 1
LABELV $264
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $259
byte 1 114
byte 1 101
byte 1 100
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $254
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $249
byte 1 114
byte 1 101
byte 1 100
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $246
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 95
byte 1 67
byte 1 84
byte 1 70
byte 1 95
byte 1 0
align 1
LABELV $241
byte 1 100
byte 1 101
byte 1 97
byte 1 116
byte 1 104
byte 1 109
byte 1 97
byte 1 116
byte 1 99
byte 1 104
byte 1 0
align 1
LABELV $232
byte 1 105
byte 1 110
byte 1 116
byte 1 101
byte 1 114
byte 1 109
byte 1 105
byte 1 115
byte 1 115
byte 1 105
byte 1 111
byte 1 110
byte 1 0
align 1
LABELV $229
byte 1 105
byte 1 110
byte 1 102
byte 1 111
byte 1 95
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 95
byte 1 0
align 1
LABELV $211
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 83
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 99
byte 1 104
byte 1 97
byte 1 110
byte 1 103
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $199
byte 1 103
byte 1 95
byte 1 100
byte 1 111
byte 1 87
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 0
align 1
LABELV $195
byte 1 103
byte 1 95
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 116
byte 1 121
byte 1 112
byte 1 101
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 111
byte 1 117
byte 1 116
byte 1 32
byte 1 111
byte 1 102
byte 1 32
byte 1 114
byte 1 97
byte 1 110
byte 1 103
byte 1 101
byte 1 44
byte 1 32
byte 1 100
byte 1 101
byte 1 102
byte 1 97
byte 1 117
byte 1 108
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 48
byte 1 10
byte 1 0
align 1
LABELV $177
byte 1 37
byte 1 105
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 115
byte 1 32
byte 1 119
byte 1 105
byte 1 116
byte 1 104
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 101
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 105
byte 1 101
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $119
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
LABELV $118
byte 1 103
byte 1 95
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 0
align 1
LABELV $117
byte 1 112
byte 1 109
byte 1 111
byte 1 118
byte 1 101
byte 1 95
byte 1 109
byte 1 115
byte 1 101
byte 1 99
byte 1 0
align 1
LABELV $116
byte 1 112
byte 1 109
byte 1 111
byte 1 118
byte 1 101
byte 1 95
byte 1 102
byte 1 105
byte 1 120
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $115
byte 1 103
byte 1 95
byte 1 115
byte 1 109
byte 1 111
byte 1 111
byte 1 116
byte 1 104
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $114
byte 1 103
byte 1 95
byte 1 112
byte 1 114
byte 1 101
byte 1 100
byte 1 105
byte 1 99
byte 1 116
byte 1 80
byte 1 86
byte 1 83
byte 1 0
align 1
LABELV $113
byte 1 103
byte 1 95
byte 1 117
byte 1 110
byte 1 108
byte 1 97
byte 1 103
byte 1 103
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $112
byte 1 103
byte 1 95
byte 1 108
byte 1 105
byte 1 115
byte 1 116
byte 1 69
byte 1 110
byte 1 116
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $111
byte 1 103
byte 1 95
byte 1 97
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $110
byte 1 55
byte 1 48
byte 1 0
align 1
LABELV $109
byte 1 103
byte 1 95
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 68
byte 1 114
byte 1 111
byte 1 112
byte 1 0
align 1
LABELV $108
byte 1 56
byte 1 48
byte 1 0
align 1
LABELV $107
byte 1 103
byte 1 95
byte 1 112
byte 1 111
byte 1 100
byte 1 105
byte 1 117
byte 1 109
byte 1 68
byte 1 105
byte 1 115
byte 1 116
byte 1 0
align 1
LABELV $106
byte 1 99
byte 1 111
byte 1 109
byte 1 95
byte 1 98
byte 1 108
byte 1 111
byte 1 111
byte 1 100
byte 1 0
align 1
LABELV $105
byte 1 103
byte 1 95
byte 1 109
byte 1 111
byte 1 116
byte 1 100
byte 1 0
align 1
LABELV $104
byte 1 103
byte 1 95
byte 1 100
byte 1 101
byte 1 98
byte 1 117
byte 1 103
byte 1 65
byte 1 108
byte 1 108
byte 1 111
byte 1 99
byte 1 0
align 1
LABELV $103
byte 1 103
byte 1 95
byte 1 100
byte 1 101
byte 1 98
byte 1 117
byte 1 103
byte 1 68
byte 1 97
byte 1 109
byte 1 97
byte 1 103
byte 1 101
byte 1 0
align 1
LABELV $102
byte 1 103
byte 1 95
byte 1 100
byte 1 101
byte 1 98
byte 1 117
byte 1 103
byte 1 77
byte 1 111
byte 1 118
byte 1 101
byte 1 0
align 1
LABELV $101
byte 1 103
byte 1 95
byte 1 105
byte 1 110
byte 1 97
byte 1 99
byte 1 116
byte 1 105
byte 1 118
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $100
byte 1 103
byte 1 95
byte 1 102
byte 1 111
byte 1 114
byte 1 99
byte 1 101
byte 1 114
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $99
byte 1 103
byte 1 95
byte 1 119
byte 1 101
byte 1 97
byte 1 112
byte 1 111
byte 1 110
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 82
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $98
byte 1 53
byte 1 0
align 1
LABELV $97
byte 1 103
byte 1 95
byte 1 119
byte 1 101
byte 1 97
byte 1 112
byte 1 111
byte 1 110
byte 1 114
byte 1 101
byte 1 115
byte 1 112
byte 1 97
byte 1 119
byte 1 110
byte 1 0
align 1
LABELV $96
byte 1 51
byte 1 0
align 1
LABELV $95
byte 1 103
byte 1 95
byte 1 113
byte 1 117
byte 1 97
byte 1 100
byte 1 102
byte 1 97
byte 1 99
byte 1 116
byte 1 111
byte 1 114
byte 1 0
align 1
LABELV $94
byte 1 49
byte 1 48
byte 1 48
byte 1 48
byte 1 0
align 1
LABELV $93
byte 1 103
byte 1 95
byte 1 107
byte 1 110
byte 1 111
byte 1 99
byte 1 107
byte 1 98
byte 1 97
byte 1 99
byte 1 107
byte 1 0
align 1
LABELV $92
byte 1 56
byte 1 48
byte 1 48
byte 1 0
align 1
LABELV $91
byte 1 103
byte 1 95
byte 1 103
byte 1 114
byte 1 97
byte 1 118
byte 1 105
byte 1 116
byte 1 121
byte 1 0
align 1
LABELV $90
byte 1 51
byte 1 50
byte 1 48
byte 1 0
align 1
LABELV $89
byte 1 103
byte 1 95
byte 1 115
byte 1 112
byte 1 101
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $88
byte 1 100
byte 1 101
byte 1 100
byte 1 105
byte 1 99
byte 1 97
byte 1 116
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $87
byte 1 103
byte 1 95
byte 1 110
byte 1 101
byte 1 101
byte 1 100
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 0
align 1
LABELV $86
byte 1 103
byte 1 95
byte 1 102
byte 1 105
byte 1 108
byte 1 116
byte 1 101
byte 1 114
byte 1 66
byte 1 97
byte 1 110
byte 1 0
align 1
LABELV $85
byte 1 103
byte 1 95
byte 1 98
byte 1 97
byte 1 110
byte 1 73
byte 1 80
byte 1 115
byte 1 0
align 1
LABELV $84
byte 1 103
byte 1 95
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 119
byte 1 111
byte 1 114
byte 1 100
byte 1 0
align 1
LABELV $83
byte 1 103
byte 1 95
byte 1 108
byte 1 111
byte 1 103
byte 1 83
byte 1 121
byte 1 110
byte 1 99
byte 1 0
align 1
LABELV $82
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 115
byte 1 46
byte 1 108
byte 1 111
byte 1 103
byte 1 0
align 1
LABELV $81
byte 1 103
byte 1 95
byte 1 108
byte 1 111
byte 1 103
byte 1 0
align 1
LABELV $80
byte 1 103
byte 1 95
byte 1 119
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 0
align 1
LABELV $79
byte 1 103
byte 1 95
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 70
byte 1 111
byte 1 114
byte 1 99
byte 1 101
byte 1 66
byte 1 97
byte 1 108
byte 1 97
byte 1 110
byte 1 99
byte 1 101
byte 1 0
align 1
LABELV $78
byte 1 49
byte 1 0
align 1
LABELV $77
byte 1 103
byte 1 95
byte 1 97
byte 1 117
byte 1 116
byte 1 111
byte 1 74
byte 1 111
byte 1 105
byte 1 110
byte 1 0
align 1
LABELV $76
byte 1 103
byte 1 95
byte 1 102
byte 1 114
byte 1 105
byte 1 101
byte 1 110
byte 1 100
byte 1 108
byte 1 121
byte 1 70
byte 1 105
byte 1 114
byte 1 101
byte 1 0
align 1
LABELV $75
byte 1 103
byte 1 95
byte 1 115
byte 1 121
byte 1 110
byte 1 99
byte 1 104
byte 1 114
byte 1 111
byte 1 110
byte 1 111
byte 1 117
byte 1 115
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $74
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $73
byte 1 116
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $72
byte 1 50
byte 1 48
byte 1 0
align 1
LABELV $71
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 0
align 1
LABELV $70
byte 1 100
byte 1 109
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 115
byte 1 0
align 1
LABELV $69
byte 1 103
byte 1 95
byte 1 109
byte 1 97
byte 1 120
byte 1 71
byte 1 97
byte 1 109
byte 1 101
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $68
byte 1 56
byte 1 0
align 1
LABELV $67
byte 1 115
byte 1 118
byte 1 95
byte 1 109
byte 1 97
byte 1 120
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $66
byte 1 48
byte 1 0
align 1
LABELV $65
byte 1 103
byte 1 95
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 116
byte 1 121
byte 1 112
byte 1 101
byte 1 0
align 1
LABELV $64
byte 1 51
byte 1 48
byte 1 0
align 1
LABELV $63
byte 1 115
byte 1 118
byte 1 95
byte 1 102
byte 1 112
byte 1 115
byte 1 0
align 1
LABELV $62
byte 1 109
byte 1 97
byte 1 112
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 0
align 1
LABELV $61
byte 1 0
align 1
LABELV $60
byte 1 115
byte 1 118
byte 1 95
byte 1 99
byte 1 104
byte 1 101
byte 1 97
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $59
byte 1 74
byte 1 117
byte 1 108
byte 1 32
byte 1 49
byte 1 52
byte 1 32
byte 1 50
byte 1 48
byte 1 50
byte 1 52
byte 1 0
align 1
LABELV $58
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 100
byte 1 97
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $57
byte 1 98
byte 1 97
byte 1 115
byte 1 101
byte 1 113
byte 1 51
byte 1 0
align 1
LABELV $56
byte 1 103
byte 1 97
byte 1 109
byte 1 101
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 0

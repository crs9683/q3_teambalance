data
export autoTeamBalanceActive
align 4
LABELV autoTeamBalanceActive
byte 4 1
export Team_InitGame
code
proc Team_InitGame 0 12
file "..\..\..\..\code\game\g_team.c"
line 26
;1:// Copyright (C) 1999-2000 Id Software, Inc.
;2://
;3:
;4:#include "g_local.h"
;5:
;6:int autoTeamBalanceActive = 1; // 1 for active, 0 for inactive
;7:
;8:typedef struct teamgame_s {
;9:	float			last_flag_capture;
;10:	int				last_capture_team;
;11:	flagStatus_t	redStatus;	// CTF
;12:	flagStatus_t	blueStatus;	// CTF
;13:	flagStatus_t	flagStatus;	// One Flag CTF
;14:	int				redTakenTime;
;15:	int				blueTakenTime;
;16:	int				redObeliskAttackedTime;
;17:	int				blueObeliskAttackedTime;
;18:} teamgame_t;
;19:
;20:teamgame_t teamgame;
;21:
;22:gentity_t	*neutralObelisk;
;23:
;24:static void Team_SetFlagStatus( team_t team, flagStatus_t status );
;25:
;26:void Team_InitGame( void ) {
line 27
;27:	memset(&teamgame, 0, sizeof teamgame);
ADDRGP4 teamgame
ARGP4
CNSTI4 0
ARGI4
CNSTI4 36
ARGI4
ADDRGP4 memset
CALLP4
pop
line 29
;28:
;29:	switch( g_gametype.integer ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 4
EQI4 $59
ADDRGP4 $57
JUMPV
LABELV $59
line 31
;30:	case GT_CTF:
;31:		teamgame.redStatus = -1; // Invalid to force update
ADDRGP4 teamgame+8
CNSTI4 -1
ASGNI4
line 32
;32:		Team_SetFlagStatus( TEAM_RED, FLAG_ATBASE );
CNSTI4 1
ARGI4
CNSTI4 0
ARGI4
ADDRGP4 Team_SetFlagStatus
CALLV
pop
line 33
;33:		teamgame.blueStatus = -1; // Invalid to force update
ADDRGP4 teamgame+12
CNSTI4 -1
ASGNI4
line 34
;34:		Team_SetFlagStatus( TEAM_BLUE, FLAG_ATBASE );
CNSTI4 2
ARGI4
CNSTI4 0
ARGI4
ADDRGP4 Team_SetFlagStatus
CALLV
pop
line 35
;35:		break;
line 43
;36:#ifdef MISSIONPACK
;37:	case GT_1FCTF:
;38:		teamgame.flagStatus = -1; // Invalid to force update
;39:		Team_SetFlagStatus( TEAM_FREE, FLAG_ATBASE );
;40:		break;
;41:#endif
;42:	default:
;43:		break;
LABELV $57
line 45
;44:	}
;45:}
LABELV $55
endproc Team_InitGame 0 12
export OtherTeam
proc OtherTeam 0 0
line 48
;46:
;47:
;48:int OtherTeam( team_t team ) {
line 49
;49:	if ( team == TEAM_RED )
ADDRFP4 0
INDIRI4
CNSTI4 1
NEI4 $63
line 50
;50:		return TEAM_BLUE;
CNSTI4 2
RETI4
ADDRGP4 $62
JUMPV
LABELV $63
line 51
;51:	else if ( team == TEAM_BLUE )
ADDRFP4 0
INDIRI4
CNSTI4 2
NEI4 $65
line 52
;52:		return TEAM_RED;
CNSTI4 1
RETI4
ADDRGP4 $62
JUMPV
LABELV $65
line 53
;53:	return team;
ADDRFP4 0
INDIRI4
RETI4
LABELV $62
endproc OtherTeam 0 0
export TeamName
proc TeamName 0 0
line 57
;54:}
;55:
;56:
;57:const char *TeamName( team_t team ) {
line 58
;58:	if ( team == TEAM_RED )
ADDRFP4 0
INDIRI4
CNSTI4 1
NEI4 $68
line 59
;59:		return "RED";
ADDRGP4 $70
RETP4
ADDRGP4 $67
JUMPV
LABELV $68
line 60
;60:	else if ( team == TEAM_BLUE )
ADDRFP4 0
INDIRI4
CNSTI4 2
NEI4 $71
line 61
;61:		return "BLUE";
ADDRGP4 $73
RETP4
ADDRGP4 $67
JUMPV
LABELV $71
line 62
;62:	else if ( team == TEAM_SPECTATOR )
ADDRFP4 0
INDIRI4
CNSTI4 3
NEI4 $74
line 63
;63:		return "SPECTATOR";
ADDRGP4 $76
RETP4
ADDRGP4 $67
JUMPV
LABELV $74
line 64
;64:	return "FREE";
ADDRGP4 $77
RETP4
LABELV $67
endproc TeamName 0 0
export OtherTeamName
proc OtherTeamName 0 0
line 68
;65:}
;66:
;67:
;68:const char *OtherTeamName( team_t team ) {
line 69
;69:	if ( team == TEAM_RED )
ADDRFP4 0
INDIRI4
CNSTI4 1
NEI4 $79
line 70
;70:		return "BLUE";
ADDRGP4 $73
RETP4
ADDRGP4 $78
JUMPV
LABELV $79
line 71
;71:	else if ( team == TEAM_BLUE )
ADDRFP4 0
INDIRI4
CNSTI4 2
NEI4 $81
line 72
;72:		return "RED";
ADDRGP4 $70
RETP4
ADDRGP4 $78
JUMPV
LABELV $81
line 73
;73:	else if ( team == TEAM_SPECTATOR )
ADDRFP4 0
INDIRI4
CNSTI4 3
NEI4 $83
line 74
;74:		return "SPECTATOR";
ADDRGP4 $76
RETP4
ADDRGP4 $78
JUMPV
LABELV $83
line 75
;75:	return "FREE";
ADDRGP4 $77
RETP4
LABELV $78
endproc OtherTeamName 0 0
export TeamColorString
proc TeamColorString 0 0
line 79
;76:}
;77:
;78:
;79:const char *TeamColorString( team_t team ) {
line 80
;80:	if ( team == TEAM_RED )
ADDRFP4 0
INDIRI4
CNSTI4 1
NEI4 $86
line 81
;81:		return S_COLOR_RED;
ADDRGP4 $88
RETP4
ADDRGP4 $85
JUMPV
LABELV $86
line 82
;82:	else if ( team == TEAM_BLUE )
ADDRFP4 0
INDIRI4
CNSTI4 2
NEI4 $89
line 83
;83:		return S_COLOR_BLUE;
ADDRGP4 $91
RETP4
ADDRGP4 $85
JUMPV
LABELV $89
line 84
;84:	else if ( team == TEAM_SPECTATOR )
ADDRFP4 0
INDIRI4
CNSTI4 3
NEI4 $92
line 85
;85:		return S_COLOR_YELLOW;
ADDRGP4 $94
RETP4
ADDRGP4 $85
JUMPV
LABELV $92
line 86
;86:	return S_COLOR_WHITE;
ADDRGP4 $95
RETP4
LABELV $85
endproc TeamColorString 0 0
export PrintMsg
proc PrintMsg 1048 12
line 91
;87:}
;88:
;89:
;90:// NULL for everyone
;91:void QDECL PrintMsg( gentity_t *ent, const char *fmt, ... ) {
line 96
;92:	char		msg[1024];
;93:	va_list		argptr;
;94:	char		*p;
;95:	
;96:	va_start (argptr,fmt);
ADDRLP4 1028
ADDRFP4 4+4
ASGNP4
line 97
;97:	if ( ED_vsprintf( msg, fmt, argptr ) >= sizeof( msg ) ) {
ADDRLP4 4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 1028
INDIRP4
ARGP4
ADDRLP4 1032
ADDRGP4 ED_vsprintf
CALLI4
ASGNI4
ADDRLP4 1032
INDIRI4
CVIU4 4
CNSTU4 1024
LTU4 $98
line 98
;98:		G_Error ( "PrintMsg overrun" );
ADDRGP4 $100
ARGP4
ADDRGP4 G_Error
CALLV
pop
line 99
;99:	}
LABELV $98
line 100
;100:	va_end (argptr);
ADDRLP4 1028
CNSTP4 0
ASGNP4
ADDRGP4 $102
JUMPV
LABELV $101
line 104
;101:
;102:	// double quotes are bad
;103:	while ((p = strchr(msg, '"')) != NULL)
;104:		*p = '\'';
ADDRLP4 0
INDIRP4
CNSTI1 39
ASGNI1
LABELV $102
line 103
ADDRLP4 4
ARGP4
CNSTI4 34
ARGI4
ADDRLP4 1036
ADDRGP4 strchr
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 1036
INDIRP4
ASGNP4
ADDRLP4 1036
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $101
line 106
;105:
;106:	trap_SendServerCommand ( ( (ent == NULL) ? -1 : ent-g_entities ), va("print \"%s\"", msg ));
ADDRGP4 $105
ARGP4
ADDRLP4 4
ARGP4
ADDRLP4 1044
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $106
ADDRLP4 1040
CNSTI4 -1
ASGNI4
ADDRGP4 $107
JUMPV
LABELV $106
ADDRLP4 1040
ADDRFP4 0
INDIRP4
CVPU4 4
ADDRGP4 g_entities
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 816
DIVI4
ASGNI4
LABELV $107
ADDRLP4 1040
INDIRI4
ARGI4
ADDRLP4 1044
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 107
;107:}
LABELV $96
endproc PrintMsg 1048 12
export TrackPlayerFrags
proc TrackPlayerFrags 16 4
line 116
;108:
;109:/*
;110:==============
;111:TrackPlayerFrags
;112:==============
;113:*/
;114:qboolean IsBot(int clientNum);
;115:
;116:void TrackPlayerFrags(void) {
line 119
;117:	int i;
;118:
;119:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $112
JUMPV
LABELV $109
line 120
;120:		if (level.clients[i].pers.connected != CON_CONNECTED) {
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
EQI4 $114
line 121
;121:			continue;
ADDRGP4 $110
JUMPV
LABELV $114
line 123
;122:		}
;123:		if (IsBot(i)) {
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 IsBot
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
EQI4 $116
line 124
;124:			continue;
ADDRGP4 $110
JUMPV
LABELV $116
line 127
;125:		}
;126:		// Assuming 'frags' is the field tracking player frags
;127:		level.clients[i].pers.frags = level.clients[i].ps.persistant[PERS_SCORE];
ADDRLP4 12
ADDRGP4 level
INDIRP4
ASGNP4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRLP4 12
INDIRP4
ADDP4
CNSTI4 624
ADDP4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRLP4 12
INDIRP4
ADDP4
CNSTI4 248
ADDP4
INDIRI4
ASGNI4
line 128
;128:	}
LABELV $110
line 119
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $112
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $109
line 129
;129:}
LABELV $108
endproc TrackPlayerFrags 16 4
export TrackPlayerTime
proc TrackPlayerTime 16 4
line 140
;130:
;131:
;132:/*
;133:==============
;134:TrackPlayerTime
;135:==============
;136:*/
;137:
;138:qboolean IsBot(int clientNum);
;139:
;140:void TrackPlayerTime(void) {
line 143
;141:	int i;
;142:
;143:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $122
JUMPV
LABELV $119
line 144
;144:		if (level.clients[i].pers.connected != CON_CONNECTED) {
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
EQI4 $124
line 145
;145:			continue;
ADDRGP4 $120
JUMPV
LABELV $124
line 147
;146:		}
;147:		if (IsBot(i)) {
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 IsBot
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
EQI4 $126
line 148
;148:			continue;
ADDRGP4 $120
JUMPV
LABELV $126
line 151
;149:		}
;150:		// Assuming 'enterTime' is the field for when the player joined
;151:		level.clients[i].pers.timeSpent = level.time - level.clients[i].pers.enterTime;
ADDRLP4 12
ADDRGP4 level
INDIRP4
ASGNP4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRLP4 12
INDIRP4
ADDP4
CNSTI4 620
ADDP4
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRLP4 12
INDIRP4
ADDP4
CNSTI4 548
ADDP4
INDIRI4
SUBI4
ASGNI4
line 152
;152:	}
LABELV $120
line 143
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $122
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $119
line 153
;153:}
LABELV $118
endproc TrackPlayerTime 16 4
data
align 4
LABELV nextTeamBalanceTime
byte 4 0
export CheckTeamBalance
code
proc CheckTeamBalance 4 0
line 169
;154:
;155:
;156:/*
;157:==============
;158:TeamAutoBalance
;159:==============
;160:*/
;161:#define TEAM_BALANCE_INTERVAL 3000 // Interval in milliseconds (3 seconds)
;162:
;163:extern qboolean IsBot(int clientNum);
;164:
;165:static int nextTeamBalanceTime = 0;
;166:
;167:void AutoTeamBalance(void);
;168:
;169:void CheckTeamBalance(void) {
line 170
;170:	int currentTime = level.time;
ADDRLP4 0
ADDRGP4 level+32
INDIRI4
ASGNI4
line 172
;171:
;172:	if (!autoTeamBalanceActive) {
ADDRGP4 autoTeamBalanceActive
INDIRI4
CNSTI4 0
NEI4 $131
line 173
;173:		return; // AutoTeamBalance is temporarily disabled
ADDRGP4 $129
JUMPV
LABELV $131
line 176
;174:	}
;175:
;176:	if (currentTime >= nextTeamBalanceTime) {
ADDRLP4 0
INDIRI4
ADDRGP4 nextTeamBalanceTime
INDIRI4
LTI4 $133
line 177
;177:		AutoTeamBalance();
ADDRGP4 AutoTeamBalance
CALLV
pop
line 178
;178:		nextTeamBalanceTime = currentTime + TEAM_BALANCE_INTERVAL;
ADDRGP4 nextTeamBalanceTime
ADDRLP4 0
INDIRI4
CNSTI4 3000
ADDI4
ASGNI4
line 179
;179:	}
LABELV $133
line 180
;180:}
LABELV $129
endproc CheckTeamBalance 4 0
export AutoTeamBalance
proc AutoTeamBalance 52 8
line 183
;181:
;182:
;183:void AutoTeamBalance(void) {
line 191
;184:	// Declare all variables at the beginning
;185:	int counts[TEAM_NUM_TEAMS];
;186:	int i;
;187:	int minFrags, minTimeSpent;
;188:	gclient_t* playerToMove;
;189:
;190:	// Initialize counts
;191:	counts[TEAM_BLUE] = 0;
ADDRLP4 16+8
CNSTI4 0
ASGNI4
line 192
;192:	counts[TEAM_RED] = 0;
ADDRLP4 16+4
CNSTI4 0
ASGNI4
line 195
;193:
;194:	// Count human players on each team, ignoring spectators and bots
;195:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $141
JUMPV
LABELV $138
line 196
;196:		if (level.clients[i].pers.connected != CON_CONNECTED) {
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
EQI4 $143
line 197
;197:			continue;
ADDRGP4 $139
JUMPV
LABELV $143
line 199
;198:		}
;199:		if (IsBot(i)) {
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 32
ADDRGP4 IsBot
CALLI4
ASGNI4
ADDRLP4 32
INDIRI4
CNSTI4 0
EQI4 $145
line 200
;200:			continue;
ADDRGP4 $139
JUMPV
LABELV $145
line 202
;201:		}
;202:		if (level.clients[i].sess.sessionTeam == TEAM_SPECTATOR) {
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
NEI4 $147
line 203
;203:			continue;
ADDRGP4 $139
JUMPV
LABELV $147
line 205
;204:		}
;205:		if (level.clients[i].sess.sessionTeam == TEAM_BLUE) {
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
NEI4 $149
line 206
;206:			counts[TEAM_BLUE]++;
ADDRLP4 16+8
ADDRLP4 16+8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 207
;207:		}
ADDRGP4 $150
JUMPV
LABELV $149
line 208
;208:		else if (level.clients[i].sess.sessionTeam == TEAM_RED) {
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
NEI4 $152
line 209
;209:			counts[TEAM_RED]++;
ADDRLP4 16+4
ADDRLP4 16+4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 210
;210:		}
LABELV $152
LABELV $150
line 211
;211:	}
LABELV $139
line 195
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $141
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $138
ADDRGP4 $156
JUMPV
LABELV $155
line 214
;212:
;213:	// Balance teams by moving human players based on the least amount of frags and time spent
;214:	while (counts[TEAM_BLUE] > counts[TEAM_RED] + 1) {
line 215
;215:		minFrags = INT_MAX;
ADDRLP4 4
CNSTI4 2147483647
ASGNI4
line 216
;216:		minTimeSpent = INT_MAX;
ADDRLP4 8
CNSTI4 2147483647
ASGNI4
line 217
;217:		playerToMove = NULL;
ADDRLP4 12
CNSTP4 0
ASGNP4
line 219
;218:
;219:		for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $163
JUMPV
LABELV $160
line 220
;220:			if (level.clients[i].pers.connected != CON_CONNECTED) {
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
EQI4 $165
line 221
;221:				continue;
ADDRGP4 $161
JUMPV
LABELV $165
line 223
;222:			}
;223:			if (IsBot(i)) {
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 32
ADDRGP4 IsBot
CALLI4
ASGNI4
ADDRLP4 32
INDIRI4
CNSTI4 0
EQI4 $167
line 224
;224:				continue;
ADDRGP4 $161
JUMPV
LABELV $167
line 226
;225:			}
;226:			if (level.clients[i].sess.sessionTeam == TEAM_BLUE) {
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
NEI4 $169
line 227
;227:				int frags = level.clients[i].ps.persistant[PERS_SCORE]; // Use the tracked frags
ADDRLP4 36
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
line 228
;228:				int timeSpent = level.clients[i].pers.enterTime; // Use the tracked time spent
ADDRLP4 40
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 548
ADDP4
INDIRI4
ASGNI4
line 231
;229:
;230:				// Find the player with the least frags
;231:				if (frags < minFrags || (frags == minFrags && timeSpent < minTimeSpent)) {
ADDRLP4 36
INDIRI4
ADDRLP4 4
INDIRI4
LTI4 $173
ADDRLP4 36
INDIRI4
ADDRLP4 4
INDIRI4
NEI4 $171
ADDRLP4 40
INDIRI4
ADDRLP4 8
INDIRI4
GEI4 $171
LABELV $173
line 232
;232:					minFrags = frags;
ADDRLP4 4
ADDRLP4 36
INDIRI4
ASGNI4
line 233
;233:					minTimeSpent = timeSpent;
ADDRLP4 8
ADDRLP4 40
INDIRI4
ASGNI4
line 234
;234:					playerToMove = &level.clients[i];
ADDRLP4 12
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 235
;235:				}
LABELV $171
line 236
;236:			}
LABELV $169
line 237
;237:		}
LABELV $161
line 219
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $163
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $160
line 239
;238:
;239:		if (playerToMove != NULL) {
ADDRLP4 12
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $180
line 240
;240:			SetTeam(&g_entities[playerToMove - level.clients], "red");
ADDRLP4 12
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
ADDRGP4 $176
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 241
;241:			counts[TEAM_BLUE]--;
ADDRLP4 16+8
ADDRLP4 16+8
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 242
;242:			counts[TEAM_RED]++;
ADDRLP4 16+4
ADDRLP4 16+4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 243
;243:		}
line 244
;244:		else {
line 245
;245:			break;
LABELV $175
line 247
;246:		}
;247:	}
LABELV $156
line 214
ADDRLP4 16+8
INDIRI4
ADDRLP4 16+4
INDIRI4
CNSTI4 1
ADDI4
GTI4 $155
ADDRGP4 $180
JUMPV
LABELV $179
line 249
;248:
;249:	while (counts[TEAM_RED] > counts[TEAM_BLUE] + 1) {
line 250
;250:		minFrags = INT_MAX;
ADDRLP4 4
CNSTI4 2147483647
ASGNI4
line 251
;251:		minTimeSpent = INT_MAX;
ADDRLP4 8
CNSTI4 2147483647
ASGNI4
line 252
;252:		playerToMove = NULL;
ADDRLP4 12
CNSTP4 0
ASGNP4
line 254
;253:
;254:		for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $187
JUMPV
LABELV $184
line 255
;255:			if (level.clients[i].pers.connected != CON_CONNECTED) {
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
EQI4 $189
line 256
;256:				continue;
ADDRGP4 $185
JUMPV
LABELV $189
line 258
;257:			}
;258:			if (IsBot(i)) {
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 32
ADDRGP4 IsBot
CALLI4
ASGNI4
ADDRLP4 32
INDIRI4
CNSTI4 0
EQI4 $191
line 259
;259:				continue;
ADDRGP4 $185
JUMPV
LABELV $191
line 261
;260:			}
;261:			if (level.clients[i].sess.sessionTeam == TEAM_RED) {
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
NEI4 $193
line 262
;262:				int frags = level.clients[i].ps.persistant[PERS_SCORE]; // Use the tracked frags
ADDRLP4 36
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
line 263
;263:				int timeSpent = level.clients[i].pers.enterTime; // Use the tracked time spent
ADDRLP4 40
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 548
ADDP4
INDIRI4
ASGNI4
line 266
;264:
;265:				// Find the player with the least frags
;266:				if (frags < minFrags || (frags == minFrags && timeSpent < minTimeSpent)) {
ADDRLP4 36
INDIRI4
ADDRLP4 4
INDIRI4
LTI4 $197
ADDRLP4 36
INDIRI4
ADDRLP4 4
INDIRI4
NEI4 $195
ADDRLP4 40
INDIRI4
ADDRLP4 8
INDIRI4
GEI4 $195
LABELV $197
line 267
;267:					minFrags = frags;
ADDRLP4 4
ADDRLP4 36
INDIRI4
ASGNI4
line 268
;268:					minTimeSpent = timeSpent;
ADDRLP4 8
ADDRLP4 40
INDIRI4
ASGNI4
line 269
;269:					playerToMove = &level.clients[i];
ADDRLP4 12
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 270
;270:				}
LABELV $195
line 271
;271:			}
LABELV $193
line 272
;272:		}
LABELV $185
line 254
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $187
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $184
line 274
;273:
;274:		if (playerToMove != NULL) {
ADDRLP4 12
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $181
line 275
;275:			SetTeam(&g_entities[playerToMove - level.clients], "blue");
ADDRLP4 12
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
ADDRGP4 $200
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 276
;276:			counts[TEAM_RED]--;
ADDRLP4 16+4
ADDRLP4 16+4
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 277
;277:			counts[TEAM_BLUE]++;
ADDRLP4 16+8
ADDRLP4 16+8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 278
;278:		}
line 279
;279:		else {
line 280
;280:			break;
LABELV $199
line 282
;281:		}
;282:	}
LABELV $180
line 249
ADDRLP4 16+4
INDIRI4
ADDRLP4 16+8
INDIRI4
CNSTI4 1
ADDI4
GTI4 $179
LABELV $181
line 283
;283:}
LABELV $135
endproc AutoTeamBalance 52 8
export GatherHumanPlayers
proc GatherHumanPlayers 12 4
line 286
;284:
;285:
;286:int GatherHumanPlayers(playerInfo_t* players) {
line 287
;287:	int numPlayers = 0;
ADDRLP4 4
CNSTI4 0
ASGNI4
line 289
;288:	int i;
;289:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $207
JUMPV
LABELV $204
line 290
;290:		if (level.clients[i].pers.connected != CON_CONNECTED) {
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
EQI4 $209
line 291
;291:			continue;
ADDRGP4 $205
JUMPV
LABELV $209
line 293
;292:		}
;293:		if (IsBot(i)) {
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 8
ADDRGP4 IsBot
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
EQI4 $211
line 294
;294:			continue;
ADDRGP4 $205
JUMPV
LABELV $211
line 296
;295:		}
;296:		players[numPlayers].clientNum = i;
ADDRLP4 4
INDIRI4
CNSTI4 3
LSHI4
ADDRFP4 0
INDIRP4
ADDP4
ADDRLP4 0
INDIRI4
ASGNI4
line 297
;297:		players[numPlayers].frags = level.clients[i].ps.persistant[PERS_SCORE];
ADDRLP4 4
INDIRI4
CNSTI4 3
LSHI4
ADDRFP4 0
INDIRP4
ADDP4
CNSTI4 4
ADDP4
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
line 298
;298:		numPlayers++;
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 299
;299:	}
LABELV $205
line 289
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $207
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $204
line 300
;300:	return numPlayers;
ADDRLP4 4
INDIRI4
RETI4
LABELV $203
endproc GatherHumanPlayers 12 4
export ShuffleTeams
proc ShuffleTeams 544 8
line 303
;301:}
;302:
;303:void ShuffleTeams(void) {
line 305
;304:
;305:	int originalAutoTeamBalanceState = autoTeamBalanceActive;
ADDRLP4 532
ADDRGP4 autoTeamBalanceActive
INDIRI4
ASGNI4
line 312
;306:	int i, j;
;307:	playerInfo_t players[MAX_CLIENTS];
;308:	int numPlayers;
;309:	playerInfo_t temp;
;310:
;311:	// Indicate that team shuffling is in progress
;312:	shuffleTeamsInProgress = 1;
ADDRGP4 shuffleTeamsInProgress
CNSTI4 1
ASGNI4
line 315
;313:
;314:	// Disable AutoTeamBalance
;315:	autoTeamBalanceActive = 0;
ADDRGP4 autoTeamBalanceActive
CNSTI4 0
ASGNI4
line 318
;316:
;317:	// Gather human players into the players array
;318:	numPlayers = GatherHumanPlayers(players);
ADDRLP4 4
ARGP4
ADDRLP4 536
ADDRGP4 GatherHumanPlayers
CALLI4
ASGNI4
ADDRLP4 528
ADDRLP4 536
INDIRI4
ASGNI4
line 321
;319:
;320:	// Randomly shuffle the players array
;321:	for (i = numPlayers - 1; i > 0; i--) {
ADDRLP4 0
ADDRLP4 528
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
ADDRGP4 $217
JUMPV
LABELV $214
line 322
;322:		j = rand() % (i + 1);
ADDRLP4 540
ADDRGP4 rand
CALLI4
ASGNI4
ADDRLP4 516
ADDRLP4 540
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
MODI4
ASGNI4
line 323
;323:		temp = players[i];
ADDRLP4 520
ADDRLP4 0
INDIRI4
CNSTI4 3
LSHI4
ADDRLP4 4
ADDP4
INDIRB
ASGNB 8
line 324
;324:		players[i] = players[j];
ADDRLP4 0
INDIRI4
CNSTI4 3
LSHI4
ADDRLP4 4
ADDP4
ADDRLP4 516
INDIRI4
CNSTI4 3
LSHI4
ADDRLP4 4
ADDP4
INDIRB
ASGNB 8
line 325
;325:		players[j] = temp;
ADDRLP4 516
INDIRI4
CNSTI4 3
LSHI4
ADDRLP4 4
ADDP4
ADDRLP4 520
INDIRB
ASGNB 8
line 326
;326:	}
LABELV $215
line 321
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
LABELV $217
ADDRLP4 0
INDIRI4
CNSTI4 0
GTI4 $214
line 329
;327:
;328:	// Set the players to teams alternately
;329:	for (i = 0; i < numPlayers; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $221
JUMPV
LABELV $218
line 330
;330:		if (i % 2 == 0) {
ADDRLP4 0
INDIRI4
CNSTI4 2
MODI4
CNSTI4 0
NEI4 $222
line 331
;331:			SetTeam(&g_entities[players[i].clientNum], "red");
ADDRLP4 0
INDIRI4
CNSTI4 3
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $176
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 332
;332:		}
ADDRGP4 $223
JUMPV
LABELV $222
line 333
;333:		else {
line 334
;334:			SetTeam(&g_entities[players[i].clientNum], "blue");
ADDRLP4 0
INDIRI4
CNSTI4 3
LSHI4
ADDRLP4 4
ADDP4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
ADDRGP4 $200
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 335
;335:		}
LABELV $223
line 336
;336:	}
LABELV $219
line 329
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $221
ADDRLP4 0
INDIRI4
ADDRLP4 528
INDIRI4
LTI4 $218
line 339
;337:
;338:	// Notify all clients that teams have been shuffled
;339:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $227
JUMPV
LABELV $224
line 340
;340:		if (level.clients[i].pers.connected == CON_CONNECTED) {
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
NEI4 $229
line 341
;341:			trap_SendServerCommand(i, "cp \"Teams have been shuffled!\"");
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 $231
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 342
;342:		}
LABELV $229
line 343
;343:	}
LABELV $225
line 339
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $227
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $224
line 346
;344:
;345:	// Restore the original AutoTeamBalance state
;346:	autoTeamBalanceActive = originalAutoTeamBalanceState;
ADDRGP4 autoTeamBalanceActive
ADDRLP4 532
INDIRI4
ASGNI4
line 349
;347:
;348:	// Indicate that team shuffling is complete
;349:	shuffleTeamsInProgress = 0;
ADDRGP4 shuffleTeamsInProgress
CNSTI4 0
ASGNI4
line 350
;350:}
LABELV $213
endproc ShuffleTeams 544 8
export AddTeamScore
proc AddTeamScore 40 8
line 361
;351:
;352:
;353:/*
;354:==============
;355:AddTeamScore
;356:
;357: used for gametype > GT_TEAM
;358: for gametype GT_TEAM the level.teamScores is updated in AddScore in g_combat.c
;359:==============
;360:*/
;361:void AddTeamScore( vec3_t origin, team_t team, int score ) {
line 366
;362:	int			eventParm;
;363:	int			otherTeam;
;364:	gentity_t	*te;
;365:
;366:	if ( score == 0 ) {
ADDRFP4 8
INDIRI4
CNSTI4 0
NEI4 $233
line 367
;367:		return;
ADDRGP4 $232
JUMPV
LABELV $233
line 370
;368:	}
;369:
;370:	eventParm = -1;
ADDRLP4 4
CNSTI4 -1
ASGNI4
line 371
;371:	otherTeam = OtherTeam( team );
ADDRFP4 4
INDIRI4
ARGI4
ADDRLP4 12
ADDRGP4 OtherTeam
CALLI4
ASGNI4
ADDRLP4 0
ADDRLP4 12
INDIRI4
ASGNI4
line 373
;372:
;373:	if ( level.teamScores[ team ] + score == level.teamScores[ otherTeam ] ) {
ADDRFP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
ADDRFP4 8
INDIRI4
ADDI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
NEI4 $235
line 375
;374:		//teams are tied sound
;375:		eventParm = GTS_TEAMS_ARE_TIED;
ADDRLP4 4
CNSTI4 12
ASGNI4
line 376
;376:	} else if ( level.teamScores[ team ] >= level.teamScores[ otherTeam ] &&
ADDRGP4 $236
JUMPV
LABELV $235
ADDRLP4 16
ADDRFP4 4
INDIRI4
ASGNI4
ADDRLP4 16
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
LTI4 $239
ADDRLP4 16
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
ADDRFP4 8
INDIRI4
ADDI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
GEI4 $239
line 377
;377:				level.teamScores[ team ] + score < level.teamScores[ otherTeam ] ) {
line 379
;378:		// other team took the lead sound (negative score)
;379:		eventParm = ( otherTeam == TEAM_RED ) ? GTS_REDTEAM_TOOK_LEAD : GTS_BLUETEAM_TOOK_LEAD;
ADDRLP4 0
INDIRI4
CNSTI4 1
NEI4 $246
ADDRLP4 24
CNSTI4 10
ASGNI4
ADDRGP4 $247
JUMPV
LABELV $246
ADDRLP4 24
CNSTI4 11
ASGNI4
LABELV $247
ADDRLP4 4
ADDRLP4 24
INDIRI4
ASGNI4
line 380
;380:	} else if ( level.teamScores[ team ] <= level.teamScores[ otherTeam ] &&
ADDRGP4 $240
JUMPV
LABELV $239
ADDRLP4 24
ADDRFP4 4
INDIRI4
ASGNI4
ADDRLP4 24
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
GTI4 $248
ADDRLP4 24
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
ADDRFP4 8
INDIRI4
ADDI4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
INDIRI4
LEI4 $248
line 381
;381:				level.teamScores[ team ] + score > level.teamScores[ otherTeam ] ) {
line 383
;382:		// this team took the lead sound
;383:		eventParm = ( team == TEAM_RED ) ? GTS_REDTEAM_TOOK_LEAD : GTS_BLUETEAM_TOOK_LEAD;
ADDRFP4 4
INDIRI4
CNSTI4 1
NEI4 $255
ADDRLP4 32
CNSTI4 10
ASGNI4
ADDRGP4 $256
JUMPV
LABELV $255
ADDRLP4 32
CNSTI4 11
ASGNI4
LABELV $256
ADDRLP4 4
ADDRLP4 32
INDIRI4
ASGNI4
line 384
;384:	} else if ( score > 0 && g_gametype.integer != GT_TEAM ) {
ADDRGP4 $249
JUMPV
LABELV $248
ADDRFP4 8
INDIRI4
CNSTI4 0
LEI4 $257
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
EQI4 $257
line 386
;385:		// team scored sound
;386:		eventParm = ( team == TEAM_RED ) ? GTS_REDTEAM_SCORED : GTS_BLUETEAM_SCORED;
ADDRFP4 4
INDIRI4
CNSTI4 1
NEI4 $261
ADDRLP4 32
CNSTI4 8
ASGNI4
ADDRGP4 $262
JUMPV
LABELV $261
ADDRLP4 32
CNSTI4 9
ASGNI4
LABELV $262
ADDRLP4 4
ADDRLP4 32
INDIRI4
ASGNI4
line 387
;387:	}
LABELV $257
LABELV $249
LABELV $240
LABELV $236
line 389
;388:
;389:	if ( eventParm != -1 ) {
ADDRLP4 4
INDIRI4
CNSTI4 -1
EQI4 $263
line 390
;390:		te = G_TempEntity(origin, EV_GLOBAL_TEAM_SOUND );
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 47
ARGI4
ADDRLP4 32
ADDRGP4 G_TempEntity
CALLP4
ASGNP4
ADDRLP4 8
ADDRLP4 32
INDIRP4
ASGNP4
line 391
;391:		te->r.svFlags |= SVF_BROADCAST;
ADDRLP4 36
ADDRLP4 8
INDIRP4
CNSTI4 424
ADDP4
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 32
BORI4
ASGNI4
line 392
;392:		te->s.eventParm = eventParm;
ADDRLP4 8
INDIRP4
CNSTI4 184
ADDP4
ADDRLP4 4
INDIRI4
ASGNI4
line 393
;393:	}
LABELV $263
line 395
;394:
;395:	level.teamScores[ team ] += score;
ADDRLP4 32
ADDRFP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+48
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
ADDRFP4 8
INDIRI4
ADDI4
ASGNI4
line 396
;396:}
LABELV $232
endproc AddTeamScore 40 8
export OnSameTeam
proc OnSameTeam 0 0
line 403
;397:
;398:/*
;399:==============
;400:OnSameTeam
;401:==============
;402:*/
;403:qboolean OnSameTeam( gentity_t *ent1, gentity_t *ent2 ) {
line 404
;404:	if ( !ent1->client || !ent2->client ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $269
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $267
LABELV $269
line 405
;405:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $266
JUMPV
LABELV $267
line 408
;406:	}
;407:
;408:	if ( g_gametype.integer < GT_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
GEI4 $270
line 409
;409:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $266
JUMPV
LABELV $270
line 412
;410:	}
;411:
;412:	if ( ent1->client->sess.sessionTeam == ent2->client->sess.sessionTeam ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
NEI4 $273
line 413
;413:		return qtrue;
CNSTI4 1
RETI4
ADDRGP4 $266
JUMPV
LABELV $273
line 416
;414:	}
;415:
;416:	return qfalse;
CNSTI4 0
RETI4
LABELV $266
endproc OnSameTeam 0 0
lit
align 1
LABELV ctfFlagStatusRemap
byte 1 48
byte 1 49
byte 1 42
byte 1 42
byte 1 50
align 1
LABELV oneFlagStatusRemap
byte 1 48
byte 1 49
byte 1 50
byte 1 51
byte 1 52
code
proc Team_SetFlagStatus 16 8
line 423
;417:}
;418:
;419:
;420:static char ctfFlagStatusRemap[] = { '0', '1', '*', '*', '2' };
;421:static char oneFlagStatusRemap[] = { '0', '1', '2', '3', '4' };
;422:
;423:static void Team_SetFlagStatus( team_t team, flagStatus_t status ) {
line 424
;424:	qboolean modified = qfalse;
ADDRLP4 0
CNSTI4 0
ASGNI4
line 426
;425:
;426:	switch( team ) {
ADDRLP4 4
ADDRFP4 0
INDIRI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
EQI4 $289
ADDRLP4 4
INDIRI4
CNSTI4 1
EQI4 $279
ADDRLP4 4
INDIRI4
CNSTI4 2
EQI4 $284
ADDRGP4 $275
JUMPV
LABELV $279
line 428
;427:	case TEAM_RED:	// CTF
;428:		if ( teamgame.redStatus != status ) {
ADDRGP4 teamgame+8
INDIRI4
ADDRFP4 4
INDIRI4
EQI4 $277
line 429
;429:			teamgame.redStatus = status;
ADDRGP4 teamgame+8
ADDRFP4 4
INDIRI4
ASGNI4
line 430
;430:			modified = qtrue;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 431
;431:		}
line 432
;432:		break;
ADDRGP4 $277
JUMPV
LABELV $284
line 435
;433:
;434:	case TEAM_BLUE:	// CTF
;435:		if ( teamgame.blueStatus != status ) {
ADDRGP4 teamgame+12
INDIRI4
ADDRFP4 4
INDIRI4
EQI4 $277
line 436
;436:			teamgame.blueStatus = status;
ADDRGP4 teamgame+12
ADDRFP4 4
INDIRI4
ASGNI4
line 437
;437:			modified = qtrue;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 438
;438:		}
line 439
;439:		break;
ADDRGP4 $277
JUMPV
LABELV $289
line 442
;440:
;441:	case TEAM_FREE:	// One Flag CTF
;442:		if ( teamgame.flagStatus != status ) {
ADDRGP4 teamgame+16
INDIRI4
ADDRFP4 4
INDIRI4
EQI4 $277
line 443
;443:			teamgame.flagStatus = status;
ADDRGP4 teamgame+16
ADDRFP4 4
INDIRI4
ASGNI4
line 444
;444:			modified = qtrue;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 445
;445:		}
line 446
;446:		break;
line 449
;447:
;448:	default:
;449:		return;
LABELV $277
line 452
;450:	}
;451:
;452:	if ( modified ) {
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $294
line 455
;453:		char st[4];
;454:
;455:		if ( g_gametype.integer == GT_CTF ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 4
NEI4 $296
line 456
;456:			st[0] = ctfFlagStatusRemap[teamgame.redStatus];
ADDRLP4 12
ADDRGP4 teamgame+8
INDIRI4
ADDRGP4 ctfFlagStatusRemap
ADDP4
INDIRI1
ASGNI1
line 457
;457:			st[1] = ctfFlagStatusRemap[teamgame.blueStatus];
ADDRLP4 12+1
ADDRGP4 teamgame+12
INDIRI4
ADDRGP4 ctfFlagStatusRemap
ADDP4
INDIRI1
ASGNI1
line 458
;458:			st[2] = '\0';
ADDRLP4 12+2
CNSTI1 0
ASGNI1
line 459
;459:		} else {	// GT_1FCTF
ADDRGP4 $297
JUMPV
LABELV $296
line 460
;460:			st[0] = oneFlagStatusRemap[teamgame.flagStatus];
ADDRLP4 12
ADDRGP4 teamgame+16
INDIRI4
ADDRGP4 oneFlagStatusRemap
ADDP4
INDIRI1
ASGNI1
line 461
;461:			st[1] = '\0';
ADDRLP4 12+1
CNSTI1 0
ASGNI1
line 462
;462:		}
LABELV $297
line 464
;463:
;464:		trap_SetConfigstring( CS_FLAGSTATUS, st );
CNSTI4 23
ARGI4
ADDRLP4 12
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 465
;465:	}
LABELV $294
line 466
;466:}
LABELV $275
endproc Team_SetFlagStatus 16 8
export Team_CheckDroppedItem
proc Team_CheckDroppedItem 0 8
line 469
;467:
;468:
;469:void Team_CheckDroppedItem( gentity_t *dropped ) {
line 470
;470:	if( dropped->item->giTag == PW_REDFLAG ) {
ADDRFP4 0
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 7
NEI4 $306
line 471
;471:		Team_SetFlagStatus( TEAM_RED, FLAG_DROPPED );
CNSTI4 1
ARGI4
CNSTI4 4
ARGI4
ADDRGP4 Team_SetFlagStatus
CALLV
pop
line 472
;472:	}
ADDRGP4 $307
JUMPV
LABELV $306
line 473
;473:	else if( dropped->item->giTag == PW_BLUEFLAG ) {
ADDRFP4 0
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 8
NEI4 $308
line 474
;474:		Team_SetFlagStatus( TEAM_BLUE, FLAG_DROPPED );
CNSTI4 2
ARGI4
CNSTI4 4
ARGI4
ADDRGP4 Team_SetFlagStatus
CALLV
pop
line 475
;475:	}
ADDRGP4 $309
JUMPV
LABELV $308
line 476
;476:	else if( dropped->item->giTag == PW_NEUTRALFLAG ) {
ADDRFP4 0
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 9
NEI4 $310
line 477
;477:		Team_SetFlagStatus( TEAM_FREE, FLAG_DROPPED );
CNSTI4 0
ARGI4
CNSTI4 4
ARGI4
ADDRGP4 Team_SetFlagStatus
CALLV
pop
line 478
;478:	}
LABELV $310
LABELV $309
LABELV $307
line 479
;479:}
LABELV $305
endproc Team_CheckDroppedItem 0 8
proc Team_ForceGesture 12 0
line 487
;480:
;481:
;482:/*
;483:================
;484:Team_ForceGesture
;485:================
;486:*/
;487:static void Team_ForceGesture( team_t team ) {
line 491
;488:	int i;
;489:	gentity_t *ent;
;490:
;491:	for ( i = 0; i < level.maxclients; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $316
JUMPV
LABELV $313
line 492
;492:		ent = &g_entities[i];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 493
;493:		if ( !ent->inuse )
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $318
line 494
;494:			continue;
ADDRGP4 $314
JUMPV
LABELV $318
line 495
;495:		if ( !ent->client )
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $320
line 496
;496:			continue;
ADDRGP4 $314
JUMPV
LABELV $320
line 497
;497:		if ( ent->client->sess.sessionTeam != team )
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRI4
EQI4 $322
line 498
;498:			continue;
ADDRGP4 $314
JUMPV
LABELV $322
line 500
;499:		//
;500:		ent->flags |= FL_FORCE_GESTURE;
ADDRLP4 8
ADDRLP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 32768
BORI4
ASGNI4
line 501
;501:	}
LABELV $314
line 491
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $316
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $313
line 502
;502:}
LABELV $312
endproc Team_ForceGesture 12 0
export Team_FragBonuses
proc Team_FragBonuses 184 16
line 515
;503:
;504:
;505:/*
;506:================
;507:Team_FragBonuses
;508:
;509:Calculate the bonuses for flag defense, flag carrier defense, etc.
;510:Note that bonuses are not cumulative.  You get one, they are in importance
;511:order.
;512:================
;513:*/
;514:void Team_FragBonuses(gentity_t *targ, gentity_t *inflictor, gentity_t *attacker)
;515:{
line 521
;516:	int i;
;517:	gentity_t *ent;
;518:	int flag_pw, enemy_flag_pw;
;519:	int otherteam;
;520:	int tokens;
;521:	gentity_t *flag, *carrier = NULL;
ADDRLP4 4
CNSTP4 0
ASGNP4
line 527
;522:	char *c;
;523:	vec3_t v1, v2;
;524:	int team;
;525:
;526:	// no bonus for fragging yourself or team mates
;527:	if (!targ->client || !attacker->client || targ == attacker || OnSameTeam(targ, attacker))
ADDRLP4 64
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 64
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $329
ADDRLP4 68
ADDRFP4 8
INDIRP4
ASGNP4
ADDRLP4 68
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $329
ADDRLP4 64
INDIRP4
CVPU4 4
ADDRLP4 68
INDIRP4
CVPU4 4
EQU4 $329
ADDRLP4 64
INDIRP4
ARGP4
ADDRLP4 68
INDIRP4
ARGP4
ADDRLP4 72
ADDRGP4 OnSameTeam
CALLI4
ASGNI4
ADDRLP4 72
INDIRI4
CNSTI4 0
EQI4 $325
LABELV $329
line 528
;528:		return;
ADDRGP4 $324
JUMPV
LABELV $325
line 530
;529:
;530:	team = targ->client->sess.sessionTeam;
ADDRLP4 52
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ASGNI4
line 531
;531:	otherteam = OtherTeam(targ->client->sess.sessionTeam);
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ARGI4
ADDRLP4 76
ADDRGP4 OtherTeam
CALLI4
ASGNI4
ADDRLP4 20
ADDRLP4 76
INDIRI4
ASGNI4
line 532
;532:	if (otherteam < 0)
ADDRLP4 20
INDIRI4
CNSTI4 0
GEI4 $330
line 533
;533:		return; // whoever died isn't on a team
ADDRGP4 $324
JUMPV
LABELV $330
line 536
;534:
;535:	// same team, if the flag at base, check to he has the enemy flag
;536:	if (team == TEAM_RED) {
ADDRLP4 52
INDIRI4
CNSTI4 1
NEI4 $332
line 537
;537:		flag_pw = PW_REDFLAG;
ADDRLP4 16
CNSTI4 7
ASGNI4
line 538
;538:		enemy_flag_pw = PW_BLUEFLAG;
ADDRLP4 60
CNSTI4 8
ASGNI4
line 539
;539:	} else {
ADDRGP4 $333
JUMPV
LABELV $332
line 540
;540:		flag_pw = PW_BLUEFLAG;
ADDRLP4 16
CNSTI4 8
ASGNI4
line 541
;541:		enemy_flag_pw = PW_REDFLAG;
ADDRLP4 60
CNSTI4 7
ASGNI4
line 542
;542:	}
LABELV $333
line 551
;543:
;544:#ifdef MISSIONPACK
;545:	if (g_gametype.integer == GT_1FCTF) {
;546:		enemy_flag_pw = PW_NEUTRALFLAG;
;547:	} 
;548:#endif
;549:
;550:	// did the attacker frag the flag carrier?
;551:	tokens = 0;
ADDRLP4 56
CNSTI4 0
ASGNI4
line 557
;552:#ifdef MISSIONPACK
;553:	if( g_gametype.integer == GT_HARVESTER ) {
;554:		tokens = targ->client->ps.generic1;
;555:	}
;556:#endif
;557:	if (targ->client->ps.powerups[enemy_flag_pw]) {
ADDRLP4 60
INDIRI4
CNSTI4 2
LSHI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 312
ADDP4
ADDP4
INDIRI4
CNSTI4 0
EQI4 $334
line 558
;558:		attacker->client->pers.teamState.lastfraggedcarrier = level.time;
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 596
ADDP4
ADDRGP4 level+32
INDIRI4
CVIF4 4
ASGNF4
line 559
;559:		AddScore(attacker, targ->r.currentOrigin, CTF_FRAG_CARRIER_BONUS);
ADDRFP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 560
;560:		attacker->client->pers.teamState.fragcarrier++;
ADDRLP4 80
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 576
ADDP4
ASGNP4
ADDRLP4 80
INDIRP4
ADDRLP4 80
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 561
;561:		PrintMsg(NULL, "%s" S_COLOR_WHITE " fragged %s's flag carrier!\n",
ADDRLP4 52
INDIRI4
ARGI4
ADDRLP4 84
ADDRGP4 TeamName
CALLP4
ASGNP4
CNSTP4 0
ARGP4
ADDRGP4 $337
ARGP4
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 84
INDIRP4
ARGP4
ADDRGP4 PrintMsg
CALLV
pop
line 566
;562:			attacker->client->pers.netname, TeamName(team));
;563:
;564:		// the target had the flag, clear the hurt carrier
;565:		// field on the other team
;566:		for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $341
JUMPV
LABELV $338
line 567
;567:			ent = g_entities + i;
ADDRLP4 12
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 568
;568:			if (ent->inuse && ent->client->sess.sessionTeam == otherteam)
ADDRLP4 12
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $343
ADDRLP4 12
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRLP4 20
INDIRI4
NEI4 $343
line 569
;569:				ent->client->pers.teamState.lasthurtcarrier = 0;
ADDRLP4 12
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
CNSTF4 0
ASGNF4
LABELV $343
line 570
;570:		}
LABELV $339
line 566
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $341
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $338
line 571
;571:		return;
ADDRGP4 $324
JUMPV
LABELV $334
line 575
;572:	}
;573:
;574:	// did the attacker frag a head carrier? other->client->ps.generic1
;575:	if (tokens) {
ADDRLP4 56
INDIRI4
CNSTI4 0
EQI4 $345
line 576
;576:		attacker->client->pers.teamState.lastfraggedcarrier = level.time;
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 596
ADDP4
ADDRGP4 level+32
INDIRI4
CVIF4 4
ASGNF4
line 577
;577:		AddScore(attacker, targ->r.currentOrigin, CTF_FRAG_CARRIER_BONUS * tokens * tokens);
ADDRFP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRLP4 56
INDIRI4
CNSTI4 1
LSHI4
ADDRLP4 56
INDIRI4
MULI4
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 578
;578:		attacker->client->pers.teamState.fragcarrier++;
ADDRLP4 84
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 576
ADDP4
ASGNP4
ADDRLP4 84
INDIRP4
ADDRLP4 84
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 579
;579:		PrintMsg(NULL, "%s" S_COLOR_WHITE " fragged %s's skull carrier!\n",
ADDRLP4 52
INDIRI4
ARGI4
ADDRLP4 88
ADDRGP4 TeamName
CALLP4
ASGNP4
CNSTP4 0
ARGP4
ADDRGP4 $348
ARGP4
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 88
INDIRP4
ARGP4
ADDRGP4 PrintMsg
CALLV
pop
line 584
;580:			attacker->client->pers.netname, TeamName(team));
;581:
;582:		// the target had the flag, clear the hurt carrier
;583:		// field on the other team
;584:		for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $352
JUMPV
LABELV $349
line 585
;585:			ent = g_entities + i;
ADDRLP4 12
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 586
;586:			if (ent->inuse && ent->client->sess.sessionTeam == otherteam)
ADDRLP4 12
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $354
ADDRLP4 12
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRLP4 20
INDIRI4
NEI4 $354
line 587
;587:				ent->client->pers.teamState.lasthurtcarrier = 0;
ADDRLP4 12
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
CNSTF4 0
ASGNF4
LABELV $354
line 588
;588:		}
LABELV $350
line 584
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $352
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $349
line 589
;589:		return;
ADDRGP4 $324
JUMPV
LABELV $345
line 592
;590:	}
;591:
;592:	if (targ->client->pers.teamState.lasthurtcarrier &&
ADDRLP4 80
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 80
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
INDIRF4
CNSTF4 0
EQF4 $356
ADDRGP4 level+32
INDIRI4
CVIF4 4
ADDRLP4 80
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
INDIRF4
SUBF4
CNSTF4 1174011904
GEF4 $356
ADDRLP4 16
INDIRI4
CNSTI4 2
LSHI4
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 312
ADDP4
ADDP4
INDIRI4
CNSTI4 0
NEI4 $356
line 594
;593:		level.time - targ->client->pers.teamState.lasthurtcarrier < CTF_CARRIER_DANGER_PROTECT_TIMEOUT &&
;594:		!attacker->client->ps.powerups[flag_pw]) {
line 597
;595:		// attacker is on the same team as the flag carrier and
;596:		// fragged a guy who hurt our flag carrier
;597:		AddScore(attacker, targ->r.currentOrigin, CTF_CARRIER_DANGER_PROTECT_BONUS);
ADDRFP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 599
;598:
;599:		attacker->client->pers.teamState.carrierdefense++;
ADDRLP4 84
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 568
ADDP4
ASGNP4
ADDRLP4 84
INDIRP4
ADDRLP4 84
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 600
;600:		targ->client->pers.teamState.lasthurtcarrier = 0;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
CNSTF4 0
ASGNF4
line 602
;601:
;602:		attacker->client->ps.persistant[PERS_DEFEND_COUNT]++;
ADDRLP4 88
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 292
ADDP4
ASGNP4
ADDRLP4 88
INDIRP4
ADDRLP4 88
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 603
;603:		team = attacker->client->sess.sessionTeam;
ADDRLP4 52
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ASGNI4
line 605
;604:		// add the sprite over the player's head
;605:		attacker->client->ps.eFlags &= ~(EF_AWARD_IMPRESSIVE | EF_AWARD_EXCELLENT | EF_AWARD_GAUNTLET | EF_AWARD_ASSIST | EF_AWARD_DEFEND | EF_AWARD_CAP );
ADDRLP4 92
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 92
INDIRP4
ADDRLP4 92
INDIRP4
INDIRI4
CNSTI4 -231497
BANDI4
ASGNI4
line 606
;606:		attacker->client->ps.eFlags |= EF_AWARD_DEFEND;
ADDRLP4 96
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 96
INDIRP4
ADDRLP4 96
INDIRP4
INDIRI4
CNSTI4 65536
BORI4
ASGNI4
line 607
;607:		attacker->client->rewardTime = level.time + REWARD_SPRITE_TIME;
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 764
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 2000
ADDI4
ASGNI4
line 609
;608:
;609:		return;
ADDRGP4 $324
JUMPV
LABELV $356
line 612
;610:	}
;611:
;612:	if (targ->client->pers.teamState.lasthurtcarrier &&
ADDRLP4 84
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 84
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
INDIRF4
CNSTF4 0
EQF4 $360
ADDRGP4 level+32
INDIRI4
CVIF4 4
ADDRLP4 84
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
INDIRF4
SUBF4
CNSTF4 1174011904
GEF4 $360
line 613
;613:		level.time - targ->client->pers.teamState.lasthurtcarrier < CTF_CARRIER_DANGER_PROTECT_TIMEOUT) {
line 615
;614:		// attacker is on the same team as the skull carrier and
;615:		AddScore(attacker, targ->r.currentOrigin, CTF_CARRIER_DANGER_PROTECT_BONUS);
ADDRFP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 617
;616:
;617:		attacker->client->pers.teamState.carrierdefense++;
ADDRLP4 88
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 568
ADDP4
ASGNP4
ADDRLP4 88
INDIRP4
ADDRLP4 88
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 618
;618:		targ->client->pers.teamState.lasthurtcarrier = 0;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
CNSTF4 0
ASGNF4
line 620
;619:
;620:		attacker->client->ps.persistant[PERS_DEFEND_COUNT]++;
ADDRLP4 92
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 292
ADDP4
ASGNP4
ADDRLP4 92
INDIRP4
ADDRLP4 92
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 621
;621:		team = attacker->client->sess.sessionTeam;
ADDRLP4 52
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ASGNI4
line 623
;622:		// add the sprite over the player's head
;623:		attacker->client->ps.eFlags &= ~(EF_AWARD_IMPRESSIVE | EF_AWARD_EXCELLENT | EF_AWARD_GAUNTLET | EF_AWARD_ASSIST | EF_AWARD_DEFEND | EF_AWARD_CAP );
ADDRLP4 96
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 96
INDIRP4
ADDRLP4 96
INDIRP4
INDIRI4
CNSTI4 -231497
BANDI4
ASGNI4
line 624
;624:		attacker->client->ps.eFlags |= EF_AWARD_DEFEND;
ADDRLP4 100
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 100
INDIRP4
ADDRLP4 100
INDIRP4
INDIRI4
CNSTI4 65536
BORI4
ASGNI4
line 625
;625:		attacker->client->rewardTime = level.time + REWARD_SPRITE_TIME;
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 764
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 2000
ADDI4
ASGNI4
line 627
;626:
;627:		return;
ADDRGP4 $324
JUMPV
LABELV $360
line 654
;628:	}
;629:
;630:	// flag and flag carrier area defense bonuses
;631:
;632:	// we have to find the flag and carrier entities
;633:
;634:#ifdef MISSIONPACK	
;635:	if( g_gametype.integer == GT_OBELISK ) {
;636:		// find the team obelisk
;637:		switch (attacker->client->sess.sessionTeam) {
;638:		case TEAM_RED:
;639:			c = "team_redobelisk";
;640:			break;
;641:		case TEAM_BLUE:
;642:			c = "team_blueobelisk";
;643:			break;		
;644:		default:
;645:			return;
;646:		}
;647:		
;648:	} else if (g_gametype.integer == GT_HARVESTER ) {
;649:		// find the center obelisk
;650:		c = "team_neutralobelisk";
;651:	} else {
;652:#endif
;653:	// find the flag
;654:	switch (attacker->client->sess.sessionTeam) {
ADDRLP4 88
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ASGNI4
ADDRLP4 88
INDIRI4
CNSTI4 1
EQI4 $367
ADDRLP4 88
INDIRI4
CNSTI4 2
EQI4 $369
ADDRGP4 $324
JUMPV
LABELV $367
line 656
;655:	case TEAM_RED:
;656:		c = "team_CTF_redflag";
ADDRLP4 24
ADDRGP4 $368
ASGNP4
line 657
;657:		break;
ADDRGP4 $365
JUMPV
LABELV $369
line 659
;658:	case TEAM_BLUE:
;659:		c = "team_CTF_blueflag";
ADDRLP4 24
ADDRGP4 $370
ASGNP4
line 660
;660:		break;		
line 662
;661:	default:
;662:		return;
LABELV $365
line 665
;663:	}
;664:	// find attacker's team's flag carrier
;665:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $374
JUMPV
LABELV $371
line 666
;666:		carrier = g_entities + i;
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 667
;667:		if (carrier->inuse && carrier->client->ps.powerups[flag_pw])
ADDRLP4 4
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $376
ADDRLP4 16
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 312
ADDP4
ADDP4
INDIRI4
CNSTI4 0
EQI4 $376
line 668
;668:			break;
ADDRGP4 $373
JUMPV
LABELV $376
line 669
;669:		carrier = NULL;
ADDRLP4 4
CNSTP4 0
ASGNP4
line 670
;670:	}
LABELV $372
line 665
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $374
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $371
LABELV $373
line 674
;671:#ifdef MISSIONPACK
;672:	}
;673:#endif
;674:	flag = NULL;
ADDRLP4 8
CNSTP4 0
ASGNP4
ADDRGP4 $379
JUMPV
LABELV $378
line 675
;675:	while ((flag = G_Find (flag, FOFS(classname), c)) != NULL) {
line 676
;676:		if (!(flag->flags & FL_DROPPED_ITEM))
ADDRLP4 8
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 4096
BANDI4
CNSTI4 0
NEI4 $381
line 677
;677:			break;
ADDRGP4 $380
JUMPV
LABELV $381
line 678
;678:	}
LABELV $379
line 675
ADDRLP4 8
INDIRP4
ARGP4
CNSTI4 524
ARGI4
ADDRLP4 24
INDIRP4
ARGP4
ADDRLP4 96
ADDRGP4 G_Find
CALLP4
ASGNP4
ADDRLP4 8
ADDRLP4 96
INDIRP4
ASGNP4
ADDRLP4 96
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $378
LABELV $380
line 680
;679:
;680:	if (!flag)
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $383
line 681
;681:		return; // can't find attacker's flag
ADDRGP4 $324
JUMPV
LABELV $383
line 686
;682:
;683:	// ok we have the attackers flag and a pointer to the carrier
;684:
;685:	// check to see if we are defending the base's flag
;686:	VectorSubtract(targ->r.currentOrigin, flag->r.currentOrigin, v1);
ADDRLP4 100
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 28
ADDRLP4 100
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
ADDRLP4 8
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 28+4
ADDRLP4 100
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
ADDRLP4 8
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 28+8
ADDRFP4 0
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
ADDRLP4 8
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
SUBF4
ASGNF4
line 687
;687:	VectorSubtract(attacker->r.currentOrigin, flag->r.currentOrigin, v2);
ADDRLP4 108
ADDRFP4 8
INDIRP4
ASGNP4
ADDRLP4 40
ADDRLP4 108
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
ADDRLP4 8
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 40+4
ADDRLP4 108
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
ADDRLP4 8
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 40+8
ADDRFP4 8
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
ADDRLP4 8
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
SUBF4
ASGNF4
line 689
;688:
;689:	if ( ( ( VectorLength(v1) < CTF_TARGET_PROTECT_RADIUS &&
ADDRLP4 28
ARGP4
ADDRLP4 116
ADDRGP4 VectorLength
CALLF4
ASGNF4
ADDRLP4 116
INDIRF4
CNSTF4 1148846080
GEF4 $392
ADDRLP4 8
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRLP4 120
ADDRGP4 trap_InPVS
CALLI4
ASGNI4
ADDRLP4 120
INDIRI4
CNSTI4 0
NEI4 $391
LABELV $392
ADDRLP4 40
ARGP4
ADDRLP4 124
ADDRGP4 VectorLength
CALLF4
ASGNF4
ADDRLP4 124
INDIRF4
CNSTF4 1148846080
GEF4 $389
ADDRLP4 8
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRFP4 8
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRLP4 128
ADDRGP4 trap_InPVS
CALLI4
ASGNI4
ADDRLP4 128
INDIRI4
CNSTI4 0
EQI4 $389
LABELV $391
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
EQI4 $389
line 693
;690:		trap_InPVS(flag->r.currentOrigin, targ->r.currentOrigin ) ) ||
;691:		( VectorLength(v2) < CTF_TARGET_PROTECT_RADIUS &&
;692:		trap_InPVS(flag->r.currentOrigin, attacker->r.currentOrigin ) ) ) &&
;693:		attacker->client->sess.sessionTeam != targ->client->sess.sessionTeam) {
line 696
;694:
;695:		// we defended the base flag
;696:		AddScore(attacker, targ->r.currentOrigin, CTF_FLAG_DEFENSE_BONUS);
ADDRFP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 697
;697:		attacker->client->pers.teamState.basedefense++;
ADDRLP4 132
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 564
ADDP4
ASGNP4
ADDRLP4 132
INDIRP4
ADDRLP4 132
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 699
;698:
;699:		attacker->client->ps.persistant[PERS_DEFEND_COUNT]++;
ADDRLP4 136
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 292
ADDP4
ASGNP4
ADDRLP4 136
INDIRP4
ADDRLP4 136
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 701
;700:		// add the sprite over the player's head
;701:		attacker->client->ps.eFlags &= ~(EF_AWARD_IMPRESSIVE | EF_AWARD_EXCELLENT | EF_AWARD_GAUNTLET | EF_AWARD_ASSIST | EF_AWARD_DEFEND | EF_AWARD_CAP );
ADDRLP4 140
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 140
INDIRP4
ADDRLP4 140
INDIRP4
INDIRI4
CNSTI4 -231497
BANDI4
ASGNI4
line 702
;702:		attacker->client->ps.eFlags |= EF_AWARD_DEFEND;
ADDRLP4 144
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 144
INDIRP4
ADDRLP4 144
INDIRP4
INDIRI4
CNSTI4 65536
BORI4
ASGNI4
line 703
;703:		attacker->client->rewardTime = level.time + REWARD_SPRITE_TIME;
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 764
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 2000
ADDI4
ASGNI4
line 705
;704:
;705:		return;
ADDRGP4 $324
JUMPV
LABELV $389
line 708
;706:	}
;707:
;708:	if (carrier && carrier != attacker) {
ADDRLP4 132
ADDRLP4 4
INDIRP4
CVPU4 4
ASGNU4
ADDRLP4 132
INDIRU4
CNSTU4 0
EQU4 $394
ADDRLP4 132
INDIRU4
ADDRFP4 8
INDIRP4
CVPU4 4
EQU4 $394
line 709
;709:		VectorSubtract(targ->r.currentOrigin, carrier->r.currentOrigin, v1);
ADDRLP4 136
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 28
ADDRLP4 136
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
ADDRLP4 4
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 28+4
ADDRLP4 136
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
ADDRLP4 4
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 28+8
ADDRFP4 0
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
ADDRLP4 4
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
SUBF4
ASGNF4
line 710
;710:		VectorSubtract(attacker->r.currentOrigin, carrier->r.currentOrigin, v1);
ADDRLP4 144
ADDRFP4 8
INDIRP4
ASGNP4
ADDRLP4 28
ADDRLP4 144
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
ADDRLP4 4
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 28+4
ADDRLP4 144
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
ADDRLP4 4
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 28+8
ADDRFP4 8
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
ADDRLP4 4
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
SUBF4
ASGNF4
line 712
;711:
;712:		if ( ( ( VectorLength(v1) < CTF_ATTACKER_PROTECT_RADIUS &&
ADDRLP4 28
ARGP4
ADDRLP4 152
ADDRGP4 VectorLength
CALLF4
ASGNF4
ADDRLP4 152
INDIRF4
CNSTF4 1148846080
GEF4 $403
ADDRLP4 4
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRLP4 156
ADDRGP4 trap_InPVS
CALLI4
ASGNI4
ADDRLP4 156
INDIRI4
CNSTI4 0
NEI4 $402
LABELV $403
ADDRLP4 40
ARGP4
ADDRLP4 160
ADDRGP4 VectorLength
CALLF4
ASGNF4
ADDRLP4 160
INDIRF4
CNSTF4 1148846080
GEF4 $400
ADDRLP4 4
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRFP4 8
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRLP4 164
ADDRGP4 trap_InPVS
CALLI4
ASGNI4
ADDRLP4 164
INDIRI4
CNSTI4 0
EQI4 $400
LABELV $402
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
EQI4 $400
line 716
;713:			trap_InPVS(carrier->r.currentOrigin, targ->r.currentOrigin ) ) ||
;714:			( VectorLength(v2) < CTF_ATTACKER_PROTECT_RADIUS &&
;715:				trap_InPVS(carrier->r.currentOrigin, attacker->r.currentOrigin ) ) ) &&
;716:			attacker->client->sess.sessionTeam != targ->client->sess.sessionTeam) {
line 717
;717:			AddScore(attacker, targ->r.currentOrigin, CTF_CARRIER_PROTECT_BONUS);
ADDRFP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 718
;718:			attacker->client->pers.teamState.carrierdefense++;
ADDRLP4 168
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 568
ADDP4
ASGNP4
ADDRLP4 168
INDIRP4
ADDRLP4 168
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 720
;719:
;720:			attacker->client->ps.persistant[PERS_DEFEND_COUNT]++;
ADDRLP4 172
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 292
ADDP4
ASGNP4
ADDRLP4 172
INDIRP4
ADDRLP4 172
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 722
;721:			// add the sprite over the player's head
;722:			attacker->client->ps.eFlags &= ~(EF_AWARD_IMPRESSIVE | EF_AWARD_EXCELLENT | EF_AWARD_GAUNTLET | EF_AWARD_ASSIST | EF_AWARD_DEFEND | EF_AWARD_CAP );
ADDRLP4 176
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 176
INDIRP4
ADDRLP4 176
INDIRP4
INDIRI4
CNSTI4 -231497
BANDI4
ASGNI4
line 723
;723:			attacker->client->ps.eFlags |= EF_AWARD_DEFEND;
ADDRLP4 180
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 180
INDIRP4
ADDRLP4 180
INDIRP4
INDIRI4
CNSTI4 65536
BORI4
ASGNI4
line 724
;724:			attacker->client->rewardTime = level.time + REWARD_SPRITE_TIME;
ADDRFP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 764
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 2000
ADDI4
ASGNI4
line 726
;725:
;726:			return;
LABELV $400
line 728
;727:		}
;728:	}
LABELV $394
line 729
;729:}
LABELV $324
endproc Team_FragBonuses 184 16
export Team_CheckHurtCarrier
proc Team_CheckHurtCarrier 12 0
line 741
;730:
;731:
;732:/*
;733:================
;734:Team_CheckHurtCarrier
;735:
;736:Check to see if attacker hurt the flag carrier.  Needed when handing out bonuses for assistance to flag
;737:carrier defense.
;738:================
;739:*/
;740:void Team_CheckHurtCarrier(gentity_t *targ, gentity_t *attacker)
;741:{
line 744
;742:	int flag_pw;
;743:
;744:	if (!targ->client || !attacker->client)
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $408
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $406
LABELV $408
line 745
;745:		return;
ADDRGP4 $405
JUMPV
LABELV $406
line 747
;746:
;747:	if (targ->client->sess.sessionTeam == TEAM_RED)
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 1
NEI4 $409
line 748
;748:		flag_pw = PW_BLUEFLAG;
ADDRLP4 0
CNSTI4 8
ASGNI4
ADDRGP4 $410
JUMPV
LABELV $409
line 750
;749:	else
;750:		flag_pw = PW_REDFLAG;
ADDRLP4 0
CNSTI4 7
ASGNI4
LABELV $410
line 753
;751:
;752:	// flags
;753:	if (targ->client->ps.powerups[flag_pw] &&
ADDRLP4 4
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 312
ADDP4
ADDP4
INDIRI4
CNSTI4 0
EQI4 $411
ADDRLP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
EQI4 $411
line 755
;754:		targ->client->sess.sessionTeam != attacker->client->sess.sessionTeam)
;755:		attacker->client->pers.teamState.lasthurtcarrier = level.time;
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
ADDRGP4 level+32
INDIRI4
CVIF4 4
ASGNF4
LABELV $411
line 758
;756:
;757:	// skulls
;758:	if (targ->client->ps.generic1 &&
ADDRLP4 8
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 440
ADDP4
INDIRI4
CNSTI4 0
EQI4 $414
ADDRLP4 8
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
EQI4 $414
line 760
;759:		targ->client->sess.sessionTeam != attacker->client->sess.sessionTeam)
;760:		attacker->client->pers.teamState.lasthurtcarrier = level.time;
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
ADDRGP4 level+32
INDIRI4
CVIF4 4
ASGNF4
LABELV $414
line 761
;761:}
LABELV $405
endproc Team_CheckHurtCarrier 12 0
proc Team_ResetFlag 24 12
line 764
;762:
;763:
;764:static gentity_t *Team_ResetFlag( team_t team ) {
line 766
;765:	char *c;
;766:	gentity_t *ent, *rent = NULL;
ADDRLP4 8
CNSTP4 0
ASGNP4
line 768
;767:
;768:	switch (team) {
ADDRLP4 12
ADDRFP4 0
INDIRI4
ASGNI4
ADDRLP4 12
INDIRI4
CNSTI4 0
EQI4 $423
ADDRLP4 12
INDIRI4
CNSTI4 1
EQI4 $421
ADDRLP4 12
INDIRI4
CNSTI4 2
EQI4 $422
ADDRGP4 $418
JUMPV
LABELV $421
line 770
;769:	case TEAM_RED:
;770:		c = "team_CTF_redflag";
ADDRLP4 4
ADDRGP4 $368
ASGNP4
line 771
;771:		break;
ADDRGP4 $419
JUMPV
LABELV $422
line 773
;772:	case TEAM_BLUE:
;773:		c = "team_CTF_blueflag";
ADDRLP4 4
ADDRGP4 $370
ASGNP4
line 774
;774:		break;
ADDRGP4 $419
JUMPV
LABELV $423
line 776
;775:	case TEAM_FREE:
;776:		c = "team_CTF_neutralflag";
ADDRLP4 4
ADDRGP4 $424
ASGNP4
line 777
;777:		break;
ADDRGP4 $419
JUMPV
LABELV $418
line 779
;778:	default:
;779:		return NULL;
CNSTP4 0
RETP4
ADDRGP4 $417
JUMPV
LABELV $419
line 782
;780:	}
;781:
;782:	ent = NULL;
ADDRLP4 0
CNSTP4 0
ASGNP4
ADDRGP4 $426
JUMPV
LABELV $425
line 783
;783:	while ((ent = G_Find (ent, FOFS(classname), c)) != NULL) {
line 784
;784:		if (ent->flags & FL_DROPPED_ITEM)
ADDRLP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 4096
BANDI4
CNSTI4 0
EQI4 $428
line 785
;785:			G_FreeEntity(ent);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_FreeEntity
CALLV
pop
ADDRGP4 $429
JUMPV
LABELV $428
line 786
;786:		else {
line 787
;787:			rent = ent;
ADDRLP4 8
ADDRLP4 0
INDIRP4
ASGNP4
line 788
;788:			RespawnItem(ent);
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 RespawnItem
CALLV
pop
line 789
;789:		}
LABELV $429
line 790
;790:	}
LABELV $426
line 783
ADDRLP4 0
INDIRP4
ARGP4
CNSTI4 524
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRLP4 20
ADDRGP4 G_Find
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 20
INDIRP4
ASGNP4
ADDRLP4 20
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $425
line 792
;791:
;792:	Team_SetFlagStatus( team, FLAG_ATBASE );
ADDRFP4 0
INDIRI4
ARGI4
CNSTI4 0
ARGI4
ADDRGP4 Team_SetFlagStatus
CALLV
pop
line 794
;793:
;794:	return rent;
ADDRLP4 8
INDIRP4
RETP4
LABELV $417
endproc Team_ResetFlag 24 12
export Team_ResetFlags
proc Team_ResetFlags 0 4
line 798
;795:}
;796:
;797:
;798:void Team_ResetFlags( void ) {
line 799
;799:	if( g_gametype.integer == GT_CTF ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 4
NEI4 $431
line 800
;800:		Team_ResetFlag( TEAM_RED );
CNSTI4 1
ARGI4
ADDRGP4 Team_ResetFlag
CALLP4
pop
line 801
;801:		Team_ResetFlag( TEAM_BLUE );
CNSTI4 2
ARGI4
ADDRGP4 Team_ResetFlag
CALLP4
pop
line 802
;802:	}
LABELV $431
line 808
;803:#ifdef MISSIONPACK
;804:	else if( g_gametype.integer == GT_1FCTF ) {
;805:		Team_ResetFlag( TEAM_FREE );
;806:	}
;807:#endif
;808:}
LABELV $430
endproc Team_ResetFlags 0 4
proc Team_ReturnFlagSound 12 8
line 811
;809:
;810:
;811:static void Team_ReturnFlagSound( gentity_t *ent, team_t team ) {
line 814
;812:	gentity_t	*te;
;813:
;814:	if (ent == NULL) {
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $435
line 815
;815:		G_Printf ("Warning:  NULL passed to Team_ReturnFlagSound\n");
ADDRGP4 $437
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 816
;816:		return;
ADDRGP4 $434
JUMPV
LABELV $435
line 819
;817:	}
;818:
;819:	te = G_TempEntity( ent->s.pos.trBase, EV_GLOBAL_TEAM_SOUND );
ADDRFP4 0
INDIRP4
CNSTI4 24
ADDP4
ARGP4
CNSTI4 47
ARGI4
ADDRLP4 4
ADDRGP4 G_TempEntity
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4
INDIRP4
ASGNP4
line 820
;820:	if( team == TEAM_BLUE ) {
ADDRFP4 4
INDIRI4
CNSTI4 2
NEI4 $438
line 821
;821:		te->s.eventParm = GTS_RED_RETURN;
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
CNSTI4 2
ASGNI4
line 822
;822:	}
ADDRGP4 $439
JUMPV
LABELV $438
line 823
;823:	else {
line 824
;824:		te->s.eventParm = GTS_BLUE_RETURN;
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
CNSTI4 3
ASGNI4
line 825
;825:	}
LABELV $439
line 826
;826:	te->r.svFlags |= SVF_BROADCAST;
ADDRLP4 8
ADDRLP4 0
INDIRP4
CNSTI4 424
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 32
BORI4
ASGNI4
line 827
;827:}
LABELV $434
endproc Team_ReturnFlagSound 12 8
proc Team_TakeFlagSound 20 8
line 830
;828:
;829:
;830:static void Team_TakeFlagSound( gentity_t *ent, team_t team ) {
line 833
;831:	gentity_t	*te;
;832:
;833:	if ( ent == NULL ) {
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $441
line 834
;834:		G_Printf( "Warning:  NULL passed to Team_TakeFlagSound\n" );
ADDRGP4 $443
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 835
;835:		return;
ADDRGP4 $440
JUMPV
LABELV $441
line 840
;836:	}
;837:
;838:	// only play sound when the flag was at the base
;839:	// or not picked up the last 10 seconds
;840:	switch ( team ) {
ADDRLP4 4
ADDRFP4 4
INDIRI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 1
EQI4 $447
ADDRLP4 4
INDIRI4
CNSTI4 2
EQI4 $457
ADDRGP4 $440
JUMPV
LABELV $447
line 842
;841:		case TEAM_RED:
;842:			if( teamgame.blueStatus != FLAG_ATBASE ) {
ADDRGP4 teamgame+12
INDIRI4
CNSTI4 0
EQI4 $448
line 843
;843:				if (teamgame.blueTakenTime > level.time - 10000)
ADDRGP4 teamgame+24
INDIRI4
ADDRGP4 level+32
INDIRI4
CNSTI4 10000
SUBI4
LEI4 $451
line 844
;844:					return;
ADDRGP4 $440
JUMPV
LABELV $451
line 845
;845:			}
LABELV $448
line 846
;846:			teamgame.blueTakenTime = level.time;
ADDRGP4 teamgame+24
ADDRGP4 level+32
INDIRI4
ASGNI4
line 847
;847:			break;
ADDRGP4 $445
JUMPV
LABELV $457
line 850
;848:
;849:		case TEAM_BLUE:	// CTF
;850:			if( teamgame.redStatus != FLAG_ATBASE ) {
ADDRGP4 teamgame+8
INDIRI4
CNSTI4 0
EQI4 $458
line 851
;851:				if (teamgame.redTakenTime > level.time - 10000)
ADDRGP4 teamgame+20
INDIRI4
ADDRGP4 level+32
INDIRI4
CNSTI4 10000
SUBI4
LEI4 $461
line 852
;852:					return;
ADDRGP4 $440
JUMPV
LABELV $461
line 853
;853:			}
LABELV $458
line 854
;854:			teamgame.redTakenTime = level.time;
ADDRGP4 teamgame+20
ADDRGP4 level+32
INDIRI4
ASGNI4
line 855
;855:			break;
line 858
;856:
;857:		default:
;858:			return;
LABELV $445
line 861
;859:	}
;860:
;861:	te = G_TempEntity( ent->s.pos.trBase, EV_GLOBAL_TEAM_SOUND );
ADDRFP4 0
INDIRP4
CNSTI4 24
ADDP4
ARGP4
CNSTI4 47
ARGI4
ADDRLP4 12
ADDRGP4 G_TempEntity
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 12
INDIRP4
ASGNP4
line 862
;862:	if( team == TEAM_BLUE ) {
ADDRFP4 4
INDIRI4
CNSTI4 2
NEI4 $467
line 863
;863:		te->s.eventParm = GTS_RED_TAKEN;
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
CNSTI4 4
ASGNI4
line 864
;864:	}
ADDRGP4 $468
JUMPV
LABELV $467
line 865
;865:	else {
line 866
;866:		te->s.eventParm = GTS_BLUE_TAKEN;
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
CNSTI4 5
ASGNI4
line 867
;867:	}
LABELV $468
line 868
;868:	te->r.svFlags |= SVF_BROADCAST;
ADDRLP4 16
ADDRLP4 0
INDIRP4
CNSTI4 424
ADDP4
ASGNP4
ADDRLP4 16
INDIRP4
ADDRLP4 16
INDIRP4
INDIRI4
CNSTI4 32
BORI4
ASGNI4
line 869
;869:}
LABELV $440
endproc Team_TakeFlagSound 20 8
proc Team_CaptureFlagSound 12 8
line 872
;870:
;871:
;872:static void Team_CaptureFlagSound( gentity_t *ent, team_t team ) {
line 875
;873:	gentity_t	*te;
;874:
;875:	if (ent == NULL) {
ADDRFP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $470
line 876
;876:		G_Printf ("Warning:  NULL passed to Team_CaptureFlagSound\n");
ADDRGP4 $472
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 877
;877:		return;
ADDRGP4 $469
JUMPV
LABELV $470
line 880
;878:	}
;879:
;880:	te = G_TempEntity( ent->s.pos.trBase, EV_GLOBAL_TEAM_SOUND );
ADDRFP4 0
INDIRP4
CNSTI4 24
ADDP4
ARGP4
CNSTI4 47
ARGI4
ADDRLP4 4
ADDRGP4 G_TempEntity
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4
INDIRP4
ASGNP4
line 881
;881:	if( team == TEAM_BLUE ) {
ADDRFP4 4
INDIRI4
CNSTI4 2
NEI4 $473
line 882
;882:		te->s.eventParm = GTS_BLUE_CAPTURE;
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
CNSTI4 1
ASGNI4
line 883
;883:	}
ADDRGP4 $474
JUMPV
LABELV $473
line 884
;884:	else {
line 885
;885:		te->s.eventParm = GTS_RED_CAPTURE;
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
CNSTI4 0
ASGNI4
line 886
;886:	}
LABELV $474
line 887
;887:	te->r.svFlags |= SVF_BROADCAST;
ADDRLP4 8
ADDRLP4 0
INDIRP4
CNSTI4 424
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 32
BORI4
ASGNI4
line 888
;888:}
LABELV $469
endproc Team_CaptureFlagSound 12 8
export Team_ReturnFlag
proc Team_ReturnFlag 8 12
line 891
;889:
;890:
;891:void Team_ReturnFlag( team_t team ) {
line 892
;892:	Team_ReturnFlagSound(Team_ResetFlag(team), team);
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 0
ADDRGP4 Team_ResetFlag
CALLP4
ASGNP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 Team_ReturnFlagSound
CALLV
pop
line 893
;893:	if( team == TEAM_FREE ) {
ADDRFP4 0
INDIRI4
CNSTI4 0
NEI4 $476
line 894
;894:		PrintMsg(NULL, "The flag has returned!\n" );
CNSTP4 0
ARGP4
ADDRGP4 $478
ARGP4
ADDRGP4 PrintMsg
CALLV
pop
line 895
;895:	}
ADDRGP4 $477
JUMPV
LABELV $476
line 896
;896:	else {
line 897
;897:		PrintMsg(NULL, "The %s flag has returned!\n", TeamName(team));
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 TeamName
CALLP4
ASGNP4
CNSTP4 0
ARGP4
ADDRGP4 $479
ARGP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintMsg
CALLV
pop
line 898
;898:	}
LABELV $477
line 899
;899:}
LABELV $475
endproc Team_ReturnFlag 8 12
export Team_FreeEntity
proc Team_FreeEntity 0 4
line 902
;900:
;901:
;902:void Team_FreeEntity( gentity_t *ent ) {
line 903
;903:	if( ent->item->giTag == PW_REDFLAG ) {
ADDRFP4 0
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 7
NEI4 $481
line 904
;904:		Team_ReturnFlag( TEAM_RED );
CNSTI4 1
ARGI4
ADDRGP4 Team_ReturnFlag
CALLV
pop
line 905
;905:	}
ADDRGP4 $482
JUMPV
LABELV $481
line 906
;906:	else if( ent->item->giTag == PW_BLUEFLAG ) {
ADDRFP4 0
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 8
NEI4 $483
line 907
;907:		Team_ReturnFlag( TEAM_BLUE );
CNSTI4 2
ARGI4
ADDRGP4 Team_ReturnFlag
CALLV
pop
line 908
;908:	}
ADDRGP4 $484
JUMPV
LABELV $483
line 909
;909:	else if( ent->item->giTag == PW_NEUTRALFLAG ) {
ADDRFP4 0
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 9
NEI4 $485
line 910
;910:		Team_ReturnFlag( TEAM_FREE );
CNSTI4 0
ARGI4
ADDRGP4 Team_ReturnFlag
CALLV
pop
line 911
;911:	}
LABELV $485
LABELV $484
LABELV $482
line 912
;912:}
LABELV $480
endproc Team_FreeEntity 0 4
export Team_DroppedFlagThink
proc Team_DroppedFlagThink 8 8
line 924
;913:
;914:
;915:/*
;916:==============
;917:Team_DroppedFlagThink
;918:
;919:Automatically set in Launch_Item if the item is one of the flags
;920:
;921:Flags are unique in that if they are dropped, the base flag must be respawned when they time out
;922:==============
;923:*/
;924:void Team_DroppedFlagThink(gentity_t *ent) {
line 925
;925:	int		team = TEAM_FREE;
ADDRLP4 0
CNSTI4 0
ASGNI4
line 927
;926:
;927:	if( ent->item->giTag == PW_REDFLAG ) {
ADDRFP4 0
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 7
NEI4 $488
line 928
;928:		team = TEAM_RED;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 929
;929:	}
ADDRGP4 $489
JUMPV
LABELV $488
line 930
;930:	else if( ent->item->giTag == PW_BLUEFLAG ) {
ADDRFP4 0
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 8
NEI4 $490
line 931
;931:		team = TEAM_BLUE;
ADDRLP4 0
CNSTI4 2
ASGNI4
line 932
;932:	}
ADDRGP4 $491
JUMPV
LABELV $490
line 933
;933:	else if( ent->item->giTag == PW_NEUTRALFLAG ) {
ADDRFP4 0
INDIRP4
CNSTI4 804
ADDP4
INDIRP4
CNSTI4 40
ADDP4
INDIRI4
CNSTI4 9
NEI4 $492
line 934
;934:		team = TEAM_FREE;
ADDRLP4 0
CNSTI4 0
ASGNI4
line 935
;935:	}
LABELV $492
LABELV $491
LABELV $489
line 937
;936:
;937:	Team_ReturnFlagSound( Team_ResetFlag( team ), team );
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 Team_ResetFlag
CALLP4
ASGNP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 Team_ReturnFlagSound
CALLV
pop
line 939
;938:	// Reset Flag will delete this entity
;939:}
LABELV $487
endproc Team_DroppedFlagThink 8 8
proc Team_TouchOurFlag 60 16
line 947
;940:
;941:
;942:/*
;943:==============
;944:Team_DroppedFlagThink
;945:==============
;946:*/
;947:static int Team_TouchOurFlag( gentity_t *ent, gentity_t *other, team_t team ) {
line 950
;948:	int			i;
;949:	gentity_t	*player;
;950:	gclient_t	*cl = other->client;
ADDRLP4 8
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 959
;951:	int			enemy_flag;
;952:
;953:#ifdef MISSIONPACK
;954:	if( g_gametype.integer == GT_1FCTF ) {
;955:		enemy_flag = PW_NEUTRALFLAG;
;956:	}
;957:	else {
;958:#endif
;959:	if (cl->sess.sessionTeam == TEAM_RED) {
ADDRLP4 8
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 1
NEI4 $495
line 960
;960:		enemy_flag = PW_BLUEFLAG;
ADDRLP4 12
CNSTI4 8
ASGNI4
line 961
;961:	} else {
ADDRGP4 $496
JUMPV
LABELV $495
line 962
;962:		enemy_flag = PW_REDFLAG;
ADDRLP4 12
CNSTI4 7
ASGNI4
line 963
;963:	}
LABELV $496
line 965
;964:
;965:	if ( ent->flags & FL_DROPPED_ITEM ) {
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 4096
BANDI4
CNSTI4 0
EQI4 $497
line 967
;966:		// hey, its not home.  return it by teleporting it back
;967:		PrintMsg( NULL, "%s" S_COLOR_WHITE " ^3returned the %s flag!\n", 
ADDRFP4 8
INDIRI4
ARGI4
ADDRLP4 16
ADDRGP4 TeamName
CALLP4
ASGNP4
CNSTP4 0
ARGP4
ADDRGP4 $499
ARGP4
ADDRLP4 8
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 16
INDIRP4
ARGP4
ADDRGP4 PrintMsg
CALLV
pop
line 969
;968:			cl->pers.netname, TeamName(team));
;969:		AddScore(other, ent->r.currentOrigin, CTF_RECOVERY_BONUS);
ADDRFP4 4
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 970
;970:		other->client->pers.teamState.flagrecovery++;
ADDRLP4 20
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 572
ADDP4
ASGNP4
ADDRLP4 20
INDIRP4
ADDRLP4 20
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 971
;971:		other->client->pers.teamState.lastreturnedflag = level.time;
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 588
ADDP4
ADDRGP4 level+32
INDIRI4
CVIF4 4
ASGNF4
line 973
;972:		//ResetFlag will remove this entity!  We must return zero
;973:		Team_ReturnFlagSound(Team_ResetFlag(team), team);
ADDRFP4 8
INDIRI4
ARGI4
ADDRLP4 24
ADDRGP4 Team_ResetFlag
CALLP4
ASGNP4
ADDRLP4 24
INDIRP4
ARGP4
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 Team_ReturnFlagSound
CALLV
pop
line 974
;974:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $494
JUMPV
LABELV $497
line 982
;975:	}
;976:#ifdef MISSIONPACK
;977:	}
;978:#endif
;979:
;980:	// the flag is at home base.  if the player has the enemy
;981:	// flag, he's just won!
;982:	if (!cl->ps.powerups[enemy_flag])
ADDRLP4 12
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 8
INDIRP4
CNSTI4 312
ADDP4
ADDP4
INDIRI4
CNSTI4 0
NEI4 $501
line 983
;983:		return 0; // We don't have the flag
CNSTI4 0
RETI4
ADDRGP4 $494
JUMPV
LABELV $501
line 990
;984:#ifdef MISSIONPACK
;985:	if( g_gametype.integer == GT_1FCTF ) {
;986:		PrintMsg( NULL, "%s" S_COLOR_WHITE " captured the flag!\n", cl->pers.netname );
;987:	}
;988:	else {
;989:#endif
;990:	PrintMsg( NULL, "%s" S_COLOR_WHITE " captured the %s flag!\n", cl->pers.netname, TeamName(OtherTeam(team)));
ADDRFP4 8
INDIRI4
ARGI4
ADDRLP4 16
ADDRGP4 OtherTeam
CALLI4
ASGNI4
ADDRLP4 16
INDIRI4
ARGI4
ADDRLP4 20
ADDRGP4 TeamName
CALLP4
ASGNP4
CNSTP4 0
ARGP4
ADDRGP4 $503
ARGP4
ADDRLP4 8
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 20
INDIRP4
ARGP4
ADDRGP4 PrintMsg
CALLV
pop
line 995
;991:#ifdef MISSIONPACK
;992:	}
;993:#endif
;994:
;995:	cl->ps.powerups[enemy_flag] = 0;
ADDRLP4 12
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 8
INDIRP4
CNSTI4 312
ADDP4
ADDP4
CNSTI4 0
ASGNI4
line 997
;996:
;997:	teamgame.last_flag_capture = level.time;
ADDRGP4 teamgame
ADDRGP4 level+32
INDIRI4
CVIF4 4
ASGNF4
line 998
;998:	teamgame.last_capture_team = team;
ADDRGP4 teamgame+4
ADDRFP4 8
INDIRI4
ASGNI4
line 1001
;999:
;1000:	// Increase the team's score
;1001:	AddTeamScore(ent->s.pos.trBase, other->client->sess.sessionTeam, 1);
ADDRFP4 0
INDIRP4
CNSTI4 24
ADDP4
ARGP4
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ARGI4
CNSTI4 1
ARGI4
ADDRGP4 AddTeamScore
CALLV
pop
line 1002
;1002:	Team_ForceGesture(other->client->sess.sessionTeam);
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ARGI4
ADDRGP4 Team_ForceGesture
CALLV
pop
line 1004
;1003:
;1004:	other->client->pers.teamState.captures++;
ADDRLP4 24
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 560
ADDP4
ASGNP4
ADDRLP4 24
INDIRP4
ADDRLP4 24
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1006
;1005:	// add the sprite over the player's head
;1006:	other->client->ps.eFlags &= ~(EF_AWARD_IMPRESSIVE | EF_AWARD_EXCELLENT | EF_AWARD_GAUNTLET | EF_AWARD_ASSIST | EF_AWARD_DEFEND | EF_AWARD_CAP );
ADDRLP4 28
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
CNSTI4 -231497
BANDI4
ASGNI4
line 1007
;1007:	other->client->ps.eFlags |= EF_AWARD_CAP;
ADDRLP4 32
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 2048
BORI4
ASGNI4
line 1008
;1008:	other->client->rewardTime = level.time + REWARD_SPRITE_TIME;
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 764
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 2000
ADDI4
ASGNI4
line 1009
;1009:	other->client->ps.persistant[PERS_CAPTURES]++;
ADDRLP4 36
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 304
ADDP4
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1012
;1010:
;1011:	// other gets another 10 frag bonus
;1012:	AddScore(other, ent->r.currentOrigin, CTF_CAPTURE_BONUS);
ADDRFP4 4
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 5
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 1014
;1013:
;1014:	Team_CaptureFlagSound( ent, team );
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 Team_CaptureFlagSound
CALLV
pop
line 1017
;1015:
;1016:	// Ok, let's do the player loop, hand out the bonuses
;1017:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $510
JUMPV
LABELV $507
line 1018
;1018:		player = &g_entities[i];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1019
;1019:		if (!player->inuse || player == other)
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $514
ADDRLP4 0
INDIRP4
CVPU4 4
ADDRFP4 4
INDIRP4
CVPU4 4
NEU4 $512
LABELV $514
line 1020
;1020:			continue;
ADDRGP4 $508
JUMPV
LABELV $512
line 1022
;1021:
;1022:		if (player->client->sess.sessionTeam !=
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRLP4 8
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
EQI4 $515
line 1023
;1023:			cl->sess.sessionTeam) {
line 1024
;1024:			player->client->pers.teamState.lasthurtcarrier = -5;
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 584
ADDP4
CNSTF4 3231711232
ASGNF4
line 1025
;1025:		} else {
ADDRGP4 $516
JUMPV
LABELV $515
line 1030
;1026:#ifdef MISSIONPACK
;1027:				AddScore(player, ent->r.currentOrigin, CTF_TEAM_BONUS);
;1028:#endif
;1029:			// award extra points for capture assists
;1030:			if (player->client->pers.teamState.lastreturnedflag + 
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 588
ADDP4
INDIRF4
CNSTF4 1176256512
ADDF4
ADDRGP4 level+32
INDIRI4
CVIF4 4
LEF4 $517
line 1031
;1031:				CTF_RETURN_FLAG_ASSIST_TIMEOUT > level.time) {
line 1032
;1032:				AddScore (player, ent->r.currentOrigin, CTF_RETURN_FLAG_ASSIST_BONUS);
ADDRLP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 1033
;1033:				other->client->pers.teamState.assists++;
ADDRLP4 44
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 580
ADDP4
ASGNP4
ADDRLP4 44
INDIRP4
ADDRLP4 44
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1035
;1034:
;1035:				player->client->ps.persistant[PERS_ASSIST_COUNT]++;
ADDRLP4 48
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 296
ADDP4
ASGNP4
ADDRLP4 48
INDIRP4
ADDRLP4 48
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1037
;1036:				// add the sprite over the player's head
;1037:				player->client->ps.eFlags &= ~(EF_AWARD_IMPRESSIVE | EF_AWARD_EXCELLENT | EF_AWARD_GAUNTLET | EF_AWARD_ASSIST | EF_AWARD_DEFEND | EF_AWARD_CAP );
ADDRLP4 52
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 52
INDIRP4
ADDRLP4 52
INDIRP4
INDIRI4
CNSTI4 -231497
BANDI4
ASGNI4
line 1038
;1038:				player->client->ps.eFlags |= EF_AWARD_ASSIST;
ADDRLP4 56
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 56
INDIRP4
ADDRLP4 56
INDIRP4
INDIRI4
CNSTI4 131072
BORI4
ASGNI4
line 1039
;1039:				player->client->rewardTime = level.time + REWARD_SPRITE_TIME;
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 764
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 2000
ADDI4
ASGNI4
line 1041
;1040:
;1041:			} 
LABELV $517
line 1042
;1042:			if (player->client->pers.teamState.lastfraggedcarrier + 
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 596
ADDP4
INDIRF4
CNSTF4 1176256512
ADDF4
ADDRGP4 level+32
INDIRI4
CVIF4 4
LEF4 $521
line 1043
;1043:				CTF_FRAG_CARRIER_ASSIST_TIMEOUT > level.time) {
line 1044
;1044:				AddScore(player, ent->r.currentOrigin, CTF_FRAG_CARRIER_ASSIST_BONUS);
ADDRLP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
CNSTI4 2
ARGI4
ADDRGP4 AddScore
CALLV
pop
line 1045
;1045:				other->client->pers.teamState.assists++;
ADDRLP4 44
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 580
ADDP4
ASGNP4
ADDRLP4 44
INDIRP4
ADDRLP4 44
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1046
;1046:				player->client->ps.persistant[PERS_ASSIST_COUNT]++;
ADDRLP4 48
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 296
ADDP4
ASGNP4
ADDRLP4 48
INDIRP4
ADDRLP4 48
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1048
;1047:				// add the sprite over the player's head
;1048:				player->client->ps.eFlags &= ~(EF_AWARD_IMPRESSIVE | EF_AWARD_EXCELLENT | EF_AWARD_GAUNTLET | EF_AWARD_ASSIST | EF_AWARD_DEFEND | EF_AWARD_CAP );
ADDRLP4 52
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 52
INDIRP4
ADDRLP4 52
INDIRP4
INDIRI4
CNSTI4 -231497
BANDI4
ASGNI4
line 1049
;1049:				player->client->ps.eFlags |= EF_AWARD_ASSIST;
ADDRLP4 56
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 56
INDIRP4
ADDRLP4 56
INDIRP4
INDIRI4
CNSTI4 131072
BORI4
ASGNI4
line 1050
;1050:				player->client->rewardTime = level.time + REWARD_SPRITE_TIME;
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 764
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 2000
ADDI4
ASGNI4
line 1051
;1051:			}
LABELV $521
line 1052
;1052:		}
LABELV $516
line 1053
;1053:	}
LABELV $508
line 1017
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $510
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $507
line 1054
;1054:	Team_ResetFlags();
ADDRGP4 Team_ResetFlags
CALLV
pop
line 1056
;1055:
;1056:	CalculateRanks();
ADDRGP4 CalculateRanks
CALLV
pop
line 1058
;1057:
;1058:	return 0; // Do not respawn this automatically
CNSTI4 0
RETI4
LABELV $494
endproc Team_TouchOurFlag 60 16
proc Team_TouchEnemyFlag 8 16
line 1062
;1059:}
;1060:
;1061:
;1062:static int Team_TouchEnemyFlag( gentity_t *ent, gentity_t *other, team_t team ) {
line 1063
;1063:	gclient_t *cl = other->client;
ADDRLP4 0
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 1080
;1064:
;1065:#ifdef MISSIONPACK
;1066:	if( g_gametype.integer == GT_1FCTF ) {
;1067:		PrintMsg (NULL, "%s" S_COLOR_WHITE " ^3got the flag!\n", other->client->pers.netname );
;1068:
;1069:		cl->ps.powerups[PW_NEUTRALFLAG] = INT_MAX; // flags never expire
;1070:
;1071:		if( team == TEAM_RED ) {
;1072:			Team_SetFlagStatus( TEAM_FREE, FLAG_TAKEN_RED );
;1073:		}
;1074:		else {
;1075:			Team_SetFlagStatus( TEAM_FREE, FLAG_TAKEN_BLUE );
;1076:		}
;1077:	}
;1078:	else{
;1079:#endif
;1080:		PrintMsg (NULL, "%s" S_COLOR_WHITE " ^3got the %s flag!\n",
ADDRFP4 8
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 TeamName
CALLP4
ASGNP4
CNSTP4 0
ARGP4
ADDRGP4 $526
ARGP4
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 PrintMsg
CALLV
pop
line 1083
;1081:			other->client->pers.netname, TeamName(team));
;1082:
;1083:		if (team == TEAM_RED)
ADDRFP4 8
INDIRI4
CNSTI4 1
NEI4 $527
line 1084
;1084:			cl->ps.powerups[PW_REDFLAG] = INT_MAX; // flags never expire
ADDRLP4 0
INDIRP4
CNSTI4 340
ADDP4
CNSTI4 2147483647
ASGNI4
ADDRGP4 $528
JUMPV
LABELV $527
line 1086
;1085:		else
;1086:			cl->ps.powerups[PW_BLUEFLAG] = INT_MAX; // flags never expire
ADDRLP4 0
INDIRP4
CNSTI4 344
ADDP4
CNSTI4 2147483647
ASGNI4
LABELV $528
line 1088
;1087:
;1088:		Team_SetFlagStatus( team, FLAG_TAKEN );
ADDRFP4 8
INDIRI4
ARGI4
CNSTI4 1
ARGI4
ADDRGP4 Team_SetFlagStatus
CALLV
pop
line 1094
;1089:#ifdef MISSIONPACK
;1090:	}
;1091:
;1092:	AddScore(other, ent->r.currentOrigin, CTF_FLAG_BONUS);
;1093:#endif
;1094:	cl->pers.teamState.flagsince = level.time;
ADDRLP4 0
INDIRP4
CNSTI4 592
ADDP4
ADDRGP4 level+32
INDIRI4
CVIF4 4
ASGNF4
line 1095
;1095:	Team_TakeFlagSound( ent, team );
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 Team_TakeFlagSound
CALLV
pop
line 1097
;1096:
;1097:	return -1; // Do not respawn this automatically, but do delete it if it was FL_DROPPED
CNSTI4 -1
RETI4
LABELV $525
endproc Team_TouchEnemyFlag 8 16
export Pickup_Team
proc Pickup_Team 20 12
line 1101
;1098:}
;1099:
;1100:
;1101:int Pickup_Team( gentity_t *ent, gentity_t *other ) {
line 1103
;1102:	int team;
;1103:	gclient_t *cl = other->client;
ADDRLP4 4
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 1122
;1104:
;1105:#ifdef MISSIONPACK
;1106:	if( g_gametype.integer == GT_OBELISK ) {
;1107:		// there are no team items that can be picked up in obelisk
;1108:		G_FreeEntity( ent );
;1109:		return 0;
;1110:	}
;1111:
;1112:	if( g_gametype.integer == GT_HARVESTER ) {
;1113:		// the only team items that can be picked up in harvester are the cubes
;1114:		if( ent->spawnflags != cl->sess.sessionTeam ) {
;1115:			cl->ps.generic1 += 1;
;1116:		}
;1117:		G_FreeEntity( ent );
;1118:		return 0;
;1119:	}
;1120:#endif
;1121:	// figure out what team this flag is
;1122:	if( strcmp(ent->classname, "team_CTF_redflag") == 0 ) {
ADDRFP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
ARGP4
ADDRGP4 $368
ARGP4
ADDRLP4 8
ADDRGP4 strcmp
CALLI4
ASGNI4
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $531
line 1123
;1123:		team = TEAM_RED;
ADDRLP4 0
CNSTI4 1
ASGNI4
line 1124
;1124:	}
ADDRGP4 $532
JUMPV
LABELV $531
line 1125
;1125:	else if( strcmp(ent->classname, "team_CTF_blueflag") == 0 ) {
ADDRFP4 0
INDIRP4
CNSTI4 524
ADDP4
INDIRP4
ARGP4
ADDRGP4 $370
ARGP4
ADDRLP4 12
ADDRGP4 strcmp
CALLI4
ASGNI4
ADDRLP4 12
INDIRI4
CNSTI4 0
NEI4 $533
line 1126
;1126:		team = TEAM_BLUE;
ADDRLP4 0
CNSTI4 2
ASGNI4
line 1127
;1127:	}
ADDRGP4 $534
JUMPV
LABELV $533
line 1133
;1128:#ifdef MISSIONPACK
;1129:	else if( strcmp(ent->classname, "team_CTF_neutralflag") == 0  ) {
;1130:		team = TEAM_FREE;
;1131:	}
;1132:#endif
;1133:	else {
line 1134
;1134:		PrintMsg ( other, "Don't know what team the flag is on.\n");
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $535
ARGP4
ADDRGP4 PrintMsg
CALLV
pop
line 1135
;1135:		return 0;
CNSTI4 0
RETI4
ADDRGP4 $530
JUMPV
LABELV $534
LABELV $532
line 1149
;1136:	}
;1137:#ifdef MISSIONPACK
;1138:	if( g_gametype.integer == GT_1FCTF ) {
;1139:		if( team == TEAM_FREE ) {
;1140:			return Team_TouchEnemyFlag( ent, other, cl->sess.sessionTeam );
;1141:		}
;1142:		if( team != cl->sess.sessionTeam) {
;1143:			return Team_TouchOurFlag( ent, other, cl->sess.sessionTeam );
;1144:		}
;1145:		return 0;
;1146:	}
;1147:#endif
;1148:	// GT_CTF
;1149:	if( team == cl->sess.sessionTeam) {
ADDRLP4 0
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
NEI4 $536
line 1150
;1150:		return Team_TouchOurFlag( ent, other, team );
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 16
ADDRGP4 Team_TouchOurFlag
CALLI4
ASGNI4
ADDRLP4 16
INDIRI4
RETI4
ADDRGP4 $530
JUMPV
LABELV $536
line 1152
;1151:	}
;1152:	return Team_TouchEnemyFlag( ent, other, team );
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 16
ADDRGP4 Team_TouchEnemyFlag
CALLI4
ASGNI4
ADDRLP4 16
INDIRI4
RETI4
LABELV $530
endproc Pickup_Team 20 12
export Team_GetLocation
proc Team_GetLocation 40 8
line 1164
;1153:}
;1154:
;1155:
;1156:/*
;1157:===========
;1158:Team_GetLocation
;1159:
;1160:Report a location for the player. Uses placed nearby target_location entities
;1161:============
;1162:*/
;1163:gentity_t *Team_GetLocation(gentity_t *ent)
;1164:{
line 1169
;1165:	gentity_t		*eloc, *best;
;1166:	float			bestlen, len;
;1167:	vec3_t			origin;
;1168:
;1169:	best = NULL;
ADDRLP4 24
CNSTP4 0
ASGNP4
line 1170
;1170:	bestlen = 3*8192.0*8192.0;
ADDRLP4 20
CNSTF4 1296039936
ASGNF4
line 1172
;1171:
;1172:	VectorCopy( ent->r.currentOrigin, origin );
ADDRLP4 4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
INDIRB
ASGNB 12
line 1174
;1173:
;1174:	for (eloc = level.locationHead; eloc; eloc = eloc->nextTrain) {
ADDRLP4 0
ADDRGP4 level+7648
INDIRP4
ASGNP4
ADDRGP4 $542
JUMPV
LABELV $539
line 1175
;1175:		len = ( origin[0] - eloc->r.currentOrigin[0] ) * ( origin[0] - eloc->r.currentOrigin[0] )
ADDRLP4 28
ADDRLP4 4
INDIRF4
ASGNF4
ADDRLP4 16
ADDRLP4 28
INDIRF4
ADDRLP4 0
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
SUBF4
ADDRLP4 28
INDIRF4
ADDRLP4 0
INDIRP4
CNSTI4 488
ADDP4
INDIRF4
SUBF4
MULF4
ADDRLP4 4+4
INDIRF4
ADDRLP4 0
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
SUBF4
ADDRLP4 4+4
INDIRF4
ADDRLP4 0
INDIRP4
CNSTI4 492
ADDP4
INDIRF4
SUBF4
MULF4
ADDF4
ADDRLP4 4+8
INDIRF4
ADDRLP4 0
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
SUBF4
ADDRLP4 4+8
INDIRF4
ADDRLP4 0
INDIRP4
CNSTI4 496
ADDP4
INDIRF4
SUBF4
MULF4
ADDF4
ASGNF4
line 1179
;1176:			+ ( origin[1] - eloc->r.currentOrigin[1] ) * ( origin[1] - eloc->r.currentOrigin[1] )
;1177:			+ ( origin[2] - eloc->r.currentOrigin[2] ) * ( origin[2] - eloc->r.currentOrigin[2] );
;1178:
;1179:		if ( len > bestlen ) {
ADDRLP4 16
INDIRF4
ADDRLP4 20
INDIRF4
LEF4 $548
line 1180
;1180:			continue;
ADDRGP4 $540
JUMPV
LABELV $548
line 1183
;1181:		}
;1182:
;1183:		if ( !trap_InPVS( origin, eloc->r.currentOrigin ) ) {
ADDRLP4 4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRLP4 36
ADDRGP4 trap_InPVS
CALLI4
ASGNI4
ADDRLP4 36
INDIRI4
CNSTI4 0
NEI4 $550
line 1184
;1184:			continue;
ADDRGP4 $540
JUMPV
LABELV $550
line 1187
;1185:		}
;1186:
;1187:		bestlen = len;
ADDRLP4 20
ADDRLP4 16
INDIRF4
ASGNF4
line 1188
;1188:		best = eloc;
ADDRLP4 24
ADDRLP4 0
INDIRP4
ASGNP4
line 1189
;1189:	}
LABELV $540
line 1174
ADDRLP4 0
ADDRLP4 0
INDIRP4
CNSTI4 604
ADDP4
INDIRP4
ASGNP4
LABELV $542
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $539
line 1191
;1190:
;1191:	return best;
ADDRLP4 24
INDIRP4
RETP4
LABELV $538
endproc Team_GetLocation 40 8
export Team_GetLocationMsg
proc Team_GetLocationMsg 12 24
line 1203
;1192:}
;1193:
;1194:
;1195:/*
;1196:===========
;1197:Team_GetLocation
;1198:
;1199:Report a location for the player. Uses placed nearby target_location entities
;1200:============
;1201:*/
;1202:qboolean Team_GetLocationMsg(gentity_t *ent, char *loc, int loclen)
;1203:{
line 1206
;1204:	gentity_t *best;
;1205:
;1206:	best = Team_GetLocation( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ADDRGP4 Team_GetLocation
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4
INDIRP4
ASGNP4
line 1208
;1207:	
;1208:	if (!best)
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $553
line 1209
;1209:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $552
JUMPV
LABELV $553
line 1211
;1210:
;1211:	if (best->count) {
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
INDIRI4
CNSTI4 0
EQI4 $555
line 1212
;1212:		if (best->count < 0)
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
INDIRI4
CNSTI4 0
GEI4 $557
line 1213
;1213:			best->count = 0;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 0
ASGNI4
LABELV $557
line 1214
;1214:		if (best->count > 7)
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
INDIRI4
CNSTI4 7
LEI4 $559
line 1215
;1215:			best->count = 7;
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 7
ASGNI4
LABELV $559
line 1216
;1216:		Com_sprintf(loc, loclen, "%c%c%s" S_COLOR_WHITE, Q_COLOR_ESCAPE, best->count + '0', best->message );
ADDRFP4 4
INDIRP4
ARGP4
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 $561
ARGP4
CNSTI4 94
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
INDIRI4
CNSTI4 48
ADDI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRP4
ARGP4
ADDRGP4 Com_sprintf
CALLI4
pop
line 1217
;1217:	} else
ADDRGP4 $556
JUMPV
LABELV $555
line 1218
;1218:		Com_sprintf(loc, loclen, "%s", best->message);
ADDRFP4 4
INDIRP4
ARGP4
ADDRFP4 8
INDIRI4
ARGI4
ADDRGP4 $562
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRP4
ARGP4
ADDRGP4 Com_sprintf
CALLI4
pop
LABELV $556
line 1220
;1219:
;1220:	return qtrue;
CNSTI4 1
RETI4
LABELV $552
endproc Team_GetLocationMsg 12 24
export SelectRandomTeamSpawnPoint
proc SelectRandomTeamSpawnPoint 168 4
line 1234
;1221:}
;1222:
;1223:
;1224:/*---------------------------------------------------------------------------*/
;1225:
;1226:/*
;1227:================
;1228:SelectRandomTeamSpawnPoint
;1229:
;1230:go to a random point that doesn't telefrag
;1231:================
;1232:*/
;1233:#define	MAX_TEAM_SPAWN_POINTS	32
;1234:gentity_t *SelectRandomTeamSpawnPoint( gentity_t *ent, int teamstate, team_t team ) {
line 1244
;1235:	gentity_t	*spot;
;1236:	int			selection;
;1237:	gentity_t	*spots[ MAX_TEAM_SPAWN_POINTS ];
;1238:	int			numSpots;
;1239:	int			checkMask;
;1240:	int			n;
;1241:	qboolean	checkState;
;1242:	qboolean	checkTelefrag;
;1243:
;1244:	if ( team != TEAM_RED && team != TEAM_BLUE )
ADDRLP4 156
ADDRFP4 8
INDIRI4
ASGNI4
ADDRLP4 156
INDIRI4
CNSTI4 1
EQI4 $564
ADDRLP4 156
INDIRI4
CNSTI4 2
EQI4 $564
line 1245
;1245:		return NULL;
CNSTP4 0
RETP4
ADDRGP4 $563
JUMPV
LABELV $564
line 1247
;1246:
;1247:	checkMask = 3;
ADDRLP4 148
CNSTI4 3
ASGNI4
LABELV $566
line 1251
;1248:
;1249:__rescan:
;1250:
;1251:	checkTelefrag = checkMask & 1;
ADDRLP4 144
ADDRLP4 148
INDIRI4
CNSTI4 1
BANDI4
ASGNI4
line 1252
;1252:	checkState = checkMask & 2;
ADDRLP4 140
ADDRLP4 148
INDIRI4
CNSTI4 2
BANDI4
ASGNI4
line 1253
;1253:	numSpots = 0;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 1255
;1254:
;1255:	for ( n = 0 ; n < level.numSpawnSpots ; n++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $570
JUMPV
LABELV $567
line 1256
;1256:		spot = level.spawnSpots[ n ];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+7688
ADDP4
INDIRP4
ASGNP4
line 1257
;1257:		if ( spot->fteam != team )
ADDRLP4 0
INDIRP4
CNSTI4 808
ADDP4
INDIRI4
ADDRFP4 8
INDIRI4
EQI4 $573
line 1258
;1258:			continue;
ADDRGP4 $568
JUMPV
LABELV $573
line 1259
;1259:		if ( checkTelefrag && SpotWouldTelefrag( spot ) )
ADDRLP4 144
INDIRI4
CNSTI4 0
EQI4 $575
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 160
ADDRGP4 SpotWouldTelefrag
CALLI4
ASGNI4
ADDRLP4 160
INDIRI4
CNSTI4 0
EQI4 $575
line 1260
;1260:			continue;
ADDRGP4 $568
JUMPV
LABELV $575
line 1261
;1261:		if ( checkState ) {
ADDRLP4 140
INDIRI4
CNSTI4 0
EQI4 $577
line 1262
;1262:			if ( teamstate == TEAM_BEGIN ) {
ADDRFP4 4
INDIRI4
CNSTI4 0
NEI4 $579
line 1263
;1263:				if ( spot->count != 0 )
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
INDIRI4
CNSTI4 0
EQI4 $580
line 1264
;1264:					continue;
ADDRGP4 $568
JUMPV
line 1265
;1265:			} else {
LABELV $579
line 1266
;1266:				if ( spot->count == 0 )
ADDRLP4 0
INDIRP4
CNSTI4 760
ADDP4
INDIRI4
CNSTI4 0
NEI4 $583
line 1267
;1267:					continue;
ADDRGP4 $568
JUMPV
LABELV $583
line 1268
;1268:			}
LABELV $580
line 1269
;1269:		}
LABELV $577
line 1270
;1270:		spots[ numSpots++ ] = spot;
ADDRLP4 164
ADDRLP4 8
INDIRI4
ASGNI4
ADDRLP4 8
ADDRLP4 164
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 164
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 12
ADDP4
ADDRLP4 0
INDIRP4
ASGNP4
line 1271
;1271:		if ( numSpots >= MAX_TEAM_SPAWN_POINTS )
ADDRLP4 8
INDIRI4
CNSTI4 32
LTI4 $585
line 1272
;1272:			break;
ADDRGP4 $569
JUMPV
LABELV $585
line 1273
;1273:	}
LABELV $568
line 1255
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $570
ADDRLP4 4
INDIRI4
ADDRGP4 level+11784
INDIRI4
LTI4 $567
LABELV $569
line 1275
;1274:
;1275:	if ( !numSpots ) {
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $587
line 1276
;1276:		if ( checkMask <= 0 ) {
ADDRLP4 148
INDIRI4
CNSTI4 0
GTI4 $589
line 1277
;1277:			return NULL;
CNSTP4 0
RETP4
ADDRGP4 $563
JUMPV
LABELV $589
line 1279
;1278:		}
;1279:		checkMask--;
ADDRLP4 148
ADDRLP4 148
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 1280
;1280:		goto __rescan; // next attempt with different flags
ADDRGP4 $566
JUMPV
LABELV $587
line 1283
;1281:	}
;1282:
;1283:	selection = rand() % numSpots;
ADDRLP4 160
ADDRGP4 rand
CALLI4
ASGNI4
ADDRLP4 152
ADDRLP4 160
INDIRI4
ADDRLP4 8
INDIRI4
MODI4
ASGNI4
line 1284
;1284:	return spots[ selection ];
ADDRLP4 152
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 12
ADDP4
INDIRP4
RETP4
LABELV $563
endproc SelectRandomTeamSpawnPoint 168 4
export SelectCTFSpawnPoint
proc SelectCTFSpawnPoint 12 16
line 1293
;1285:}
;1286:
;1287:
;1288:/*
;1289:===========
;1290:SelectCTFSpawnPoint
;1291:============
;1292:*/
;1293:gentity_t *SelectCTFSpawnPoint( gentity_t *ent, team_t team, int teamstate, vec3_t origin, vec3_t angles ) {
line 1296
;1294:	gentity_t	*spot;
;1295:
;1296:	spot = SelectRandomTeamSpawnPoint( ent, teamstate, team );
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 8
INDIRI4
ARGI4
ADDRFP4 4
INDIRI4
ARGI4
ADDRLP4 4
ADDRGP4 SelectRandomTeamSpawnPoint
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 4
INDIRP4
ASGNP4
line 1298
;1297:
;1298:	if ( !spot ) {
ADDRLP4 0
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $592
line 1299
;1299:		return SelectSpawnPoint( ent, vec3_origin, origin, angles );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 vec3_origin
ARGP4
ADDRFP4 12
INDIRP4
ARGP4
ADDRFP4 16
INDIRP4
ARGP4
ADDRLP4 8
ADDRGP4 SelectSpawnPoint
CALLP4
ASGNP4
ADDRLP4 8
INDIRP4
RETP4
ADDRGP4 $591
JUMPV
LABELV $592
line 1302
;1300:	}
;1301:
;1302:	VectorCopy( spot->s.origin, origin );
ADDRFP4 12
INDIRP4
ADDRLP4 0
INDIRP4
CNSTI4 92
ADDP4
INDIRB
ASGNB 12
line 1303
;1303:	VectorCopy( spot->s.angles, angles );
ADDRFP4 16
INDIRP4
ADDRLP4 0
INDIRP4
CNSTI4 116
ADDP4
INDIRB
ASGNB 12
line 1304
;1304:	origin[2] += 9.0f;
ADDRLP4 8
ADDRFP4 12
INDIRP4
CNSTI4 8
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRF4
CNSTF4 1091567616
ADDF4
ASGNF4
line 1306
;1305:
;1306:	return spot;
ADDRLP4 0
INDIRP4
RETP4
LABELV $591
endproc SelectCTFSpawnPoint 12 16
proc SortClients 0 0
line 1311
;1307:}
;1308:
;1309:/*---------------------------------------------------------------------------*/
;1310:
;1311:static int QDECL SortClients( const void *a, const void *b ) {
line 1312
;1312:	return *(int *)a - *(int *)b;
ADDRFP4 0
INDIRP4
INDIRI4
ADDRFP4 4
INDIRP4
INDIRI4
SUBI4
RETI4
LABELV $594
endproc SortClients 0 0
export TeamplayInfoMessage
proc TeamplayInfoMessage 1312 32
line 1325
;1313:}
;1314:
;1315:
;1316:/*
;1317:==================
;1318:TeamplayLocationsMessage
;1319:
;1320:Format:
;1321:	clientNum location health armor weapon powerups
;1322:
;1323:==================
;1324:*/
;1325:void TeamplayInfoMessage( gentity_t *ent ) {
line 1335
;1326:	char		entry[ 128 ]; // to fit 6 decimal numbers with spaces
;1327:	char		string[ MAX_STRING_CHARS - 9 ]; // -strlen("tinfo nn ")
;1328:	int			stringlength;
;1329:	int			i, j;
;1330:	gentity_t	*player;
;1331:	int			cnt;
;1332:	int			h, a;
;1333:	int			clients[TEAM_MAXOVERLAY];
;1334:
;1335:	if ( !ent->client->pers.teamInfo )
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 608
ADDP4
INDIRI4
CNSTI4 0
NEI4 $596
line 1336
;1336:		return;
ADDRGP4 $595
JUMPV
LABELV $596
line 1341
;1337:
;1338:	// figure out what client should be on the display
;1339:	// we are limited to 8, but we want to use the top eight players
;1340:	// but in client order (so they don't keep changing position on the overlay)
;1341:	for (i = 0, cnt = 0; i < level.maxclients && cnt < TEAM_MAXOVERLAY; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 8
CNSTI4 0
ASGNI4
ADDRGP4 $601
JUMPV
LABELV $598
line 1342
;1342:		player = g_entities + level.sortedClients[i];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1343
;1343:		if (player->inuse && player->client->sess.sessionTeam ==
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $604
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
NEI4 $604
line 1344
;1344:			ent->client->sess.sessionTeam ) {
line 1345
;1345:			clients[cnt++] = level.sortedClients[i];
ADDRLP4 1304
ADDRLP4 8
INDIRI4
ASGNI4
ADDRLP4 8
ADDRLP4 1304
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 1304
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 1172
ADDP4
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
ASGNI4
line 1346
;1346:		}
LABELV $604
line 1347
;1347:	}
LABELV $599
line 1341
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $601
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
GEI4 $607
ADDRLP4 8
INDIRI4
CNSTI4 32
LTI4 $598
LABELV $607
line 1350
;1348:
;1349:	// We have the top eight players, sort them by clientNum
;1350:	qsort( clients, cnt, sizeof( clients[0] ), SortClients );
ADDRLP4 1172
ARGP4
ADDRLP4 8
INDIRI4
ARGI4
CNSTI4 4
ARGI4
ADDRGP4 SortClients
ARGP4
ADDRGP4 qsort
CALLV
pop
line 1353
;1351:
;1352:	// send the latest information on all clients
;1353:	string[0] = '\0';
ADDRLP4 28
CNSTI1 0
ASGNI1
line 1354
;1354:	stringlength = 0;
ADDRLP4 20
CNSTI4 0
ASGNI4
line 1356
;1355:
;1356:	for (i = 0, cnt = 0; i < level.maxclients && cnt < TEAM_MAXOVERLAY; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 8
CNSTI4 0
ASGNI4
ADDRGP4 $611
JUMPV
LABELV $608
line 1357
;1357:		player = g_entities + i;
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1358
;1358:		if ( player->inuse && player->client->sess.sessionTeam ==
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $613
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
NEI4 $613
line 1359
;1359:			ent->client->sess.sessionTeam ) {
line 1361
;1360:
;1361:			h = player->client->ps.stats[STAT_HEALTH];
ADDRLP4 12
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 184
ADDP4
INDIRI4
ASGNI4
line 1362
;1362:			a = player->client->ps.stats[STAT_ARMOR];
ADDRLP4 16
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 196
ADDP4
INDIRI4
ASGNI4
line 1363
;1363:			if (h < 0) h = 0;
ADDRLP4 12
INDIRI4
CNSTI4 0
GEI4 $615
ADDRLP4 12
CNSTI4 0
ASGNI4
LABELV $615
line 1364
;1364:			if (a < 0) a = 0;
ADDRLP4 16
INDIRI4
CNSTI4 0
GEI4 $617
ADDRLP4 16
CNSTI4 0
ASGNI4
LABELV $617
line 1366
;1365:
;1366:			j = BG_sprintf( entry, " %i %i %i %i %i %i",
ADDRLP4 1043
ARGP4
ADDRGP4 $619
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 556
ADDP4
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRLP4 16
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 144
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 188
ADDP4
INDIRI4
ARGI4
ADDRLP4 1308
ADDRGP4 BG_sprintf
CALLI4
ASGNI4
ADDRLP4 24
ADDRLP4 1308
INDIRI4
ASGNI4
line 1370
;1367://				level.sortedClients[i], player->client->pers.teamState.location, h, a, 
;1368:				i, player->client->pers.teamState.location, h, a, 
;1369:				player->client->ps.weapon, player->s.powerups);
;1370:			if ( stringlength + j >= sizeof( string ) )
ADDRLP4 20
INDIRI4
ADDRLP4 24
INDIRI4
ADDI4
CVIU4 4
CNSTU4 1015
LTU4 $620
line 1371
;1371:				break;
ADDRGP4 $610
JUMPV
LABELV $620
line 1372
;1372:			strcpy( string + stringlength, entry );
ADDRLP4 20
INDIRI4
ADDRLP4 28
ADDP4
ARGP4
ADDRLP4 1043
ARGP4
ADDRGP4 strcpy
CALLP4
pop
line 1373
;1373:			stringlength += j;
ADDRLP4 20
ADDRLP4 20
INDIRI4
ADDRLP4 24
INDIRI4
ADDI4
ASGNI4
line 1374
;1374:			cnt++;
ADDRLP4 8
ADDRLP4 8
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1375
;1375:		}
LABELV $613
line 1376
;1376:	}
LABELV $609
line 1356
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $611
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
GEI4 $622
ADDRLP4 8
INDIRI4
CNSTI4 32
LTI4 $608
LABELV $622
LABELV $610
line 1378
;1377:
;1378:	trap_SendServerCommand( ent-g_entities, va( "tinfo %i %s", cnt, string ) );
ADDRGP4 $623
ARGP4
ADDRLP4 8
INDIRI4
ARGI4
ADDRLP4 28
ARGP4
ADDRLP4 1300
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRP4
CVPU4 4
ADDRGP4 g_entities
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 816
DIVI4
ARGI4
ADDRLP4 1300
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1379
;1379:}
LABELV $595
endproc TeamplayInfoMessage 1312 32
export CheckTeamStatus
proc CheckTeamStatus 20 4
line 1382
;1380:
;1381:
;1382:void CheckTeamStatus( void ) {
line 1386
;1383:	int i;
;1384:	gentity_t *loc, *ent;
;1385:
;1386:	if (level.time - level.lastTeamLocationTime > TEAM_LOCATION_UPDATE_TIME) {
ADDRGP4 level+32
INDIRI4
ADDRGP4 level+64
INDIRI4
SUBI4
CNSTI4 1000
LEI4 $625
line 1388
;1387:
;1388:		level.lastTeamLocationTime = level.time;
ADDRGP4 level+64
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1390
;1389:
;1390:		for (i = 0; i < level.maxclients; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $634
JUMPV
LABELV $631
line 1391
;1391:			ent = g_entities + i;
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1393
;1392:
;1393:			if ( ent->client->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $636
line 1394
;1394:				continue;
ADDRGP4 $632
JUMPV
LABELV $636
line 1397
;1395:			}
;1396:
;1397:			if (ent->inuse && (ent->client->sess.sessionTeam == TEAM_RED ||	ent->client->sess.sessionTeam == TEAM_BLUE)) {
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $638
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 1
EQI4 $640
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 2
NEI4 $638
LABELV $640
line 1398
;1398:				loc = Team_GetLocation( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 16
ADDRGP4 Team_GetLocation
CALLP4
ASGNP4
ADDRLP4 8
ADDRLP4 16
INDIRP4
ASGNP4
line 1399
;1399:				if (loc)
ADDRLP4 8
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $641
line 1400
;1400:					ent->client->pers.teamState.location = loc->health;
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 556
ADDP4
ADDRLP4 8
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
ASGNI4
ADDRGP4 $642
JUMPV
LABELV $641
line 1402
;1401:				else
;1402:					ent->client->pers.teamState.location = 0;
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 556
ADDP4
CNSTI4 0
ASGNI4
LABELV $642
line 1403
;1403:			}
LABELV $638
line 1404
;1404:		}
LABELV $632
line 1390
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $634
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $631
line 1406
;1405:
;1406:		for (i = 0; i < level.maxclients; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $646
JUMPV
LABELV $643
line 1407
;1407:			ent = g_entities + i;
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1409
;1408:
;1409:			if ( ent->client->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $648
line 1410
;1410:				continue;
ADDRGP4 $644
JUMPV
LABELV $648
line 1413
;1411:			}
;1412:
;1413:			if (ent->inuse && (ent->client->sess.sessionTeam == TEAM_RED ||	ent->client->sess.sessionTeam == TEAM_BLUE)) {
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $650
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 1
EQI4 $652
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 2
NEI4 $650
LABELV $652
line 1414
;1414:				TeamplayInfoMessage( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 TeamplayInfoMessage
CALLV
pop
line 1415
;1415:			}
LABELV $650
line 1416
;1416:		}
LABELV $644
line 1406
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $646
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $643
line 1417
;1417:	}
LABELV $625
line 1418
;1418:}
LABELV $624
endproc CheckTeamStatus 20 4
export SP_team_CTF_redplayer
proc SP_team_CTF_redplayer 0 0
line 1425
;1419:
;1420:/*-----------------------------------------------------------------*/
;1421:
;1422:/*QUAKED team_CTF_redplayer (1 0 0) (-16 -16 -16) (16 16 32)
;1423:Only in CTF games.  Red players spawn here at game start.
;1424:*/
;1425:void SP_team_CTF_redplayer( gentity_t *ent ) {
line 1426
;1426:}
LABELV $653
endproc SP_team_CTF_redplayer 0 0
export SP_team_CTF_blueplayer
proc SP_team_CTF_blueplayer 0 0
line 1432
;1427:
;1428:
;1429:/*QUAKED team_CTF_blueplayer (0 0 1) (-16 -16 -16) (16 16 32)
;1430:Only in CTF games.  Blue players spawn here at game start.
;1431:*/
;1432:void SP_team_CTF_blueplayer( gentity_t *ent ) {
line 1433
;1433:}
LABELV $654
endproc SP_team_CTF_blueplayer 0 0
export SP_team_CTF_redspawn
proc SP_team_CTF_redspawn 0 0
line 1440
;1434:
;1435:
;1436:/*QUAKED team_CTF_redspawn (1 0 0) (-16 -16 -24) (16 16 32)
;1437:potential spawning position for red team in CTF games.
;1438:Targets will be fired when someone spawns in on them.
;1439:*/
;1440:void SP_team_CTF_redspawn(gentity_t *ent) {
line 1441
;1441:}
LABELV $655
endproc SP_team_CTF_redspawn 0 0
export SP_team_CTF_bluespawn
proc SP_team_CTF_bluespawn 0 0
line 1447
;1442:
;1443:/*QUAKED team_CTF_bluespawn (0 0 1) (-16 -16 -24) (16 16 32)
;1444:potential spawning position for blue team in CTF games.
;1445:Targets will be fired when someone spawns in on them.
;1446:*/
;1447:void SP_team_CTF_bluespawn(gentity_t *ent) {
line 1448
;1448:}
LABELV $656
endproc SP_team_CTF_bluespawn 0 0
import IsBot
bss
export neutralObelisk
align 4
LABELV neutralObelisk
skip 4
export teamgame
align 4
LABELV teamgame
skip 36
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
import g_randomMap
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
import CheckObeliskAttack
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
LABELV $623
byte 1 116
byte 1 105
byte 1 110
byte 1 102
byte 1 111
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $619
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 0
align 1
LABELV $562
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $561
byte 1 37
byte 1 99
byte 1 37
byte 1 99
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 0
align 1
LABELV $535
byte 1 68
byte 1 111
byte 1 110
byte 1 39
byte 1 116
byte 1 32
byte 1 107
byte 1 110
byte 1 111
byte 1 119
byte 1 32
byte 1 119
byte 1 104
byte 1 97
byte 1 116
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 111
byte 1 110
byte 1 46
byte 1 10
byte 1 0
align 1
LABELV $526
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 94
byte 1 51
byte 1 103
byte 1 111
byte 1 116
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 33
byte 1 10
byte 1 0
align 1
LABELV $503
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 33
byte 1 10
byte 1 0
align 1
LABELV $499
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 94
byte 1 51
byte 1 114
byte 1 101
byte 1 116
byte 1 117
byte 1 114
byte 1 110
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 33
byte 1 10
byte 1 0
align 1
LABELV $479
byte 1 84
byte 1 104
byte 1 101
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 32
byte 1 104
byte 1 97
byte 1 115
byte 1 32
byte 1 114
byte 1 101
byte 1 116
byte 1 117
byte 1 114
byte 1 110
byte 1 101
byte 1 100
byte 1 33
byte 1 10
byte 1 0
align 1
LABELV $478
byte 1 84
byte 1 104
byte 1 101
byte 1 32
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 32
byte 1 104
byte 1 97
byte 1 115
byte 1 32
byte 1 114
byte 1 101
byte 1 116
byte 1 117
byte 1 114
byte 1 110
byte 1 101
byte 1 100
byte 1 33
byte 1 10
byte 1 0
align 1
LABELV $472
byte 1 87
byte 1 97
byte 1 114
byte 1 110
byte 1 105
byte 1 110
byte 1 103
byte 1 58
byte 1 32
byte 1 32
byte 1 78
byte 1 85
byte 1 76
byte 1 76
byte 1 32
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 95
byte 1 67
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 70
byte 1 108
byte 1 97
byte 1 103
byte 1 83
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $443
byte 1 87
byte 1 97
byte 1 114
byte 1 110
byte 1 105
byte 1 110
byte 1 103
byte 1 58
byte 1 32
byte 1 32
byte 1 78
byte 1 85
byte 1 76
byte 1 76
byte 1 32
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 95
byte 1 84
byte 1 97
byte 1 107
byte 1 101
byte 1 70
byte 1 108
byte 1 97
byte 1 103
byte 1 83
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $437
byte 1 87
byte 1 97
byte 1 114
byte 1 110
byte 1 105
byte 1 110
byte 1 103
byte 1 58
byte 1 32
byte 1 32
byte 1 78
byte 1 85
byte 1 76
byte 1 76
byte 1 32
byte 1 112
byte 1 97
byte 1 115
byte 1 115
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 95
byte 1 82
byte 1 101
byte 1 116
byte 1 117
byte 1 114
byte 1 110
byte 1 70
byte 1 108
byte 1 97
byte 1 103
byte 1 83
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 10
byte 1 0
align 1
LABELV $424
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 95
byte 1 67
byte 1 84
byte 1 70
byte 1 95
byte 1 110
byte 1 101
byte 1 117
byte 1 116
byte 1 114
byte 1 97
byte 1 108
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 0
align 1
LABELV $370
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 95
byte 1 67
byte 1 84
byte 1 70
byte 1 95
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 0
align 1
LABELV $368
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 95
byte 1 67
byte 1 84
byte 1 70
byte 1 95
byte 1 114
byte 1 101
byte 1 100
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 0
align 1
LABELV $348
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 103
byte 1 101
byte 1 100
byte 1 32
byte 1 37
byte 1 115
byte 1 39
byte 1 115
byte 1 32
byte 1 115
byte 1 107
byte 1 117
byte 1 108
byte 1 108
byte 1 32
byte 1 99
byte 1 97
byte 1 114
byte 1 114
byte 1 105
byte 1 101
byte 1 114
byte 1 33
byte 1 10
byte 1 0
align 1
LABELV $337
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 103
byte 1 101
byte 1 100
byte 1 32
byte 1 37
byte 1 115
byte 1 39
byte 1 115
byte 1 32
byte 1 102
byte 1 108
byte 1 97
byte 1 103
byte 1 32
byte 1 99
byte 1 97
byte 1 114
byte 1 114
byte 1 105
byte 1 101
byte 1 114
byte 1 33
byte 1 10
byte 1 0
align 1
LABELV $231
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 84
byte 1 101
byte 1 97
byte 1 109
byte 1 115
byte 1 32
byte 1 104
byte 1 97
byte 1 118
byte 1 101
byte 1 32
byte 1 98
byte 1 101
byte 1 101
byte 1 110
byte 1 32
byte 1 115
byte 1 104
byte 1 117
byte 1 102
byte 1 102
byte 1 108
byte 1 101
byte 1 100
byte 1 33
byte 1 34
byte 1 0
align 1
LABELV $200
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 0
align 1
LABELV $176
byte 1 114
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $105
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 34
byte 1 0
align 1
LABELV $100
byte 1 80
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 77
byte 1 115
byte 1 103
byte 1 32
byte 1 111
byte 1 118
byte 1 101
byte 1 114
byte 1 114
byte 1 117
byte 1 110
byte 1 0
align 1
LABELV $95
byte 1 94
byte 1 55
byte 1 0
align 1
LABELV $94
byte 1 94
byte 1 51
byte 1 0
align 1
LABELV $91
byte 1 94
byte 1 52
byte 1 0
align 1
LABELV $88
byte 1 94
byte 1 49
byte 1 0
align 1
LABELV $77
byte 1 70
byte 1 82
byte 1 69
byte 1 69
byte 1 0
align 1
LABELV $76
byte 1 83
byte 1 80
byte 1 69
byte 1 67
byte 1 84
byte 1 65
byte 1 84
byte 1 79
byte 1 82
byte 1 0
align 1
LABELV $73
byte 1 66
byte 1 76
byte 1 85
byte 1 69
byte 1 0
align 1
LABELV $70
byte 1 82
byte 1 69
byte 1 68
byte 1 0

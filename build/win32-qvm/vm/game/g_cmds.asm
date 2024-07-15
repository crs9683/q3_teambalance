data
export shuffleTeamsInProgress
align 4
LABELV shuffleTeamsInProgress
byte 4 0
export DeathmatchScoreboardMessage
code
proc DeathmatchScoreboardMessage 1344 64
file "..\..\..\..\code\game\g_cmds.c"
line 17
;1:// Copyright (C) 1999-2000 Id Software, Inc.
;2://
;3:#include "g_local.h"
;4:
;5:int shuffleTeamsInProgress = 0; // 0 means not in progress, 1 means in progress
;6:
;7:#ifdef MISSIONPACK
;8:#include "../../ui/menudef.h"			// for the voice chats
;9:#endif
;10:
;11:/*
;12:==================
;13:DeathmatchScoreboardMessage
;14:
;15:==================
;16:*/
;17:void DeathmatchScoreboardMessage( gentity_t *ent ) {
line 26
;18:	char		entry[256]; // enough to hold 14 integers
;19:	char		string[MAX_STRING_CHARS-1];
;20:	int			stringlength;
;21:	int			i, j, ping, prefix;
;22:	gclient_t	*cl;
;23:	int			numSorted, scoreFlags, accuracy, perfect;
;24:
;25:	// send the latest information on all clients
;26:	string[0] = '\0';
ADDRLP4 16
CNSTI1 0
ASGNI1
line 27
;27:	stringlength = 0;
ADDRLP4 8
CNSTI4 0
ASGNI4
line 28
;28:	scoreFlags = 0;
ADDRLP4 1316
CNSTI4 0
ASGNI4
line 30
;29:
;30:	numSorted = level.numConnectedClients;
ADDRLP4 1308
ADDRGP4 level+76
INDIRI4
ASGNI4
line 33
;31:
;32:	// estimate prefix length to avoid oversize of final string
;33:	prefix = BG_sprintf( entry, "scores %i %i %i", level.teamScores[TEAM_RED], level.teamScores[TEAM_BLUE], numSorted );
ADDRLP4 1039
ARGP4
ADDRGP4 $57
ARGP4
ADDRGP4 level+48+4
INDIRI4
ARGI4
ADDRGP4 level+48+8
INDIRI4
ARGI4
ADDRLP4 1308
INDIRI4
ARGI4
ADDRLP4 1320
ADDRGP4 BG_sprintf
CALLI4
ASGNI4
ADDRLP4 1312
ADDRLP4 1320
INDIRI4
ASGNI4
line 35
;34:	
;35:	for ( i = 0 ; i < numSorted ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $65
JUMPV
LABELV $62
line 37
;36:
;37:		cl = &level.clients[level.sortedClients[i]];
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
line 39
;38:
;39:		if ( cl->pers.connected == CON_CONNECTING ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $67
line 40
;40:			ping = -1;
ADDRLP4 1296
CNSTI4 -1
ASGNI4
line 41
;41:		} else {
ADDRGP4 $68
JUMPV
LABELV $67
line 42
;42:			ping = cl->ps.ping < 999 ? cl->ps.ping : 999;
ADDRLP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRI4
CNSTI4 999
GEI4 $70
ADDRLP4 1324
ADDRLP4 0
INDIRP4
CNSTI4 452
ADDP4
INDIRI4
ASGNI4
ADDRGP4 $71
JUMPV
LABELV $70
ADDRLP4 1324
CNSTI4 999
ASGNI4
LABELV $71
ADDRLP4 1296
ADDRLP4 1324
INDIRI4
ASGNI4
line 43
;43:		}
LABELV $68
line 45
;44:
;45:		if( cl->accuracy_shots ) {
ADDRLP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CNSTI4 0
EQI4 $72
line 46
;46:			accuracy = cl->accuracy_hits * 100 / cl->accuracy_shots;
ADDRLP4 1300
ADDRLP4 0
INDIRP4
CNSTI4 736
ADDP4
INDIRI4
CNSTI4 100
MULI4
ADDRLP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
DIVI4
ASGNI4
line 47
;47:		} else {
ADDRGP4 $73
JUMPV
LABELV $72
line 48
;48:			accuracy = 0;
ADDRLP4 1300
CNSTI4 0
ASGNI4
line 49
;49:		}
LABELV $73
line 51
;50:
;51:		perfect = ( cl->ps.persistant[PERS_RANK] == 0 && cl->ps.persistant[PERS_KILLED] == 0 ) ? 1 : 0;
ADDRLP4 0
INDIRP4
CNSTI4 256
ADDP4
INDIRI4
CNSTI4 0
NEI4 $75
ADDRLP4 0
INDIRP4
CNSTI4 280
ADDP4
INDIRI4
CNSTI4 0
NEI4 $75
ADDRLP4 1324
CNSTI4 1
ASGNI4
ADDRGP4 $76
JUMPV
LABELV $75
ADDRLP4 1324
CNSTI4 0
ASGNI4
LABELV $76
ADDRLP4 1304
ADDRLP4 1324
INDIRI4
ASGNI4
line 53
;52:
;53:		j = BG_sprintf( entry, " %i %i %i %i %i %i %i %i %i %i %i %i %i %i",
ADDRLP4 1039
ARGP4
ADDRGP4 $77
ARGP4
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
CNSTI4 248
ADDP4
INDIRI4
ARGI4
ADDRLP4 1296
INDIRI4
ARGI4
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 548
ADDP4
INDIRI4
SUBI4
CNSTI4 60000
DIVI4
ARGI4
ADDRLP4 1316
INDIRI4
ARGI4
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+88
ADDP4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+188
ADDP4
INDIRI4
ARGI4
ADDRLP4 1300
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 284
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 288
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 300
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 292
ADDP4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 296
ADDP4
INDIRI4
ARGI4
ADDRLP4 1304
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 304
ADDP4
INDIRI4
ARGI4
ADDRLP4 1340
ADDRGP4 BG_sprintf
CALLI4
ASGNI4
ADDRLP4 12
ADDRLP4 1340
INDIRI4
ASGNI4
line 69
;54:			level.sortedClients[i],
;55:			cl->ps.persistant[PERS_SCORE],
;56:			ping,
;57:			(level.time - cl->pers.enterTime)/60000,
;58:			scoreFlags,
;59:			g_entities[level.sortedClients[i]].s.powerups,
;60:			accuracy, 
;61:			cl->ps.persistant[PERS_IMPRESSIVE_COUNT],
;62:			cl->ps.persistant[PERS_EXCELLENT_COUNT],
;63:			cl->ps.persistant[PERS_GAUNTLET_FRAG_COUNT], 
;64:			cl->ps.persistant[PERS_DEFEND_COUNT], 
;65:			cl->ps.persistant[PERS_ASSIST_COUNT], 
;66:			perfect,
;67:			cl->ps.persistant[PERS_CAPTURES]);
;68:
;69:		if ( stringlength + j + prefix >= sizeof( string ) )
ADDRLP4 8
INDIRI4
ADDRLP4 12
INDIRI4
ADDI4
ADDRLP4 1312
INDIRI4
ADDI4
CVIU4 4
CNSTU4 1023
LTU4 $82
line 70
;70:			break;
ADDRGP4 $64
JUMPV
LABELV $82
line 72
;71:
;72:		strcpy( string + stringlength, entry );
ADDRLP4 8
INDIRI4
ADDRLP4 16
ADDP4
ARGP4
ADDRLP4 1039
ARGP4
ADDRGP4 strcpy
CALLP4
pop
line 73
;73:		stringlength += j;
ADDRLP4 8
ADDRLP4 8
INDIRI4
ADDRLP4 12
INDIRI4
ADDI4
ASGNI4
line 74
;74:	}
LABELV $63
line 35
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $65
ADDRLP4 4
INDIRI4
ADDRLP4 1308
INDIRI4
LTI4 $62
LABELV $64
line 76
;75:
;76:	trap_SendServerCommand( ent-g_entities, va( "scores %i %i %i%s", i,
ADDRGP4 $84
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
ADDRGP4 level+48+4
INDIRI4
ARGI4
ADDRGP4 level+48+8
INDIRI4
ARGI4
ADDRLP4 16
ARGP4
ADDRLP4 1324
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
ADDRLP4 1324
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 79
;77:		level.teamScores[TEAM_RED], level.teamScores[TEAM_BLUE],
;78:		string ) );
;79:}
LABELV $55
endproc DeathmatchScoreboardMessage 1344 64
export Cmd_Score_f
proc Cmd_Score_f 0 4
line 89
;80:
;81:
;82:/*
;83:==================
;84:Cmd_Score_f
;85:
;86:Request current scoreboard information
;87:==================
;88:*/
;89:void Cmd_Score_f( gentity_t *ent ) {
line 90
;90:	DeathmatchScoreboardMessage( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 DeathmatchScoreboardMessage
CALLV
pop
line 91
;91:}
LABELV $89
endproc Cmd_Score_f 0 4
export CheatsOk
proc CheatsOk 0 8
line 99
;92:
;93:
;94:/*
;95:==================
;96:CheatsOk
;97:==================
;98:*/
;99:qboolean	CheatsOk( gentity_t *ent ) {
line 100
;100:	if ( !g_cheats.integer ) {
ADDRGP4 g_cheats+12
INDIRI4
CNSTI4 0
NEI4 $91
line 101
;101:		trap_SendServerCommand( ent-g_entities, "print \"Cheats are not enabled on this server.\n\"");
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
ADDRGP4 $94
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 102
;102:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $90
JUMPV
LABELV $91
line 104
;103:	}
;104:	if ( ent->health <= 0 ) {
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CNSTI4 0
GTI4 $95
line 105
;105:		trap_SendServerCommand( ent-g_entities, "print \"You must be alive to use this command.\n\"");
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
ADDRGP4 $97
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 106
;106:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $90
JUMPV
LABELV $95
line 108
;107:	}
;108:	return qtrue;
CNSTI4 1
RETI4
LABELV $90
endproc CheatsOk 0 8
bss
align 1
LABELV $99
skip 1024
export ConcatArgs
code
proc ConcatArgs 1048 12
line 117
;109:}
;110:
;111:
;112:/*
;113:==================
;114:ConcatArgs
;115:==================
;116:*/
;117:char *ConcatArgs( int start ) {
line 123
;118:	static char line[MAX_STRING_CHARS];
;119:	char	arg[MAX_STRING_CHARS];
;120:	int		i, c, tlen;
;121:	int		len;
;122:
;123:	len = 0;
ADDRLP4 0
CNSTI4 0
ASGNI4
line 124
;124:	c = trap_Argc();
ADDRLP4 1040
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 1036
ADDRLP4 1040
INDIRI4
ASGNI4
line 125
;125:	for ( i = start ; i < c ; i++ ) {
ADDRLP4 4
ADDRFP4 0
INDIRI4
ASGNI4
ADDRGP4 $103
JUMPV
LABELV $100
line 126
;126:		trap_Argv( i, arg, sizeof( arg ) );
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 8
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 127
;127:		tlen = (int)strlen( arg );
ADDRLP4 8
ARGP4
ADDRLP4 1044
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 1032
ADDRLP4 1044
INDIRI4
ASGNI4
line 128
;128:		if ( len + tlen >= sizeof( line )-1 ) {
ADDRLP4 0
INDIRI4
ADDRLP4 1032
INDIRI4
ADDI4
CVIU4 4
CNSTU4 1023
LTU4 $104
line 129
;129:			break;
ADDRGP4 $102
JUMPV
LABELV $104
line 131
;130:		}
;131:		memcpy( line + len, arg, tlen );
ADDRLP4 0
INDIRI4
ADDRGP4 $99
ADDP4
ARGP4
ADDRLP4 8
ARGP4
ADDRLP4 1032
INDIRI4
ARGI4
ADDRGP4 memcpy
CALLP4
pop
line 132
;132:		len += tlen;
ADDRLP4 0
ADDRLP4 0
INDIRI4
ADDRLP4 1032
INDIRI4
ADDI4
ASGNI4
line 133
;133:		if ( i != c - 1 ) {
ADDRLP4 4
INDIRI4
ADDRLP4 1036
INDIRI4
CNSTI4 1
SUBI4
EQI4 $106
line 134
;134:			line[len] = ' ';
ADDRLP4 0
INDIRI4
ADDRGP4 $99
ADDP4
CNSTI1 32
ASGNI1
line 135
;135:			len++;
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 136
;136:		}
LABELV $106
line 137
;137:	}
LABELV $101
line 125
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $103
ADDRLP4 4
INDIRI4
ADDRLP4 1036
INDIRI4
LTI4 $100
LABELV $102
line 139
;138:
;139:	line[len] = '\0';
ADDRLP4 0
INDIRI4
ADDRGP4 $99
ADDP4
CNSTI1 0
ASGNI1
line 141
;140:
;141:	return line;
ADDRGP4 $99
RETP4
LABELV $98
endproc ConcatArgs 1048 12
export SanitizeString
proc SanitizeString 4 4
line 152
;142:}
;143:
;144:
;145:/*
;146:==================
;147:SanitizeString
;148:
;149:Remove case and control characters
;150:==================
;151:*/
;152:void SanitizeString( const char *in, char *out ) {
ADDRGP4 $110
JUMPV
LABELV $109
line 153
;153:	while ( *in ) {
line 154
;154:		if ( *in == 27 ) {
ADDRFP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 27
NEI4 $112
line 155
;155:			in += 2;		// skip color code
ADDRFP4 0
ADDRFP4 0
INDIRP4
CNSTI4 2
ADDP4
ASGNP4
line 156
;156:			continue;
ADDRGP4 $110
JUMPV
LABELV $112
line 158
;157:		}
;158:		if ( *in < ' ' ) {
ADDRFP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 32
GEI4 $114
line 159
;159:			in++;
ADDRFP4 0
ADDRFP4 0
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
line 160
;160:			continue;
ADDRGP4 $110
JUMPV
LABELV $114
line 162
;161:		}
;162:		*out = tolower( *in );
ADDRFP4 0
INDIRP4
INDIRI1
CVII4 1
ARGI4
ADDRLP4 0
ADDRGP4 tolower
CALLI4
ASGNI4
ADDRFP4 4
INDIRP4
ADDRLP4 0
INDIRI4
CVII1 4
ASGNI1
line 163
;163:		out++;
ADDRFP4 4
ADDRFP4 4
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
line 164
;164:		in++;
ADDRFP4 0
ADDRFP4 0
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
line 165
;165:	}
LABELV $110
line 153
ADDRFP4 0
INDIRP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $109
line 167
;166:
;167:	*out = '\0';
ADDRFP4 4
INDIRP4
CNSTI1 0
ASGNI1
line 168
;168:}
LABELV $108
endproc SanitizeString 4 4
export ClientNumberFromString
proc ClientNumberFromString 2068 8
line 179
;169:
;170:
;171:/*
;172:==================
;173:ClientNumberFromString
;174:
;175:Returns a player number for either a number or name string
;176:Returns -1 if invalid
;177:==================
;178:*/
;179:int ClientNumberFromString( gentity_t *to, char *s ) {
line 186
;180:	gclient_t	*cl;
;181:	int			idnum;
;182:	char		s2[MAX_STRING_CHARS];
;183:	char		n2[MAX_STRING_CHARS];
;184:
;185:	// numeric values are just slot numbers
;186:	if (s[0] >= '0' && s[0] <= '9') {
ADDRLP4 2056
ADDRFP4 4
INDIRP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 2056
INDIRI4
CNSTI4 48
LTI4 $117
ADDRLP4 2056
INDIRI4
CNSTI4 57
GTI4 $117
line 187
;187:		idnum = atoi( s );
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 2060
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 4
ADDRLP4 2060
INDIRI4
ASGNI4
line 188
;188:		if ( (unsigned) idnum >= (unsigned)level.maxclients ) {
ADDRLP4 4
INDIRI4
CVIU4 4
ADDRGP4 level+24
INDIRI4
CVIU4 4
LTU4 $119
line 189
;189:			trap_SendServerCommand( to-g_entities, va("print \"Bad client slot: %i\n\"", idnum));
ADDRGP4 $122
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 2064
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
ADDRLP4 2064
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 190
;190:			return -1;
CNSTI4 -1
RETI4
ADDRGP4 $116
JUMPV
LABELV $119
line 193
;191:		}
;192:
;193:		cl = &level.clients[idnum];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 194
;194:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $123
line 195
;195:			trap_SendServerCommand( to-g_entities, va("print \"Client %i is not active\n\"", idnum));
ADDRGP4 $125
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 2064
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
ADDRLP4 2064
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 196
;196:			return -1;
CNSTI4 -1
RETI4
ADDRGP4 $116
JUMPV
LABELV $123
line 198
;197:		}
;198:		return idnum;
ADDRLP4 4
INDIRI4
RETI4
ADDRGP4 $116
JUMPV
LABELV $117
line 202
;199:	}
;200:
;201:	// check for a name match
;202:	SanitizeString( s, s2 );
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 1032
ARGP4
ADDRGP4 SanitizeString
CALLV
pop
line 203
;203:	for ( idnum=0,cl=level.clients ; idnum < level.maxclients ; idnum++,cl++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRLP4 0
ADDRGP4 level
INDIRP4
ASGNP4
ADDRGP4 $129
JUMPV
LABELV $126
line 204
;204:		if ( cl->pers.connected != CON_CONNECTED ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $131
line 205
;205:			continue;
ADDRGP4 $127
JUMPV
LABELV $131
line 207
;206:		}
;207:		SanitizeString( cl->pers.netname, n2 );
ADDRLP4 0
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 8
ARGP4
ADDRGP4 SanitizeString
CALLV
pop
line 208
;208:		if ( !strcmp( n2, s2 ) ) {
ADDRLP4 8
ARGP4
ADDRLP4 1032
ARGP4
ADDRLP4 2060
ADDRGP4 strcmp
CALLI4
ASGNI4
ADDRLP4 2060
INDIRI4
CNSTI4 0
NEI4 $133
line 209
;209:			return idnum;
ADDRLP4 4
INDIRI4
RETI4
ADDRGP4 $116
JUMPV
LABELV $133
line 211
;210:		}
;211:	}
LABELV $127
line 203
ADDRLP4 4
ADDRLP4 4
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
LABELV $129
ADDRLP4 4
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $126
line 213
;212:
;213:	trap_SendServerCommand( to-g_entities, va("print \"User %s is not on the server\n\"", s));
ADDRGP4 $135
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 2060
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
ADDRLP4 2060
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 214
;214:	return -1;
CNSTI4 -1
RETI4
LABELV $116
endproc ClientNumberFromString 2068 8
export Cmd_Give_f
proc Cmd_Give_f 132 12
line 226
;215:}
;216:
;217:
;218:/*
;219:==================
;220:Cmd_Give_f
;221:
;222:Give items to a client
;223:==================
;224:*/
;225:void Cmd_Give_f( gentity_t *ent )
;226:{
line 234
;227:	char		*name;
;228:	gitem_t		*it;
;229:	int			i;
;230:	qboolean	give_all;
;231:	gentity_t	*it_ent;
;232:	trace_t		trace;
;233:
;234:	if ( !CheatsOk( ent ) ) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 76
ADDRGP4 CheatsOk
CALLI4
ASGNI4
ADDRLP4 76
INDIRI4
CNSTI4 0
NEI4 $137
line 235
;235:		return;
ADDRGP4 $136
JUMPV
LABELV $137
line 238
;236:	}
;237:
;238:	name = ConcatArgs( 1 );
CNSTI4 1
ARGI4
ADDRLP4 80
ADDRGP4 ConcatArgs
CALLP4
ASGNP4
ADDRLP4 4
ADDRLP4 80
INDIRP4
ASGNP4
line 240
;239:
;240:	if (Q_stricmp(name, "all") == 0)
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $141
ARGP4
ADDRLP4 84
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 84
INDIRI4
CNSTI4 0
NEI4 $139
line 241
;241:		give_all = qtrue;
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRGP4 $140
JUMPV
LABELV $139
line 243
;242:	else
;243:		give_all = qfalse;
ADDRLP4 8
CNSTI4 0
ASGNI4
LABELV $140
line 245
;244:
;245:	if (give_all || Q_stricmp( name, "health") == 0)
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $145
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $144
ARGP4
ADDRLP4 88
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 88
INDIRI4
CNSTI4 0
NEI4 $142
LABELV $145
line 246
;246:	{
line 247
;247:		ent->health = ent->client->ps.stats[STAT_MAX_HEALTH];
ADDRLP4 92
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 92
INDIRP4
CNSTI4 732
ADDP4
ADDRLP4 92
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
ASGNI4
line 248
;248:		if (!give_all)
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $146
line 249
;249:			return;
ADDRGP4 $136
JUMPV
LABELV $146
line 250
;250:	}
LABELV $142
line 252
;251:
;252:	if (give_all || Q_stricmp(name, "weapons") == 0)
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $151
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $150
ARGP4
ADDRLP4 92
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 92
INDIRI4
CNSTI4 0
NEI4 $148
LABELV $151
line 253
;253:	{
line 254
;254:		ent->client->ps.stats[STAT_WEAPONS] = (1 << WP_NUM_WEAPONS) - 1 - 
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 192
ADDP4
CNSTI4 1022
ASGNI4
line 256
;255:			( 1 << WP_GRAPPLING_HOOK ) - ( 1 << WP_NONE );
;256:		if (!give_all)
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $152
line 257
;257:			return;
ADDRGP4 $136
JUMPV
LABELV $152
line 258
;258:	}
LABELV $148
line 260
;259:
;260:	if (give_all || Q_stricmp(name, "ammo") == 0)
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $157
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $156
ARGP4
ADDRLP4 96
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 96
INDIRI4
CNSTI4 0
NEI4 $154
LABELV $157
line 261
;261:	{
line 262
;262:		for ( i = 0 ; i < MAX_WEAPONS ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
LABELV $158
line 263
;263:			ent->client->ps.ammo[i] = 999;
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 376
ADDP4
ADDP4
CNSTI4 999
ASGNI4
line 264
;264:		}
LABELV $159
line 262
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 16
LTI4 $158
line 265
;265:		if (!give_all)
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $162
line 266
;266:			return;
ADDRGP4 $136
JUMPV
LABELV $162
line 267
;267:	}
LABELV $154
line 269
;268:
;269:	if (give_all || Q_stricmp(name, "armor") == 0)
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $167
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $166
ARGP4
ADDRLP4 100
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 100
INDIRI4
CNSTI4 0
NEI4 $164
LABELV $167
line 270
;270:	{
line 271
;271:		ent->client->ps.stats[STAT_ARMOR] = 200;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 196
ADDP4
CNSTI4 200
ASGNI4
line 273
;272:
;273:		if (!give_all)
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $168
line 274
;274:			return;
ADDRGP4 $136
JUMPV
LABELV $168
line 275
;275:	}
LABELV $164
line 277
;276:
;277:	if (Q_stricmp(name, "excellent") == 0) {
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $172
ARGP4
ADDRLP4 104
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 104
INDIRI4
CNSTI4 0
NEI4 $170
line 278
;278:		ent->client->ps.persistant[PERS_EXCELLENT_COUNT]++;
ADDRLP4 108
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 288
ADDP4
ASGNP4
ADDRLP4 108
INDIRP4
ADDRLP4 108
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 279
;279:		return;
ADDRGP4 $136
JUMPV
LABELV $170
line 281
;280:	}
;281:	if (Q_stricmp(name, "impressive") == 0) {
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $175
ARGP4
ADDRLP4 108
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 108
INDIRI4
CNSTI4 0
NEI4 $173
line 282
;282:		ent->client->ps.persistant[PERS_IMPRESSIVE_COUNT]++;
ADDRLP4 112
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 284
ADDP4
ASGNP4
ADDRLP4 112
INDIRP4
ADDRLP4 112
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 283
;283:		return;
ADDRGP4 $136
JUMPV
LABELV $173
line 285
;284:	}
;285:	if (Q_stricmp(name, "gauntletaward") == 0) {
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $178
ARGP4
ADDRLP4 112
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 112
INDIRI4
CNSTI4 0
NEI4 $176
line 286
;286:		ent->client->ps.persistant[PERS_GAUNTLET_FRAG_COUNT]++;
ADDRLP4 116
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 300
ADDP4
ASGNP4
ADDRLP4 116
INDIRP4
ADDRLP4 116
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 287
;287:		return;
ADDRGP4 $136
JUMPV
LABELV $176
line 289
;288:	}
;289:	if (Q_stricmp(name, "defend") == 0) {
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $181
ARGP4
ADDRLP4 116
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 116
INDIRI4
CNSTI4 0
NEI4 $179
line 290
;290:		ent->client->ps.persistant[PERS_DEFEND_COUNT]++;
ADDRLP4 120
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 292
ADDP4
ASGNP4
ADDRLP4 120
INDIRP4
ADDRLP4 120
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 291
;291:		return;
ADDRGP4 $136
JUMPV
LABELV $179
line 293
;292:	}
;293:	if (Q_stricmp(name, "assist") == 0) {
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $184
ARGP4
ADDRLP4 120
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 120
INDIRI4
CNSTI4 0
NEI4 $182
line 294
;294:		ent->client->ps.persistant[PERS_ASSIST_COUNT]++;
ADDRLP4 124
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 296
ADDP4
ASGNP4
ADDRLP4 124
INDIRP4
ADDRLP4 124
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 295
;295:		return;
ADDRGP4 $136
JUMPV
LABELV $182
line 299
;296:	}
;297:
;298:	// spawn a specific item right on the player
;299:	if ( !give_all ) {
ADDRLP4 8
INDIRI4
CNSTI4 0
NEI4 $185
line 300
;300:		it = BG_FindItem (name);
ADDRLP4 4
INDIRP4
ARGP4
ADDRLP4 124
ADDRGP4 BG_FindItem
CALLP4
ASGNP4
ADDRLP4 16
ADDRLP4 124
INDIRP4
ASGNP4
line 301
;301:		if (!it) {
ADDRLP4 16
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $187
line 302
;302:			return;
ADDRGP4 $136
JUMPV
LABELV $187
line 305
;303:		}
;304:
;305:		it_ent = G_Spawn();
ADDRLP4 128
ADDRGP4 G_Spawn
CALLP4
ASGNP4
ADDRLP4 12
ADDRLP4 128
INDIRP4
ASGNP4
line 306
;306:		VectorCopy( ent->r.currentOrigin, it_ent->s.origin );
ADDRLP4 12
INDIRP4
CNSTI4 92
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
INDIRB
ASGNB 12
line 307
;307:		it_ent->classname = it->classname;
ADDRLP4 12
INDIRP4
CNSTI4 524
ADDP4
ADDRLP4 16
INDIRP4
INDIRP4
ASGNP4
line 308
;308:		G_SpawnItem (it_ent, it);
ADDRLP4 12
INDIRP4
ARGP4
ADDRLP4 16
INDIRP4
ARGP4
ADDRGP4 G_SpawnItem
CALLV
pop
line 309
;309:		FinishSpawningItem(it_ent );
ADDRLP4 12
INDIRP4
ARGP4
ADDRGP4 FinishSpawningItem
CALLV
pop
line 310
;310:		memset( &trace, 0, sizeof( trace ) );
ADDRLP4 20
ARGP4
CNSTI4 0
ARGI4
CNSTI4 56
ARGI4
ADDRGP4 memset
CALLP4
pop
line 311
;311:		Touch_Item (it_ent, ent, &trace);
ADDRLP4 12
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 20
ARGP4
ADDRGP4 Touch_Item
CALLV
pop
line 312
;312:		if (it_ent->inuse) {
ADDRLP4 12
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $189
line 313
;313:			G_FreeEntity( it_ent );
ADDRLP4 12
INDIRP4
ARGP4
ADDRGP4 G_FreeEntity
CALLV
pop
line 314
;314:		}
LABELV $189
line 315
;315:	}
LABELV $185
line 316
;316:}
LABELV $136
endproc Cmd_Give_f 132 12
export Cmd_God_f
proc Cmd_God_f 16 8
line 329
;317:
;318:
;319:/*
;320:==================
;321:Cmd_God_f
;322:
;323:Sets client to godmode
;324:
;325:argv(0) god
;326:==================
;327:*/
;328:void Cmd_God_f( gentity_t *ent )
;329:{
line 332
;330:	const char *msg;
;331:
;332:	if ( !CheatsOk( ent ) ) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ADDRGP4 CheatsOk
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
NEI4 $192
line 333
;333:		return;
ADDRGP4 $191
JUMPV
LABELV $192
line 336
;334:	}
;335:
;336:	ent->flags ^= FL_GODMODE;
ADDRLP4 8
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 16
BXORI4
ASGNI4
line 337
;337:	if (!(ent->flags & FL_GODMODE) )
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 16
BANDI4
CNSTI4 0
NEI4 $194
line 338
;338:		msg = "godmode OFF\n";
ADDRLP4 0
ADDRGP4 $196
ASGNP4
ADDRGP4 $195
JUMPV
LABELV $194
line 340
;339:	else
;340:		msg = "godmode ON\n";
ADDRLP4 0
ADDRGP4 $197
ASGNP4
LABELV $195
line 342
;341:
;342:	trap_SendServerCommand( ent-g_entities, va( "print \"%s\"", msg ) );
ADDRGP4 $198
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 12
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
ADDRLP4 12
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 343
;343:}
LABELV $191
endproc Cmd_God_f 16 8
export Cmd_Notarget_f
proc Cmd_Notarget_f 16 8
line 355
;344:
;345:
;346:/*
;347:==================
;348:Cmd_Notarget_f
;349:
;350:Sets client to notarget
;351:
;352:argv(0) notarget
;353:==================
;354:*/
;355:void Cmd_Notarget_f( gentity_t *ent ) {
line 358
;356:	const char *msg;
;357:
;358:	if ( !CheatsOk( ent ) ) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ADDRGP4 CheatsOk
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
NEI4 $200
line 359
;359:		return;
ADDRGP4 $199
JUMPV
LABELV $200
line 362
;360:	}
;361:
;362:	ent->flags ^= FL_NOTARGET;
ADDRLP4 8
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 32
BXORI4
ASGNI4
line 363
;363:	if (!(ent->flags & FL_NOTARGET) )
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 32
BANDI4
CNSTI4 0
NEI4 $202
line 364
;364:		msg = "notarget OFF\n";
ADDRLP4 0
ADDRGP4 $204
ASGNP4
ADDRGP4 $203
JUMPV
LABELV $202
line 366
;365:	else
;366:		msg = "notarget ON\n";
ADDRLP4 0
ADDRGP4 $205
ASGNP4
LABELV $203
line 368
;367:
;368:	trap_SendServerCommand( ent-g_entities, va( "print \"%s\"", msg ) );
ADDRGP4 $198
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 12
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
ADDRLP4 12
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 369
;369:}
LABELV $199
endproc Cmd_Notarget_f 16 8
export Cmd_Noclip_f
proc Cmd_Noclip_f 20 8
line 379
;370:
;371:
;372:/*
;373:==================
;374:Cmd_Noclip_f
;375:
;376:argv(0) noclip
;377:==================
;378:*/
;379:void Cmd_Noclip_f( gentity_t *ent ) {
line 382
;380:	const char *msg;
;381:
;382:	if ( !CheatsOk( ent ) ) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ADDRGP4 CheatsOk
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 0
NEI4 $207
line 383
;383:		return;
ADDRGP4 $206
JUMPV
LABELV $207
line 386
;384:	}
;385:
;386:	if ( ent->client->noclip ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 668
ADDP4
INDIRI4
CNSTI4 0
EQI4 $209
line 387
;387:		msg = "noclip OFF\n";
ADDRLP4 0
ADDRGP4 $211
ASGNP4
line 388
;388:	} else {
ADDRGP4 $210
JUMPV
LABELV $209
line 389
;389:		msg = "noclip ON\n";
ADDRLP4 0
ADDRGP4 $212
ASGNP4
line 390
;390:	}
LABELV $210
line 391
;391:	ent->client->noclip = !ent->client->noclip;
ADDRLP4 12
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 12
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 668
ADDP4
INDIRI4
CNSTI4 0
NEI4 $214
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRGP4 $215
JUMPV
LABELV $214
ADDRLP4 8
CNSTI4 0
ASGNI4
LABELV $215
ADDRLP4 12
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 668
ADDP4
ADDRLP4 8
INDIRI4
ASGNI4
line 393
;392:
;393:	trap_SendServerCommand( ent-g_entities, va("print \"%s\"", msg));
ADDRGP4 $198
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 16
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
ADDRLP4 16
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 394
;394:}
LABELV $206
endproc Cmd_Noclip_f 20 8
export Cmd_LevelShot_f
proc Cmd_LevelShot_f 4 8
line 407
;395:
;396:
;397:/*
;398:==================
;399:Cmd_LevelShot_f
;400:
;401:This is just to help generate the level pictures
;402:for the menus.  It goes to the intermission immediately
;403:and sends over a command to the client to resize the view,
;404:hide the scoreboard, and take a special screenshot
;405:==================
;406:*/
;407:void Cmd_LevelShot_f( gentity_t *ent ) {
line 408
;408:	if ( !CheatsOk( ent ) ) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
ADDRGP4 CheatsOk
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
NEI4 $217
line 409
;409:		return;
ADDRGP4 $216
JUMPV
LABELV $217
line 413
;410:	}
;411:
;412:	// doesn't work in single player
;413:	if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 2
NEI4 $219
line 414
;414:		trap_SendServerCommand( ent-g_entities, 
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
ADDRGP4 $222
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 416
;415:			"print \"Must be in g_gametype 0 for levelshot\n\"" );
;416:		return;
ADDRGP4 $216
JUMPV
LABELV $219
line 419
;417:	}
;418:
;419:	if ( !ent->client->pers.localClient )
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 496
ADDP4
INDIRI4
CNSTI4 0
NEI4 $223
line 420
;420:	{
line 421
;421:		trap_SendServerCommand( ent - g_entities,
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
ADDRGP4 $225
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 423
;422:			"print \"The levelshot command must be executed by a local client\n\"" );
;423:		return;
ADDRGP4 $216
JUMPV
LABELV $223
line 426
;424:	}
;425:
;426:	BeginIntermission();
ADDRGP4 BeginIntermission
CALLV
pop
line 427
;427:	trap_SendServerCommand( ent-g_entities, "clientLevelShot" );
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
ADDRGP4 $226
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 428
;428:}
LABELV $216
endproc Cmd_LevelShot_f 4 8
export Cmd_TeamTask_f
proc Cmd_TeamTask_f 2068 12
line 436
;429:
;430:
;431:/*
;432:==================
;433:Cmd_TeamTask_f
;434:==================
;435:*/
;436:void Cmd_TeamTask_f( gentity_t *ent ) {
line 440
;437:	char userinfo[MAX_INFO_STRING];
;438:	char arg[MAX_TOKEN_CHARS];
;439:	int task;
;440:	int client = ent->client - level.clients;
ADDRLP4 1024
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
ADDRGP4 level
INDIRP4
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 1580
DIVI4
ASGNI4
line 442
;441:
;442:	if ( trap_Argc() != 2 ) {
ADDRLP4 2056
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 2056
INDIRI4
CNSTI4 2
EQI4 $228
line 443
;443:		return;
ADDRGP4 $227
JUMPV
LABELV $228
line 445
;444:	}
;445:	trap_Argv( 1, arg, sizeof( arg ) );
CNSTI4 1
ARGI4
ADDRLP4 1028
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 446
;446:	task = atoi( arg );
ADDRLP4 1028
ARGP4
ADDRLP4 2060
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 2052
ADDRLP4 2060
INDIRI4
ASGNI4
line 448
;447:
;448:	trap_GetUserinfo( client, userinfo, sizeof( userinfo ) );
ADDRLP4 1024
INDIRI4
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_GetUserinfo
CALLV
pop
line 449
;449:	Info_SetValueForKey( userinfo, "teamtask", va( "%d", task ) );
ADDRGP4 $231
ARGP4
ADDRLP4 2052
INDIRI4
ARGI4
ADDRLP4 2064
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 0
ARGP4
ADDRGP4 $230
ARGP4
ADDRLP4 2064
INDIRP4
ARGP4
ADDRGP4 Info_SetValueForKey
CALLI4
pop
line 450
;450:	trap_SetUserinfo( client, userinfo );
ADDRLP4 1024
INDIRI4
ARGI4
ADDRLP4 0
ARGP4
ADDRGP4 trap_SetUserinfo
CALLV
pop
line 451
;451:	ClientUserinfoChanged( client );
ADDRLP4 1024
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 452
;452:}
LABELV $227
endproc Cmd_TeamTask_f 2068 12
export Cmd_Kill_f
proc Cmd_Kill_f 16 20
line 460
;453:
;454:
;455:/*
;456:=================
;457:Cmd_Kill_f
;458:=================
;459:*/
;460:void Cmd_Kill_f( gentity_t *ent ) {
line 461
;461:	if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $233
line 462
;462:		return;
ADDRGP4 $232
JUMPV
LABELV $233
line 464
;463:	}
;464:	if (ent->health <= 0) {
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CNSTI4 0
GTI4 $235
line 465
;465:		return;
ADDRGP4 $232
JUMPV
LABELV $235
line 467
;466:	}
;467:	ent->flags &= ~FL_GODMODE;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 0
INDIRP4
ADDRLP4 0
INDIRP4
INDIRI4
CNSTI4 -17
BANDI4
ASGNI4
line 468
;468:	ent->client->ps.stats[STAT_HEALTH] = ent->health = -999;
ADDRLP4 4
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 8
CNSTI4 -999
ASGNI4
ADDRLP4 4
INDIRP4
CNSTI4 732
ADDP4
ADDRLP4 8
INDIRI4
ASGNI4
ADDRLP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 184
ADDP4
ADDRLP4 8
INDIRI4
ASGNI4
line 469
;469:	player_die (ent, ent, ent, 100000, MOD_SUICIDE);
ADDRLP4 12
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 12
INDIRP4
ARGP4
ADDRLP4 12
INDIRP4
ARGP4
ADDRLP4 12
INDIRP4
ARGP4
CNSTI4 100000
ARGI4
CNSTI4 20
ARGI4
ADDRGP4 player_die
CALLV
pop
line 470
;470:}
LABELV $232
endproc Cmd_Kill_f 16 20
export BroadcastTeamChange
proc BroadcastTeamChange 8 8
line 481
;471:
;472:
;473:/*
;474:=================
;475:BroadcastTeamChange
;476:
;477:Let everyone know about a team change
;478:=================
;479:*/
;480:void BroadcastTeamChange( gclient_t *client, team_t oldTeam )
;481:{
line 482
;482:	int clientNum = client - level.clients;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CVPU4 4
ADDRGP4 level
INDIRP4
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 1580
DIVI4
ASGNI4
line 484
;483:
;484:	if ( client->sess.sessionTeam == TEAM_RED ) {
ADDRFP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 1
NEI4 $238
line 485
;485:		G_BroadcastServerCommand( clientNum, va("cp \"%s" S_COLOR_WHITE " joined the " S_COLOR_RED "^1RED" S_COLOR_WHITE " ^7team.\n\"",
ADDRGP4 $240
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 487
;486:			client->pers.netname) );
;487:	} else if ( client->sess.sessionTeam == TEAM_BLUE ) {
ADDRGP4 $239
JUMPV
LABELV $238
ADDRFP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 2
NEI4 $241
line 488
;488:		G_BroadcastServerCommand( clientNum, va("cp \"%s" S_COLOR_WHITE " joined the " S_COLOR_BLUE "^4BLUE" S_COLOR_WHITE " ^7team.\n\"",
ADDRGP4 $243
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 490
;489:		client->pers.netname));
;490:	} else if ( client->sess.sessionTeam == TEAM_SPECTATOR && oldTeam != TEAM_SPECTATOR ) {
ADDRGP4 $242
JUMPV
LABELV $241
ADDRFP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $244
ADDRFP4 4
INDIRI4
CNSTI4 3
EQI4 $244
line 491
;491:		G_BroadcastServerCommand( clientNum, va("cp \"%s" S_COLOR_WHITE " joined the ^3SPECTATORS.\n\"",
ADDRGP4 $246
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 493
;492:		client->pers.netname));
;493:	} else if ( client->sess.sessionTeam == TEAM_FREE ) {
ADDRGP4 $245
JUMPV
LABELV $244
ADDRFP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
NEI4 $247
line 494
;494:		G_BroadcastServerCommand( clientNum, va("cp \"%s" S_COLOR_WHITE " joined the battle.\n\"",
ADDRGP4 $249
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 4
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 G_BroadcastServerCommand
CALLV
pop
line 496
;495:		client->pers.netname));
;496:	}
LABELV $247
LABELV $245
LABELV $242
LABELV $239
line 497
;497:}
LABELV $237
endproc BroadcastTeamChange 8 8
export IsBot
proc IsBot 0 0
line 499
;498:
;499:qboolean IsBot(int clientNum) {
line 501
;500:	// Assuming g_entities[clientNum].r.svFlags & SVF_BOT indicates a bot
;501:	return (g_entities[clientNum].r.svFlags & SVF_BOT);
ADDRFP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
RETI4
LABELV $250
endproc IsBot 0 0
proc AllowTeamSwitch 36 8
line 504
;502:}
;503:
;504:static qboolean AllowTeamSwitch(int clientNum, team_t newTeam) {
line 506
;505:	// Allow team switch if ShuffleTeams is in progress
;506:	if (shuffleTeamsInProgress) {
ADDRGP4 shuffleTeamsInProgress
INDIRI4
CNSTI4 0
EQI4 $254
line 507
;507:		return qtrue;
CNSTI4 1
RETI4
ADDRGP4 $253
JUMPV
LABELV $254
line 510
;508:	}
;509:
;510:	if (IsBot(clientNum)) {
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 0
ADDRGP4 IsBot
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $256
line 511
;511:		return qtrue; // Allow bots to switch teams freely
CNSTI4 1
RETI4
ADDRGP4 $253
JUMPV
LABELV $256
line 514
;512:	}
;513:
;514:	if (g_teamForceBalance.integer) {
ADDRGP4 g_teamForceBalance+12
INDIRI4
CNSTI4 0
EQI4 $258
line 518
;515:		int counts[TEAM_NUM_TEAMS];
;516:		int redScore, blueScore;
;517:
;518:		counts[TEAM_BLUE] = TeamCount(clientNum, TEAM_BLUE);
ADDRFP4 0
INDIRI4
ARGI4
CNSTI4 2
ARGI4
ADDRLP4 28
ADDRGP4 TeamCount
CALLI4
ASGNI4
ADDRLP4 4+8
ADDRLP4 28
INDIRI4
ASGNI4
line 519
;519:		counts[TEAM_RED] = TeamCount(clientNum, TEAM_RED);
ADDRFP4 0
INDIRI4
ARGI4
CNSTI4 1
ARGI4
ADDRLP4 32
ADDRGP4 TeamCount
CALLI4
ASGNI4
ADDRLP4 4+4
ADDRLP4 32
INDIRI4
ASGNI4
line 521
;520:
;521:		redScore = level.teamScores[TEAM_RED];
ADDRLP4 20
ADDRGP4 level+48+4
INDIRI4
ASGNI4
line 522
;522:		blueScore = level.teamScores[TEAM_BLUE];
ADDRLP4 24
ADDRGP4 level+48+8
INDIRI4
ASGNI4
line 525
;523:
;524:		// Allow a maximum difference of one player between the teams
;525:		if (newTeam == TEAM_RED && counts[TEAM_RED] - counts[TEAM_BLUE] >= 1) {
ADDRFP4 4
INDIRI4
CNSTI4 1
NEI4 $267
ADDRLP4 4+4
INDIRI4
ADDRLP4 4+8
INDIRI4
SUBI4
CNSTI4 1
LTI4 $267
line 526
;526:			trap_SendServerCommand(clientNum, "cp \"^1RED ^7team has too many players.\n\"");
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 $271
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 527
;527:			return qfalse; // ignore the request
CNSTI4 0
RETI4
ADDRGP4 $253
JUMPV
LABELV $267
line 530
;528:		}
;529:
;530:		if (newTeam == TEAM_BLUE && counts[TEAM_BLUE] - counts[TEAM_RED] >= 1) {
ADDRFP4 4
INDIRI4
CNSTI4 2
NEI4 $272
ADDRLP4 4+8
INDIRI4
ADDRLP4 4+4
INDIRI4
SUBI4
CNSTI4 1
LTI4 $272
line 531
;531:			trap_SendServerCommand(clientNum, "cp \"^4BLUE ^7team has too many players.\n\"");
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 $276
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 532
;532:			return qfalse; // ignore the request
CNSTI4 0
RETI4
ADDRGP4 $253
JUMPV
LABELV $272
line 536
;533:		}
;534:
;535:		// If the teams are even in number of players, prevent switching to the team with the greater score
;536:		if (counts[TEAM_RED] == counts[TEAM_BLUE]) {
ADDRLP4 4+4
INDIRI4
ADDRLP4 4+8
INDIRI4
NEI4 $277
line 537
;537:			if (newTeam == TEAM_RED && redScore > blueScore) {
ADDRFP4 4
INDIRI4
CNSTI4 1
NEI4 $281
ADDRLP4 20
INDIRI4
ADDRLP4 24
INDIRI4
LEI4 $281
line 538
;538:				trap_SendServerCommand(clientNum, "cp \"^1RED ^7team has the lead.\n\"");
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 $283
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 539
;539:				return qfalse; // ignore the request
CNSTI4 0
RETI4
ADDRGP4 $253
JUMPV
LABELV $281
line 541
;540:			}
;541:			if (newTeam == TEAM_BLUE && blueScore > redScore) {
ADDRFP4 4
INDIRI4
CNSTI4 2
NEI4 $284
ADDRLP4 24
INDIRI4
ADDRLP4 20
INDIRI4
LEI4 $284
line 542
;542:				trap_SendServerCommand(clientNum, "cp \"^4BLUE ^7team has the lead.\n\"");
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 $286
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 543
;543:				return qfalse; // ignore the request
CNSTI4 0
RETI4
ADDRGP4 $253
JUMPV
LABELV $284
line 545
;544:			}
;545:		}
LABELV $277
line 548
;546:
;547:		// It's ok, the team we are switching to has less or the same number of players and a lower or equal score
;548:	}
LABELV $258
line 550
;549:
;550:	return qtrue;
CNSTI4 1
RETI4
LABELV $253
endproc AllowTeamSwitch 36 8
export SetTeam
proc SetTeam 76 20
line 559
;551:}
;552:
;553:
;554:/*
;555:=================
;556:SetTeam
;557:=================
;558:*/
;559:qboolean SetTeam( gentity_t *ent, const char *s ) {
line 572
;560:	team_t				team, oldTeam;
;561:	gclient_t			*client;
;562:	int					clientNum;
;563:	spectatorState_t	specState;
;564:	int					specClient;
;565:	int					teamLeader;
;566:	qboolean			checkTeamLeader;
;567:
;568:	//
;569:	// see what change is requested
;570:	//
;571:
;572:	clientNum = ent - g_entities;
ADDRLP4 12
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
line 573
;573:	client = level.clients + clientNum;
ADDRLP4 0
ADDRLP4 12
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 576
;574:
;575:	// early team override
;576:	if ( client->pers.connected == CON_CONNECTING && g_gametype.integer >= GT_TEAM ) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $288
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $288
line 577
;577:		if ( !Q_stricmp( s, "red" ) || !Q_stricmp( s, "r" ) ) {
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $293
ARGP4
ADDRLP4 32
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 32
INDIRI4
CNSTI4 0
EQI4 $295
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $294
ARGP4
ADDRLP4 36
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 36
INDIRI4
CNSTI4 0
NEI4 $291
LABELV $295
line 578
;578:			team = TEAM_RED;
ADDRLP4 4
CNSTI4 1
ASGNI4
line 579
;579:		} else if ( !Q_stricmp( s, "blue" ) || !Q_stricmp( s, "b" ) ) {
ADDRGP4 $292
JUMPV
LABELV $291
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $298
ARGP4
ADDRLP4 40
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 40
INDIRI4
CNSTI4 0
EQI4 $300
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $299
ARGP4
ADDRLP4 44
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 44
INDIRI4
CNSTI4 0
NEI4 $296
LABELV $300
line 580
;580:			team = TEAM_BLUE; 
ADDRLP4 4
CNSTI4 2
ASGNI4
line 581
;581:		} else {
ADDRGP4 $297
JUMPV
LABELV $296
line 582
;582:			team = -1;
ADDRLP4 4
CNSTI4 -1
ASGNI4
line 583
;583:		}
LABELV $297
LABELV $292
line 584
;584:		if ( team != -1 && AllowTeamSwitch( clientNum, team ) ) {
ADDRLP4 4
INDIRI4
CNSTI4 -1
EQI4 $301
ADDRLP4 12
INDIRI4
ARGI4
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 52
ADDRGP4 AllowTeamSwitch
CALLI4
ASGNI4
ADDRLP4 52
INDIRI4
CNSTI4 0
EQI4 $301
line 585
;585:			client->sess.sessionTeam = team;
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
ADDRLP4 4
INDIRI4
ASGNI4
line 586
;586:			client->pers.teamState.state = TEAM_BEGIN;
ADDRLP4 0
INDIRP4
CNSTI4 552
ADDP4
CNSTI4 0
ASGNI4
line 587
;587:			G_WriteClientSessionData( client );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_WriteClientSessionData
CALLV
pop
line 589
;588:			// count current clients and rank for scoreboard
;589:			CalculateRanks();
ADDRGP4 CalculateRanks
CALLV
pop
line 590
;590:		}
LABELV $301
line 591
;591:		return qfalse; // bypass flood protection
CNSTI4 0
RETI4
ADDRGP4 $287
JUMPV
LABELV $288
line 594
;592:	}
;593:
;594:	specClient = clientNum;
ADDRLP4 20
ADDRLP4 12
INDIRI4
ASGNI4
line 595
;595:	specState = SPECTATOR_NOT;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 596
;596:	if ( !Q_stricmp( s, "scoreboard" ) || !Q_stricmp( s, "score" )  ) {
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $305
ARGP4
ADDRLP4 32
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 32
INDIRI4
CNSTI4 0
EQI4 $307
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $306
ARGP4
ADDRLP4 36
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 36
INDIRI4
CNSTI4 0
NEI4 $303
LABELV $307
line 597
;597:		team = TEAM_SPECTATOR;
ADDRLP4 4
CNSTI4 3
ASGNI4
line 598
;598:		specState = SPECTATOR_SCOREBOARD;
ADDRLP4 16
CNSTI4 3
ASGNI4
line 599
;599:	} else if ( !Q_stricmp( s, "follow1" ) ) {
ADDRGP4 $304
JUMPV
LABELV $303
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $310
ARGP4
ADDRLP4 40
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 40
INDIRI4
CNSTI4 0
NEI4 $308
line 600
;600:		team = TEAM_SPECTATOR;
ADDRLP4 4
CNSTI4 3
ASGNI4
line 601
;601:		specState = SPECTATOR_FOLLOW;
ADDRLP4 16
CNSTI4 2
ASGNI4
line 602
;602:		specClient = -1;
ADDRLP4 20
CNSTI4 -1
ASGNI4
line 603
;603:	} else if ( !Q_stricmp( s, "follow2" ) ) {
ADDRGP4 $309
JUMPV
LABELV $308
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $313
ARGP4
ADDRLP4 44
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 44
INDIRI4
CNSTI4 0
NEI4 $311
line 604
;604:		team = TEAM_SPECTATOR;
ADDRLP4 4
CNSTI4 3
ASGNI4
line 605
;605:		specState = SPECTATOR_FOLLOW;
ADDRLP4 16
CNSTI4 2
ASGNI4
line 606
;606:		specClient = -2;
ADDRLP4 20
CNSTI4 -2
ASGNI4
line 607
;607:	} else if ( !Q_stricmp( s, "spectator" ) || !Q_stricmp( s, "s" ) ) {
ADDRGP4 $312
JUMPV
LABELV $311
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $316
ARGP4
ADDRLP4 48
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 48
INDIRI4
CNSTI4 0
EQI4 $318
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $317
ARGP4
ADDRLP4 52
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 52
INDIRI4
CNSTI4 0
NEI4 $314
LABELV $318
line 608
;608:		team = TEAM_SPECTATOR;
ADDRLP4 4
CNSTI4 3
ASGNI4
line 609
;609:		specState = SPECTATOR_FREE;
ADDRLP4 16
CNSTI4 1
ASGNI4
line 610
;610:	} else if ( g_gametype.integer >= GT_TEAM ) {
ADDRGP4 $315
JUMPV
LABELV $314
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $319
line 612
;611:		// if running a team game, assign player to one of the teams
;612:		specState = SPECTATOR_NOT;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 613
;613:		if ( !Q_stricmp( s, "red" ) || !Q_stricmp( s, "r" ) ) {
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $293
ARGP4
ADDRLP4 56
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 56
INDIRI4
CNSTI4 0
EQI4 $324
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $294
ARGP4
ADDRLP4 60
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 60
INDIRI4
CNSTI4 0
NEI4 $322
LABELV $324
line 614
;614:			team = TEAM_RED;
ADDRLP4 4
CNSTI4 1
ASGNI4
line 615
;615:		} else if ( !Q_stricmp( s, "blue" ) || !Q_stricmp( s, "b" ) ) {
ADDRGP4 $323
JUMPV
LABELV $322
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $298
ARGP4
ADDRLP4 64
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 64
INDIRI4
CNSTI4 0
EQI4 $327
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $299
ARGP4
ADDRLP4 68
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 68
INDIRI4
CNSTI4 0
NEI4 $325
LABELV $327
line 616
;616:			team = TEAM_BLUE;
ADDRLP4 4
CNSTI4 2
ASGNI4
line 617
;617:		} else {
ADDRGP4 $326
JUMPV
LABELV $325
line 619
;618:			// pick the team with the least number of players
;619:			team = PickTeam( clientNum );
ADDRLP4 12
INDIRI4
ARGI4
ADDRLP4 72
ADDRGP4 PickTeam
CALLI4
ASGNI4
ADDRLP4 4
ADDRLP4 72
INDIRI4
ASGNI4
line 620
;620:		}
LABELV $326
LABELV $323
line 622
;621:
;622:		if ( !AllowTeamSwitch( clientNum, team ) ) {
ADDRLP4 12
INDIRI4
ARGI4
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 72
ADDRGP4 AllowTeamSwitch
CALLI4
ASGNI4
ADDRLP4 72
INDIRI4
CNSTI4 0
NEI4 $320
line 623
;623:			return qtrue;
CNSTI4 1
RETI4
ADDRGP4 $287
JUMPV
line 626
;624:		}
;625:
;626:	} else {
LABELV $319
line 628
;627:		// force them to spectators if there aren't any spots free
;628:		team = TEAM_FREE;
ADDRLP4 4
CNSTI4 0
ASGNI4
line 629
;629:	}
LABELV $320
LABELV $315
LABELV $312
LABELV $309
LABELV $304
line 632
;630:
;631:	// override decision if limiting the players
;632:	if ( (g_gametype.integer == GT_TOURNAMENT)
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $330
ADDRGP4 level+80
INDIRI4
CNSTI4 2
LTI4 $330
line 633
;633:		&& level.numNonSpectatorClients >= 2 ) {
line 634
;634:		team = TEAM_SPECTATOR;
ADDRLP4 4
CNSTI4 3
ASGNI4
line 635
;635:	} else if ( g_maxGameClients.integer > 0 && 
ADDRGP4 $331
JUMPV
LABELV $330
ADDRGP4 g_maxGameClients+12
INDIRI4
CNSTI4 0
LEI4 $334
ADDRGP4 level+80
INDIRI4
ADDRGP4 g_maxGameClients+12
INDIRI4
LTI4 $334
line 636
;636:		level.numNonSpectatorClients >= g_maxGameClients.integer ) {
line 637
;637:		team = TEAM_SPECTATOR;
ADDRLP4 4
CNSTI4 3
ASGNI4
line 638
;638:	}
LABELV $334
LABELV $331
line 643
;639:
;640:	//
;641:	// decide if we will allow the change
;642:	//
;643:	oldTeam = client->sess.sessionTeam;
ADDRLP4 8
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ASGNI4
line 644
;644:	if ( team == oldTeam ) {
ADDRLP4 4
INDIRI4
ADDRLP4 8
INDIRI4
NEI4 $339
line 645
;645:		if ( team != TEAM_SPECTATOR )
ADDRLP4 4
INDIRI4
CNSTI4 3
EQI4 $341
line 646
;646:			return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $287
JUMPV
LABELV $341
line 649
;647:
;648:		// do soft release if possible
;649:		if ( ( client->ps.pm_flags & PMF_FOLLOW ) && client->sess.spectatorState == SPECTATOR_FOLLOW ) {
ADDRLP4 0
INDIRP4
CNSTI4 12
ADDP4
INDIRI4
CNSTI4 4096
BANDI4
CNSTI4 0
EQI4 $343
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 2
NEI4 $343
line 650
;650:			StopFollowing( ent, qtrue );
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 StopFollowing
CALLV
pop
line 651
;651:			return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $287
JUMPV
LABELV $343
line 655
;652:		}
;653:
;654:		// second spectator team request will move player to intermission point
;655:		if ( client->ps.persistant[ PERS_TEAM ] == TEAM_SPECTATOR && !( client->ps.pm_flags & PMF_FOLLOW )
ADDRLP4 0
INDIRP4
CNSTI4 260
ADDP4
INDIRI4
CNSTI4 3
NEI4 $345
ADDRLP4 0
INDIRP4
CNSTI4 12
ADDP4
INDIRI4
CNSTI4 4096
BANDI4
CNSTI4 0
NEI4 $345
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 1
NEI4 $345
line 656
;656:			&& client->sess.spectatorState == SPECTATOR_FREE ) {
line 657
;657:			VectorCopy( level.intermission_origin, ent->s.origin );
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ADDRGP4 level+7616
INDIRB
ASGNB 12
line 658
;658:			VectorCopy( level.intermission_origin, client->ps.origin );
ADDRLP4 0
INDIRP4
CNSTI4 20
ADDP4
ADDRGP4 level+7616
INDIRB
ASGNB 12
line 659
;659:			SetClientViewAngle( ent, level.intermission_angle );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 level+7628
ARGP4
ADDRGP4 SetClientViewAngle
CALLV
pop
line 660
;660:			return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $287
JUMPV
LABELV $345
line 662
;661:		}
;662:	}
LABELV $339
line 669
;663:
;664:	//
;665:	// execute the team change
;666:	//
;667:
;668:	// if the player was dead leave the body
;669:	if ( ent->health <= 0 ) {
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CNSTI4 0
GTI4 $350
line 670
;670:		CopyToBodyQue( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 CopyToBodyQue
CALLV
pop
line 671
;671:	}
LABELV $350
line 674
;672:
;673:	// he starts at 'base'
;674:	client->pers.teamState.state = TEAM_BEGIN;
ADDRLP4 0
INDIRP4
CNSTI4 552
ADDP4
CNSTI4 0
ASGNI4
line 676
;675:
;676:	if ( oldTeam != TEAM_SPECTATOR ) {
ADDRLP4 8
INDIRI4
CNSTI4 3
EQI4 $352
line 679
;677:		
;678:		// revert any casted votes
;679:		if ( oldTeam != team )
ADDRLP4 8
INDIRI4
ADDRLP4 4
INDIRI4
EQI4 $354
line 680
;680:			G_RevertVote( ent->client );
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_RevertVote
CALLV
pop
LABELV $354
line 683
;681:
;682:		// Kill him (makes sure he loses flags, etc)
;683:		ent->flags &= ~FL_GODMODE;
ADDRLP4 56
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 56
INDIRP4
ADDRLP4 56
INDIRP4
INDIRI4
CNSTI4 -17
BANDI4
ASGNI4
line 684
;684:		ent->client->ps.stats[STAT_HEALTH] = ent->health = 0;
ADDRLP4 60
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 64
CNSTI4 0
ASGNI4
ADDRLP4 60
INDIRP4
CNSTI4 732
ADDP4
ADDRLP4 64
INDIRI4
ASGNI4
ADDRLP4 60
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 184
ADDP4
ADDRLP4 64
INDIRI4
ASGNI4
line 685
;685:		player_die (ent, ent, ent, 100000, MOD_SUICIDE);
ADDRLP4 68
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 68
INDIRP4
ARGP4
ADDRLP4 68
INDIRP4
ARGP4
ADDRLP4 68
INDIRP4
ARGP4
CNSTI4 100000
ARGI4
CNSTI4 20
ARGI4
ADDRGP4 player_die
CALLV
pop
line 686
;686:	}
LABELV $352
line 689
;687:
;688:	// they go to the end of the line for tournements
;689:	if ( team == TEAM_SPECTATOR ) {
ADDRLP4 4
INDIRI4
CNSTI4 3
NEI4 $356
line 690
;690:		client->sess.spectatorTime = 0;
ADDRLP4 0
INDIRP4
CNSTI4 640
ADDP4
CNSTI4 0
ASGNI4
line 691
;691:	}
LABELV $356
line 693
;692:
;693:	client->sess.sessionTeam = team;
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
ADDRLP4 4
INDIRI4
ASGNI4
line 694
;694:	client->sess.spectatorState = specState;
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
ADDRLP4 16
INDIRI4
ASGNI4
line 695
;695:	client->sess.spectatorClient = specClient;
ADDRLP4 0
INDIRP4
CNSTI4 648
ADDP4
ADDRLP4 20
INDIRI4
ASGNI4
line 697
;696:
;697:	checkTeamLeader = client->sess.teamLeader;
ADDRLP4 28
ADDRLP4 0
INDIRP4
CNSTI4 660
ADDP4
INDIRI4
ASGNI4
line 698
;698:	client->sess.teamLeader = qfalse;
ADDRLP4 0
INDIRP4
CNSTI4 660
ADDP4
CNSTI4 0
ASGNI4
line 700
;699:
;700:	if ( team == TEAM_RED || team == TEAM_BLUE ) {
ADDRLP4 4
INDIRI4
CNSTI4 1
EQI4 $360
ADDRLP4 4
INDIRI4
CNSTI4 2
NEI4 $358
LABELV $360
line 701
;701:		teamLeader = TeamLeader( team );
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 60
ADDRGP4 TeamLeader
CALLI4
ASGNI4
ADDRLP4 24
ADDRLP4 60
INDIRI4
ASGNI4
line 703
;702:		// if there is no team leader or the team leader is a bot and this client is not a bot
;703:		if ( teamLeader == -1 || ( !(g_entities[clientNum].r.svFlags & SVF_BOT) && (g_entities[teamLeader].r.svFlags & SVF_BOT) ) ) {
ADDRLP4 64
ADDRLP4 24
INDIRI4
ASGNI4
ADDRLP4 64
INDIRI4
CNSTI4 -1
EQI4 $367
ADDRLP4 12
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $361
ADDRLP4 64
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+208+216
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $361
LABELV $367
line 704
;704:			SetLeader( team, clientNum );
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 SetLeader
CALLV
pop
line 705
;705:		}
LABELV $361
line 706
;706:	}
LABELV $358
line 709
;707:
;708:	// make sure there is a team leader on the team the player came from
;709:	if ( oldTeam == TEAM_RED || oldTeam == TEAM_BLUE ) {
ADDRLP4 8
INDIRI4
CNSTI4 1
EQI4 $370
ADDRLP4 8
INDIRI4
CNSTI4 2
NEI4 $368
LABELV $370
line 710
;710:		if ( checkTeamLeader ) {
ADDRLP4 28
INDIRI4
CNSTI4 0
EQI4 $371
line 711
;711:			CheckTeamLeader( oldTeam );
ADDRLP4 8
INDIRI4
ARGI4
ADDRGP4 CheckTeamLeader
CALLV
pop
line 712
;712:		}
LABELV $371
line 713
;713:	}
LABELV $368
line 715
;714:
;715:	G_WriteClientSessionData( client );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_WriteClientSessionData
CALLV
pop
line 717
;716:
;717:	BroadcastTeamChange( client, oldTeam );
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 8
INDIRI4
ARGI4
ADDRGP4 BroadcastTeamChange
CALLV
pop
line 720
;718:
;719:	// get and distribute relevent paramters
;720:	ClientUserinfoChanged( clientNum );
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 ClientUserinfoChanged
CALLI4
pop
line 722
;721:
;722:	ClientBegin( clientNum );
ADDRLP4 12
INDIRI4
ARGI4
ADDRGP4 ClientBegin
CALLV
pop
line 724
;723:
;724:	return qtrue;
CNSTI4 1
RETI4
LABELV $287
endproc SetTeam 76 20
export StopFollowing
proc StopFollowing 12 12
line 736
;725:}
;726:
;727:
;728:/*
;729:=================
;730:StopFollowing
;731:
;732:If the client being followed leaves the game, or you just want to drop
;733:to free floating spectator mode
;734:=================
;735:*/
;736:void StopFollowing( gentity_t *ent, qboolean release ) {
line 739
;737:	gclient_t *client;
;738:
;739:	if ( ent->r.svFlags & SVF_BOT || !ent->inuse )
ADDRLP4 4
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4
INDIRP4
CNSTI4 424
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $376
ADDRLP4 4
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $374
LABELV $376
line 740
;740:		return;
ADDRGP4 $373
JUMPV
LABELV $374
line 742
;741:
;742:	client = ent->client;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 744
;743:
;744:	client->ps.persistant[ PERS_TEAM ] = TEAM_SPECTATOR;	
ADDRLP4 0
INDIRP4
CNSTI4 260
ADDP4
CNSTI4 3
ASGNI4
line 745
;745:	client->sess.sessionTeam = TEAM_SPECTATOR;	
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
CNSTI4 3
ASGNI4
line 746
;746:	if ( release ) {
ADDRFP4 4
INDIRI4
CNSTI4 0
EQI4 $377
line 747
;747:		client->ps.stats[STAT_HEALTH] = ent->health = 1;
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
ADDRLP4 8
INDIRI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
ADDRLP4 8
INDIRI4
ASGNI4
line 748
;748:		memset( client->ps.powerups, 0, sizeof ( client->ps.powerups ) );
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
line 749
;749:	}
LABELV $377
line 750
;750:	SetClientViewAngle( ent, client->ps.viewangles );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 152
ADDP4
ARGP4
ADDRGP4 SetClientViewAngle
CALLV
pop
line 752
;751:
;752:	client->sess.spectatorState = SPECTATOR_FREE;
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
CNSTI4 1
ASGNI4
line 753
;753:	client->ps.pm_flags &= ~PMF_FOLLOW;
ADDRLP4 8
ADDRLP4 0
INDIRP4
CNSTI4 12
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 -4097
BANDI4
ASGNI4
line 756
;754:	//ent->r.svFlags &= ~SVF_BOT;
;755:
;756:	client->ps.clientNum = ent - g_entities;
ADDRLP4 0
INDIRP4
CNSTI4 140
ADDP4
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
line 757
;757:}
LABELV $373
endproc StopFollowing 12 12
proc Cmd_Team_f 1036 12
line 765
;758:
;759:
;760:/*
;761:=================
;762:Cmd_Team_f
;763:=================
;764:*/
;765:static void Cmd_Team_f( gentity_t *ent ) {
line 768
;766:	char		s[MAX_TOKEN_CHARS];
;767:
;768:	if ( trap_Argc() != 2 ) {
ADDRLP4 1024
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 1024
INDIRI4
CNSTI4 2
EQI4 $380
line 769
;769:		switch ( ent->client->sess.sessionTeam ) {
ADDRLP4 1028
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ASGNI4
ADDRLP4 1028
INDIRI4
CNSTI4 0
LTI4 $379
ADDRLP4 1028
INDIRI4
CNSTI4 3
GTI4 $379
ADDRLP4 1028
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 $393
ADDP4
INDIRP4
JUMPV
data
align 4
LABELV $393
address $389
address $387
address $385
address $391
code
LABELV $385
line 771
;770:		case TEAM_BLUE:
;771:			trap_SendServerCommand( ent-g_entities, "print \"Blue team\n\"" );
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
ADDRGP4 $386
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 772
;772:			break;
ADDRGP4 $379
JUMPV
LABELV $387
line 774
;773:		case TEAM_RED:
;774:			trap_SendServerCommand( ent-g_entities, "print \"Red team\n\"" );
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
ADDRGP4 $388
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 775
;775:			break;
ADDRGP4 $379
JUMPV
LABELV $389
line 777
;776:		case TEAM_FREE:
;777:			trap_SendServerCommand( ent-g_entities, "print \"Free team\n\"" );
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
ADDRGP4 $390
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 778
;778:			break;
ADDRGP4 $379
JUMPV
LABELV $391
line 780
;779:		case TEAM_SPECTATOR:
;780:			trap_SendServerCommand( ent-g_entities, "print \"Spectator team\n\"" );
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
ADDRGP4 $392
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 781
;781:			break;
line 783
;782:		default:
;783:			break;
line 785
;784:		}
;785:		return;
ADDRGP4 $379
JUMPV
LABELV $380
line 788
;786:	}
;787:
;788:	if ( ent->client->switchTeamTime > level.time ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 784
ADDP4
INDIRI4
ADDRGP4 level+32
INDIRI4
LEI4 $394
line 789
;789:		trap_SendServerCommand( ent-g_entities, "print \"May not switch teams more than once per 5 seconds.\n\"" );
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
ADDRGP4 $397
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 790
;790:		return;
ADDRGP4 $379
JUMPV
LABELV $394
line 794
;791:	}
;792:
;793:	// if they are playing a tournement game, count as a loss
;794:	if ( (g_gametype.integer == GT_TOURNAMENT )
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $398
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
NEI4 $398
line 795
;795:		&& ent->client->sess.sessionTeam == TEAM_FREE ) {
line 796
;796:		ent->client->sess.losses++;
ADDRLP4 1028
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 656
ADDP4
ASGNP4
ADDRLP4 1028
INDIRP4
ADDRLP4 1028
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 797
;797:	}
LABELV $398
line 799
;798:
;799:	trap_Argv( 1, s, sizeof( s ) );
CNSTI4 1
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 801
;800:
;801:	if ( SetTeam( ent, s ) ) {
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
ARGP4
ADDRLP4 1028
ADDRGP4 SetTeam
CALLI4
ASGNI4
ADDRLP4 1028
INDIRI4
CNSTI4 0
EQI4 $401
line 802
;802:		ent->client->switchTeamTime = level.time + 5000;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 784
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 5000
ADDI4
ASGNI4
line 803
;803:	}
LABELV $401
line 804
;804:}
LABELV $379
endproc Cmd_Team_f 1036 12
proc Cmd_Follow_f 1040 12
line 812
;805:
;806:
;807:/*
;808:=================
;809:Cmd_Follow_f
;810:=================
;811:*/
;812:static void Cmd_Follow_f( gentity_t *ent ) {
line 816
;813:	int		i;
;814:	char	arg[MAX_TOKEN_CHARS];
;815:
;816:	if ( trap_Argc() != 2 ) {
ADDRLP4 1028
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 1028
INDIRI4
CNSTI4 2
EQI4 $405
line 817
;817:		if ( ent->client->sess.spectatorState == SPECTATOR_FOLLOW ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 2
NEI4 $404
line 818
;818:			StopFollowing( ent, qtrue );
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 StopFollowing
CALLV
pop
line 819
;819:		}
line 820
;820:		return;
ADDRGP4 $404
JUMPV
LABELV $405
line 823
;821:	}
;822:
;823:	trap_Argv( 1, arg, sizeof( arg ) );
CNSTI4 1
ARGI4
ADDRLP4 4
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 824
;824:	i = ClientNumberFromString( ent, arg );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ARGP4
ADDRLP4 1032
ADDRGP4 ClientNumberFromString
CALLI4
ASGNI4
ADDRLP4 0
ADDRLP4 1032
INDIRI4
ASGNI4
line 825
;825:	if ( i == -1 ) {
ADDRLP4 0
INDIRI4
CNSTI4 -1
NEI4 $409
line 826
;826:		return;
ADDRGP4 $404
JUMPV
LABELV $409
line 830
;827:	}
;828:
;829:	// can't follow self
;830:	if ( &level.clients[ i ] == ent->client ) {
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CVPU4 4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
NEU4 $411
line 831
;831:		return;
ADDRGP4 $404
JUMPV
LABELV $411
line 835
;832:	}
;833:
;834:	// can't follow another spectator
;835:	if ( level.clients[ i ].sess.sessionTeam == TEAM_SPECTATOR ) {
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
NEI4 $413
line 836
;836:		return;
ADDRGP4 $404
JUMPV
LABELV $413
line 840
;837:	}
;838:
;839:	// if they are playing a tournement game, count as a loss
;840:	if ( (g_gametype.integer == GT_TOURNAMENT )
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $415
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
NEI4 $415
line 841
;841:		&& ent->client->sess.sessionTeam == TEAM_FREE ) {
line 842
;842:		ent->client->sess.losses++;
ADDRLP4 1036
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 656
ADDP4
ASGNP4
ADDRLP4 1036
INDIRP4
ADDRLP4 1036
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 843
;843:	}
LABELV $415
line 846
;844:
;845:	// first set them to spectator
;846:	if ( ent->client->sess.sessionTeam != TEAM_SPECTATOR ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
EQI4 $418
line 847
;847:		SetTeam( ent, "spectator" );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $316
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 848
;848:	}
LABELV $418
line 850
;849:
;850:	ent->client->sess.spectatorState = SPECTATOR_FOLLOW;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 644
ADDP4
CNSTI4 2
ASGNI4
line 851
;851:	ent->client->sess.spectatorClient = i;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 648
ADDP4
ADDRLP4 0
INDIRI4
ASGNI4
line 852
;852:}
LABELV $404
endproc Cmd_Follow_f 1040 12
export Cmd_FollowCycle_f
proc Cmd_FollowCycle_f 16 8
line 860
;853:
;854:
;855:/*
;856:=================
;857:Cmd_FollowCycle_f
;858:=================
;859:*/
;860:void Cmd_FollowCycle_f( gentity_t *ent, int dir ) {
line 866
;861:	int		clientnum;
;862:	int		original;
;863:	gclient_t	*client;
;864:
;865:	// if they are playing a tournement game, count as a loss
;866:	if ( (g_gametype.integer == GT_TOURNAMENT )
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $421
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
NEI4 $421
line 867
;867:		&& ent->client->sess.sessionTeam == TEAM_FREE ) {
line 868
;868:		ent->client->sess.losses++;
ADDRLP4 12
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 656
ADDP4
ASGNP4
ADDRLP4 12
INDIRP4
ADDRLP4 12
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 869
;869:	}
LABELV $421
line 871
;870:
;871:	client = ent->client;
ADDRLP4 8
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 874
;872:
;873:	// first set them to spectator
;874:	if ( client->sess.spectatorState == SPECTATOR_NOT ) {
ADDRLP4 8
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 0
NEI4 $424
line 875
;875:		SetTeam( ent, "spectator" );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 $316
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 876
;876:	}
LABELV $424
line 878
;877:
;878:	if ( dir != 1 && dir != -1 ) {
ADDRLP4 12
ADDRFP4 4
INDIRI4
ASGNI4
ADDRLP4 12
INDIRI4
CNSTI4 1
EQI4 $426
ADDRLP4 12
INDIRI4
CNSTI4 -1
EQI4 $426
line 879
;879:		G_Error( "Cmd_FollowCycle_f: bad dir %i", dir );
ADDRGP4 $428
ARGP4
ADDRFP4 4
INDIRI4
ARGI4
ADDRGP4 G_Error
CALLV
pop
line 880
;880:	}
LABELV $426
line 882
;881:
;882:	clientnum = client->sess.spectatorClient;
ADDRLP4 0
ADDRLP4 8
INDIRP4
CNSTI4 648
ADDP4
INDIRI4
ASGNI4
line 883
;883:	original = clientnum;
ADDRLP4 4
ADDRLP4 0
INDIRI4
ASGNI4
LABELV $429
line 884
;884:	do {
line 885
;885:		clientnum += dir;
ADDRLP4 0
ADDRLP4 0
INDIRI4
ADDRFP4 4
INDIRI4
ADDI4
ASGNI4
line 886
;886:		if ( clientnum >= level.maxclients ) {
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $432
line 887
;887:			clientnum = 0;
ADDRLP4 0
CNSTI4 0
ASGNI4
line 888
;888:		}
LABELV $432
line 889
;889:		if ( clientnum < 0 ) {
ADDRLP4 0
INDIRI4
CNSTI4 0
GEI4 $435
line 890
;890:			clientnum = level.maxclients - 1;
ADDRLP4 0
ADDRGP4 level+24
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 891
;891:		}
LABELV $435
line 894
;892:
;893:		// can only follow connected clients
;894:		if ( level.clients[ clientnum ].pers.connected != CON_CONNECTED ) {
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
EQI4 $438
line 895
;895:			continue;
ADDRGP4 $430
JUMPV
LABELV $438
line 899
;896:		}
;897:
;898:		// can't follow another spectator
;899:		if ( level.clients[ clientnum ].sess.sessionTeam == TEAM_SPECTATOR ) {
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
NEI4 $440
line 900
;900:			continue;
ADDRGP4 $430
JUMPV
LABELV $440
line 904
;901:		}
;902:
;903:		// this is good, we can use it
;904:		ent->client->sess.spectatorClient = clientnum;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 648
ADDP4
ADDRLP4 0
INDIRI4
ASGNI4
line 905
;905:		ent->client->sess.spectatorState = SPECTATOR_FOLLOW;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 644
ADDP4
CNSTI4 2
ASGNI4
line 906
;906:		return;
ADDRGP4 $420
JUMPV
LABELV $430
line 907
;907:	} while ( clientnum != original );
ADDRLP4 0
INDIRI4
ADDRLP4 4
INDIRI4
NEI4 $429
line 910
;908:
;909:	// leave it where it was
;910:}
LABELV $420
endproc Cmd_FollowCycle_f 16 8
proc G_SayTo 12 28
line 918
;911:
;912:
;913:/*
;914:==================
;915:G_Say
;916:==================
;917:*/
;918:static void G_SayTo( gentity_t *ent, gentity_t *other, int mode, int color, const char *name, const char *message ) {
line 919
;919:	if (!other) {
ADDRFP4 4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $443
line 920
;920:		return;
ADDRGP4 $442
JUMPV
LABELV $443
line 922
;921:	}
;922:	if (!other->inuse) {
ADDRFP4 4
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $445
line 923
;923:		return;
ADDRGP4 $442
JUMPV
LABELV $445
line 925
;924:	}
;925:	if (!other->client) {
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $447
line 926
;926:		return;
ADDRGP4 $442
JUMPV
LABELV $447
line 928
;927:	}
;928:	if ( other->client->pers.connected != CON_CONNECTED ) {
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $449
line 929
;929:		return;
ADDRGP4 $442
JUMPV
LABELV $449
line 931
;930:	}
;931:	if ( mode == SAY_TEAM  && !OnSameTeam(ent, other) ) {
ADDRFP4 8
INDIRI4
CNSTI4 1
NEI4 $451
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 0
ADDRGP4 OnSameTeam
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 0
NEI4 $451
line 932
;932:		return;
ADDRGP4 $442
JUMPV
LABELV $451
line 935
;933:	}
;934:	// no chatting to players in tournements
;935:	if ( (g_gametype.integer == GT_TOURNAMENT )
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 1
NEI4 $453
ADDRFP4 4
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
NEI4 $453
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 0
EQI4 $453
line 937
;936:		&& other->client->sess.sessionTeam == TEAM_FREE
;937:		&& ent->client->sess.sessionTeam != TEAM_FREE ) {
line 938
;938:		return;
ADDRGP4 $442
JUMPV
LABELV $453
line 941
;939:	}
;940:
;941:	trap_SendServerCommand( other-g_entities, va( "%s \"%s%c%c%s\" %i", mode == SAY_TEAM ? "tchat" : "chat", 
ADDRGP4 $456
ARGP4
ADDRFP4 8
INDIRI4
CNSTI4 1
NEI4 $460
ADDRLP4 4
ADDRGP4 $457
ASGNP4
ADDRGP4 $461
JUMPV
LABELV $460
ADDRLP4 4
ADDRGP4 $458
ASGNP4
LABELV $461
ADDRLP4 4
INDIRP4
ARGP4
ADDRFP4 16
INDIRP4
ARGP4
CNSTI4 94
ARGI4
ADDRFP4 12
INDIRI4
ARGI4
ADDRFP4 20
INDIRP4
ARGP4
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
ADDRLP4 8
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 4
INDIRP4
CVPU4 4
ADDRGP4 g_entities
CVPU4 4
SUBU4
CVUI4 4
CNSTI4 816
DIVI4
ARGI4
ADDRLP4 8
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 943
;942:		name, Q_COLOR_ESCAPE, color, message, ent - g_entities ) );
;943:}
LABELV $442
endproc G_SayTo 12 28
proc G_Say 388 28
line 947
;944:
;945:#define EC		"\x19"
;946:
;947:static void G_Say( gentity_t *ent, gentity_t *target, int mode, const char *chatText ) {
line 956
;948:	int			j;
;949:	gentity_t	*other;
;950:	int			color;
;951:	char		name[64 + 64 + 12]; // name + location + formatting
;952:	// don't let text be too long for malicious reasons
;953:	char		text[MAX_SAY_TEXT];
;954:	char		location[64];
;955:
;956:	if ( g_gametype.integer < GT_TEAM && mode == SAY_TEAM ) {
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
GEI4 $463
ADDRFP4 8
INDIRI4
CNSTI4 1
NEI4 $463
line 957
;957:		mode = SAY_ALL;
ADDRFP4 8
CNSTI4 0
ASGNI4
line 958
;958:	}
LABELV $463
line 960
;959:
;960:	switch ( mode ) {
ADDRLP4 368
ADDRFP4 8
INDIRI4
ASGNI4
ADDRLP4 368
INDIRI4
CNSTI4 0
EQI4 $468
ADDRLP4 368
INDIRI4
CNSTI4 1
EQI4 $471
ADDRLP4 368
INDIRI4
CNSTI4 2
EQI4 $477
ADDRGP4 $466
JUMPV
LABELV $466
LABELV $468
line 963
;961:	default:
;962:	case SAY_ALL:
;963:		G_LogPrintf( "say: %s: %s\n", ent->client->pers.netname, chatText );
ADDRGP4 $469
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRFP4 12
INDIRP4
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 964
;964:		Com_sprintf (name, sizeof(name), "%s%c%c"EC": ", ent->client->pers.netname, Q_COLOR_ESCAPE, COLOR_WHITE );
ADDRLP4 158
ARGP4
CNSTI4 140
ARGI4
ADDRGP4 $470
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
CNSTI4 94
ARGI4
CNSTI4 55
ARGI4
ADDRGP4 Com_sprintf
CALLI4
pop
line 965
;965:		color = COLOR_GREEN;
ADDRLP4 300
CNSTI4 50
ASGNI4
line 966
;966:		break;
ADDRGP4 $467
JUMPV
LABELV $471
line 968
;967:	case SAY_TEAM:
;968:		G_LogPrintf( "sayteam: %s: %s\n", ent->client->pers.netname, chatText );
ADDRGP4 $472
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRFP4 12
INDIRP4
ARGP4
ADDRGP4 G_LogPrintf
CALLV
pop
line 969
;969:		if (Team_GetLocationMsg(ent, location, sizeof(location)))
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 304
ARGP4
CNSTI4 64
ARGI4
ADDRLP4 372
ADDRGP4 Team_GetLocationMsg
CALLI4
ASGNI4
ADDRLP4 372
INDIRI4
CNSTI4 0
EQI4 $473
line 970
;970:			Com_sprintf (name, sizeof(name), EC"(%s%c%c"EC") (%s)"EC": ", 
ADDRLP4 158
ARGP4
CNSTI4 140
ARGI4
ADDRGP4 $475
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
CNSTI4 94
ARGI4
CNSTI4 55
ARGI4
ADDRLP4 304
ARGP4
ADDRGP4 Com_sprintf
CALLI4
pop
ADDRGP4 $474
JUMPV
LABELV $473
line 973
;971:				ent->client->pers.netname, Q_COLOR_ESCAPE, COLOR_WHITE, location);
;972:		else
;973:			Com_sprintf (name, sizeof(name), EC"(%s%c%c"EC")"EC": ", 
ADDRLP4 158
ARGP4
CNSTI4 140
ARGI4
ADDRGP4 $476
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
CNSTI4 94
ARGI4
CNSTI4 55
ARGI4
ADDRGP4 Com_sprintf
CALLI4
pop
LABELV $474
line 975
;974:				ent->client->pers.netname, Q_COLOR_ESCAPE, COLOR_WHITE );
;975:		color = COLOR_CYAN;
ADDRLP4 300
CNSTI4 53
ASGNI4
line 976
;976:		break;
ADDRGP4 $467
JUMPV
LABELV $477
line 978
;977:	case SAY_TELL:
;978:		if (target && target->inuse && target->client && g_gametype.integer >= GT_TEAM &&
ADDRLP4 376
ADDRFP4 4
INDIRP4
ASGNP4
ADDRLP4 376
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $478
ADDRLP4 376
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $478
ADDRLP4 376
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $478
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $478
ADDRLP4 380
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 376
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ADDRLP4 380
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
NEI4 $478
ADDRLP4 380
INDIRP4
ARGP4
ADDRLP4 304
ARGP4
CNSTI4 64
ARGI4
ADDRLP4 384
ADDRGP4 Team_GetLocationMsg
CALLI4
ASGNI4
ADDRLP4 384
INDIRI4
CNSTI4 0
EQI4 $478
line 981
;979:			target->client->sess.sessionTeam == ent->client->sess.sessionTeam &&
;980:			Team_GetLocationMsg(ent, location, sizeof(location)))
;981:			Com_sprintf (name, sizeof(name), EC"[%s%c%c"EC"] (%s)"EC": ", ent->client->pers.netname, Q_COLOR_ESCAPE, COLOR_WHITE, location );
ADDRLP4 158
ARGP4
CNSTI4 140
ARGI4
ADDRGP4 $481
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
CNSTI4 94
ARGI4
CNSTI4 55
ARGI4
ADDRLP4 304
ARGP4
ADDRGP4 Com_sprintf
CALLI4
pop
ADDRGP4 $479
JUMPV
LABELV $478
line 983
;982:		else
;983:			Com_sprintf (name, sizeof(name), EC"[%s%c%c"EC"]"EC": ", ent->client->pers.netname, Q_COLOR_ESCAPE, COLOR_WHITE );
ADDRLP4 158
ARGP4
CNSTI4 140
ARGI4
ADDRGP4 $482
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
CNSTI4 94
ARGI4
CNSTI4 55
ARGI4
ADDRGP4 Com_sprintf
CALLI4
pop
LABELV $479
line 984
;984:		color = COLOR_MAGENTA;
ADDRLP4 300
CNSTI4 54
ASGNI4
line 985
;985:		break;
LABELV $467
line 988
;986:	}
;987:
;988:	Q_strncpyz( text, chatText, sizeof(text) );
ADDRLP4 8
ARGP4
ADDRFP4 12
INDIRP4
ARGP4
CNSTI4 150
ARGI4
ADDRGP4 Q_strncpyz
CALLV
pop
line 990
;989:
;990:	if ( target ) {
ADDRFP4 4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $483
line 991
;991:		G_SayTo( ent, target, mode, color, name, text );
ADDRFP4 0
INDIRP4
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
ADDRFP4 8
INDIRI4
ARGI4
ADDRLP4 300
INDIRI4
ARGI4
ADDRLP4 158
ARGP4
ADDRLP4 8
ARGP4
ADDRGP4 G_SayTo
CALLV
pop
line 992
;992:		return;
ADDRGP4 $462
JUMPV
LABELV $483
line 996
;993:	}
;994:
;995:	// echo the text to the console
;996:	if ( g_dedicated.integer ) {
ADDRGP4 g_dedicated+12
INDIRI4
CNSTI4 0
EQI4 $485
line 997
;997:		G_Printf( "%s%s\n", name, text);
ADDRGP4 $488
ARGP4
ADDRLP4 158
ARGP4
ADDRLP4 8
ARGP4
ADDRGP4 G_Printf
CALLV
pop
line 998
;998:	}
LABELV $485
line 1001
;999:
;1000:	// send it to all the apropriate clients
;1001:	for (j = 0; j < level.maxclients; j++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $492
JUMPV
LABELV $489
line 1002
;1002:		other = &g_entities[j];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1003
;1003:		G_SayTo( ent, other, mode, color, name, text );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
INDIRP4
ARGP4
ADDRFP4 8
INDIRI4
ARGI4
ADDRLP4 300
INDIRI4
ARGI4
ADDRLP4 158
ARGP4
ADDRLP4 8
ARGP4
ADDRGP4 G_SayTo
CALLV
pop
line 1004
;1004:	}
LABELV $490
line 1001
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $492
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $489
line 1005
;1005:}
LABELV $462
endproc G_Say 388 28
proc Cmd_Say_f 12 16
line 1013
;1006:
;1007:
;1008:/*
;1009:==================
;1010:Cmd_Say_f
;1011:==================
;1012:*/
;1013:static void Cmd_Say_f( gentity_t *ent, int mode, qboolean arg0 ) {
line 1016
;1014:	char		*p;
;1015:
;1016:	if ( trap_Argc () < 2 && !arg0 ) {
ADDRLP4 4
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 2
GEI4 $495
ADDRFP4 8
INDIRI4
CNSTI4 0
NEI4 $495
line 1017
;1017:		return;
ADDRGP4 $494
JUMPV
LABELV $495
line 1020
;1018:	}
;1019:
;1020:	if (arg0)
ADDRFP4 8
INDIRI4
CNSTI4 0
EQI4 $497
line 1021
;1021:	{
line 1022
;1022:		p = ConcatArgs( 0 );
CNSTI4 0
ARGI4
ADDRLP4 8
ADDRGP4 ConcatArgs
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 8
INDIRP4
ASGNP4
line 1023
;1023:	}
ADDRGP4 $498
JUMPV
LABELV $497
line 1025
;1024:	else
;1025:	{
line 1026
;1026:		p = ConcatArgs( 1 );
CNSTI4 1
ARGI4
ADDRLP4 8
ADDRGP4 ConcatArgs
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 8
INDIRP4
ASGNP4
line 1027
;1027:	}
LABELV $498
line 1029
;1028:
;1029:	G_Say( ent, NULL, mode, p );
ADDRFP4 0
INDIRP4
ARGP4
CNSTP4 0
ARGP4
ADDRFP4 4
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 G_Say
CALLV
pop
line 1030
;1030:}
LABELV $494
endproc Cmd_Say_f 12 16
proc Cmd_Tell_f 1060 16
line 1038
;1031:
;1032:
;1033:/*
;1034:==================
;1035:Cmd_Tell_f
;1036:==================
;1037:*/
;1038:static void Cmd_Tell_f( gentity_t *ent ) {
line 1044
;1039:	int			targetNum;
;1040:	gentity_t	*target;
;1041:	char		*p;
;1042:	char		arg[MAX_TOKEN_CHARS];
;1043:
;1044:	if ( trap_Argc () < 2 ) {
ADDRLP4 1036
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 1036
INDIRI4
CNSTI4 2
GEI4 $500
line 1045
;1045:		return;
ADDRGP4 $499
JUMPV
LABELV $500
line 1048
;1046:	}
;1047:
;1048:	trap_Argv( 1, arg, sizeof( arg ) );
CNSTI4 1
ARGI4
ADDRLP4 12
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1049
;1049:	targetNum = atoi( arg );
ADDRLP4 12
ARGP4
ADDRLP4 1040
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 8
ADDRLP4 1040
INDIRI4
ASGNI4
line 1050
;1050:	if ( (unsigned)targetNum >= (unsigned)level.maxclients ) {
ADDRLP4 8
INDIRI4
CVIU4 4
ADDRGP4 level+24
INDIRI4
CVIU4 4
LTU4 $502
line 1051
;1051:		return;
ADDRGP4 $499
JUMPV
LABELV $502
line 1054
;1052:	}
;1053:
;1054:	target = &g_entities[targetNum];
ADDRLP4 0
ADDRLP4 8
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1055
;1055:	if ( !target->inuse || !target->client ) {
ADDRLP4 0
INDIRP4
CNSTI4 520
ADDP4
INDIRI4
CNSTI4 0
EQI4 $507
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $505
LABELV $507
line 1056
;1056:		return;
ADDRGP4 $499
JUMPV
LABELV $505
line 1059
;1057:	}
;1058:
;1059:	p = ConcatArgs( 2 );
CNSTI4 2
ARGI4
ADDRLP4 1048
ADDRGP4 ConcatArgs
CALLP4
ASGNP4
ADDRLP4 4
ADDRLP4 1048
INDIRP4
ASGNP4
line 1061
;1060:
;1061:	G_LogPrintf( "tell: %s to %s: %s\n", ent->client->pers.netname, target->client->pers.netname, p );
ADDRGP4 $508
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 0
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
ADDRGP4 G_LogPrintf
CALLV
pop
line 1062
;1062:	G_Say( ent, target, SAY_TELL, p );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
CNSTI4 2
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 G_Say
CALLV
pop
line 1065
;1063:	// don't tell to the player self if it was already directed to this player
;1064:	// also don't send the chat back to a bot
;1065:	if ( ent != target && !(ent->r.svFlags & SVF_BOT)) {
ADDRLP4 1052
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 1052
INDIRP4
CVPU4 4
ADDRLP4 0
INDIRP4
CVPU4 4
EQU4 $509
ADDRLP4 1052
INDIRP4
CNSTI4 424
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $509
line 1066
;1066:		G_Say( ent, ent, SAY_TELL, p );
ADDRLP4 1056
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 1056
INDIRP4
ARGP4
ADDRLP4 1056
INDIRP4
ARGP4
CNSTI4 2
ARGI4
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 G_Say
CALLV
pop
line 1067
;1067:	}
LABELV $509
line 1068
;1068:}
LABELV $499
endproc Cmd_Tell_f 1060 16
data
align 4
LABELV gc_orders
address $511
address $512
address $513
address $514
address $515
address $516
address $517
export Cmd_GameCommand_f
code
proc Cmd_GameCommand_f 1044 16
line 1280
;1069:
;1070:#ifdef MISSIONPACK
;1071:
;1072:static void G_VoiceTo( gentity_t *ent, gentity_t *other, int mode, const char *id, qboolean voiceonly ) {
;1073:	int color;
;1074:	char *cmd;
;1075:
;1076:	if (!other) {
;1077:		return;
;1078:	}
;1079:	if (!other->inuse) {
;1080:		return;
;1081:	}
;1082:	if (!other->client) {
;1083:		return;
;1084:	}
;1085:	if ( mode == SAY_TEAM && !OnSameTeam(ent, other) ) {
;1086:		return;
;1087:	}
;1088:	// no chatting to players in tournements
;1089:	if ( g_gametype.integer == GT_TOURNAMENT ) {
;1090:		return;
;1091:	}
;1092:
;1093:	if (mode == SAY_TEAM) {
;1094:		color = COLOR_CYAN;
;1095:		cmd = "vtchat";
;1096:	}
;1097:	else if (mode == SAY_TELL) {
;1098:		color = COLOR_MAGENTA;
;1099:		cmd = "vtell";
;1100:	}
;1101:	else {
;1102:		color = COLOR_GREEN;
;1103:		cmd = "vchat";
;1104:	}
;1105:
;1106:	trap_SendServerCommand( other-g_entities, va("%s %d %d %d %s", cmd, voiceonly, ent->s.number, color, id));
;1107:}
;1108:
;1109:void G_Voice( gentity_t *ent, gentity_t *target, int mode, const char *id, qboolean voiceonly ) {
;1110:	int			j;
;1111:	gentity_t	*other;
;1112:
;1113:	if ( g_gametype.integer < GT_TEAM && mode == SAY_TEAM ) {
;1114:		mode = SAY_ALL;
;1115:	}
;1116:
;1117:	if ( target ) {
;1118:		G_VoiceTo( ent, target, mode, id, voiceonly );
;1119:		return;
;1120:	}
;1121:
;1122:	// echo the text to the console
;1123:	if ( g_dedicated.integer ) {
;1124:		G_Printf( "voice: %s %s\n", ent->client->pers.netname, id);
;1125:	}
;1126:
;1127:	// send it to all the apropriate clients
;1128:	for (j = 0; j < level.maxclients; j++) {
;1129:		other = &g_entities[j];
;1130:		G_VoiceTo( ent, other, mode, id, voiceonly );
;1131:	}
;1132:}
;1133:
;1134:/*
;1135:==================
;1136:Cmd_Voice_f
;1137:==================
;1138:*/
;1139:static void Cmd_Voice_f( gentity_t *ent, int mode, qboolean arg0, qboolean voiceonly ) {
;1140:	char		*p;
;1141:
;1142:	if ( trap_Argc () < 2 && !arg0 ) {
;1143:		return;
;1144:	}
;1145:
;1146:	if (arg0)
;1147:	{
;1148:		p = ConcatArgs( 0 );
;1149:	}
;1150:	else
;1151:	{
;1152:		p = ConcatArgs( 1 );
;1153:	}
;1154:
;1155:	G_Voice( ent, NULL, mode, p, voiceonly );
;1156:}
;1157:
;1158:/*
;1159:==================
;1160:Cmd_VoiceTell_f
;1161:==================
;1162:*/
;1163:static void Cmd_VoiceTell_f( gentity_t *ent, qboolean voiceonly ) {
;1164:	int			targetNum;
;1165:	gentity_t	*target;
;1166:	char		*id;
;1167:	char		arg[MAX_TOKEN_CHARS];
;1168:
;1169:	if ( trap_Argc () < 2 ) {
;1170:		return;
;1171:	}
;1172:
;1173:	trap_Argv( 1, arg, sizeof( arg ) );
;1174:	targetNum = atoi( arg );
;1175:	if ( targetNum < 0 || targetNum >= level.maxclients ) {
;1176:		return;
;1177:	}
;1178:
;1179:	target = &g_entities[targetNum];
;1180:	if ( !target->inuse || !target->client ) {
;1181:		return;
;1182:	}
;1183:
;1184:	id = ConcatArgs( 2 );
;1185:
;1186:	G_LogPrintf( "vtell: %s to %s: %s\n", ent->client->pers.netname, target->client->pers.netname, id );
;1187:	G_Voice( ent, target, SAY_TELL, id, voiceonly );
;1188:	// don't tell to the player self if it was already directed to this player
;1189:	// also don't send the chat back to a bot
;1190:	if ( ent != target && !(ent->r.svFlags & SVF_BOT)) {
;1191:		G_Voice( ent, ent, SAY_TELL, id, voiceonly );
;1192:	}
;1193:}
;1194:
;1195:
;1196:/*
;1197:==================
;1198:Cmd_VoiceTaunt_f
;1199:==================
;1200:*/
;1201:static void Cmd_VoiceTaunt_f( gentity_t *ent ) {
;1202:	gentity_t *who;
;1203:	int i;
;1204:
;1205:	if (!ent->client) {
;1206:		return;
;1207:	}
;1208:
;1209:	// insult someone who just killed you
;1210:	if (ent->enemy && ent->enemy->client && ent->enemy->client->lastkilled_client == ent->s.number) {
;1211:		// i am a dead corpse
;1212:		if (!(ent->enemy->r.svFlags & SVF_BOT)) {
;1213:			G_Voice( ent, ent->enemy, SAY_TELL, VOICECHAT_DEATHINSULT, qfalse );
;1214:		}
;1215:		if (!(ent->r.svFlags & SVF_BOT)) {
;1216:			G_Voice( ent, ent,        SAY_TELL, VOICECHAT_DEATHINSULT, qfalse );
;1217:		}
;1218:		ent->enemy = NULL;
;1219:		return;
;1220:	}
;1221:	// insult someone you just killed
;1222:	if (ent->client->lastkilled_client >= 0 && ent->client->lastkilled_client != ent->s.number) {
;1223:		who = g_entities + ent->client->lastkilled_client;
;1224:		if (who->client) {
;1225:			// who is the person I just killed
;1226:			if (who->client->lasthurt_mod == MOD_GAUNTLET) {
;1227:				if (!(who->r.svFlags & SVF_BOT)) {
;1228:					G_Voice( ent, who, SAY_TELL, VOICECHAT_KILLGAUNTLET, qfalse );	// and I killed them with a gauntlet
;1229:				}
;1230:				if (!(ent->r.svFlags & SVF_BOT)) {
;1231:					G_Voice( ent, ent, SAY_TELL, VOICECHAT_KILLGAUNTLET, qfalse );
;1232:				}
;1233:			} else {
;1234:				if (!(who->r.svFlags & SVF_BOT)) {
;1235:					G_Voice( ent, who, SAY_TELL, VOICECHAT_KILLINSULT, qfalse );	// and I killed them with something else
;1236:				}
;1237:				if (!(ent->r.svFlags & SVF_BOT)) {
;1238:					G_Voice( ent, ent, SAY_TELL, VOICECHAT_KILLINSULT, qfalse );
;1239:				}
;1240:			}
;1241:			ent->client->lastkilled_client = -1;
;1242:			return;
;1243:		}
;1244:	}
;1245:
;1246:	if (g_gametype.integer >= GT_TEAM) {
;1247:		// praise a team mate who just got a reward
;1248:		for(i = 0; i < MAX_CLIENTS; i++) {
;1249:			who = g_entities + i;
;1250:			if (who->client && who != ent && who->client->sess.sessionTeam == ent->client->sess.sessionTeam) {
;1251:				if (who->client->rewardTime > level.time) {
;1252:					if (!(who->r.svFlags & SVF_BOT)) {
;1253:						G_Voice( ent, who, SAY_TELL, VOICECHAT_PRAISE, qfalse );
;1254:					}
;1255:					if (!(ent->r.svFlags & SVF_BOT)) {
;1256:						G_Voice( ent, ent, SAY_TELL, VOICECHAT_PRAISE, qfalse );
;1257:					}
;1258:					return;
;1259:				}
;1260:			}
;1261:		}
;1262:	}
;1263:
;1264:	// just say something
;1265:	G_Voice( ent, NULL, SAY_ALL, VOICECHAT_TAUNT, qfalse );
;1266:}
;1267:#endif
;1268:
;1269:
;1270:static char	*gc_orders[] = {
;1271:	"hold your position",
;1272:	"hold this position",
;1273:	"come here",
;1274:	"cover me",
;1275:	"guard location",
;1276:	"search and destroy",
;1277:	"report"
;1278:};
;1279:
;1280:void Cmd_GameCommand_f( gentity_t *ent ) {
line 1285
;1281:	int		player;
;1282:	int		order;
;1283:	char	str[MAX_TOKEN_CHARS];
;1284:
;1285:	trap_Argv( 1, str, sizeof( str ) );
CNSTI4 1
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1286
;1286:	player = atoi( str );
ADDRLP4 0
ARGP4
ADDRLP4 1032
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 1028
ADDRLP4 1032
INDIRI4
ASGNI4
line 1287
;1287:	trap_Argv( 2, str, sizeof( str ) );
CNSTI4 2
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1288
;1288:	order = atoi( str );
ADDRLP4 0
ARGP4
ADDRLP4 1036
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 1024
ADDRLP4 1036
INDIRI4
ASGNI4
line 1290
;1289:
;1290:	if ( (unsigned)player >= MAX_CLIENTS ) {
ADDRLP4 1028
INDIRI4
CVIU4 4
CNSTU4 64
LTU4 $519
line 1291
;1291:		return;
ADDRGP4 $518
JUMPV
LABELV $519
line 1293
;1292:	}
;1293:	if ( (unsigned) order > ARRAY_LEN( gc_orders ) ) {
ADDRLP4 1024
INDIRI4
CVIU4 4
CNSTU4 7
LEU4 $521
line 1294
;1294:		return;
ADDRGP4 $518
JUMPV
LABELV $521
line 1296
;1295:	}
;1296:	G_Say( ent, &g_entities[player], SAY_TELL, gc_orders[order] );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1028
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ARGP4
CNSTI4 2
ARGI4
ADDRLP4 1024
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 gc_orders
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_Say
CALLV
pop
line 1297
;1297:	G_Say( ent, ent, SAY_TELL, gc_orders[order] );
ADDRLP4 1040
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 1040
INDIRP4
ARGP4
ADDRLP4 1040
INDIRP4
ARGP4
CNSTI4 2
ARGI4
ADDRLP4 1024
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 gc_orders
ADDP4
INDIRP4
ARGP4
ADDRGP4 G_Say
CALLV
pop
line 1298
;1298:}
LABELV $518
endproc Cmd_GameCommand_f 1044 16
export Cmd_Where_f
proc Cmd_Where_f 8 8
line 1306
;1299:
;1300:
;1301:/*
;1302:==================
;1303:Cmd_Where_f
;1304:==================
;1305:*/
;1306:void Cmd_Where_f( gentity_t *ent ) {
line 1307
;1307:	trap_SendServerCommand( ent-g_entities, va("print \"%s\n\"", vtos( ent->s.origin ) ) );
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ARGP4
ADDRLP4 0
ADDRGP4 vtos
CALLP4
ASGNP4
ADDRGP4 $524
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 4
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
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1308
;1308:}
LABELV $523
endproc Cmd_Where_f 8 8
data
align 4
LABELV voteCommands
address $525
address $526
address $527
address $528
address $529
address $530
address $531
address $532
address $533
address $534
address $535
address $536
address $537
code
proc ValidVoteCommand 560 12
line 1335
;1309:
;1310:static const char *voteCommands[] = {
;1311:	"map_restart",
;1312:	"map",
;1313:	"rotate",
;1314:	"nextmap",
;1315:	"kick",
;1316:	"clientkick",
;1317:	"g_gametype",
;1318:	"g_unlagged",
;1319:	"g_warmup",
;1320:	"timelimit",
;1321:	"fraglimit",
;1322:	"capturelimit",
;1323:	"shuffle"
;1324:};
;1325:
;1326:
;1327:/*
;1328:==================
;1329:ValidVoteCommand
;1330:
;1331:Input string can be modified by overwriting gametype number instead of text value, for example
;1332:==================
;1333:*/
;1334:static qboolean ValidVoteCommand( int clientNum, char *command ) 
;1335:{
line 1341
;1336:	char buf[ MAX_CVAR_VALUE_STRING ];
;1337:	char *base;
;1338:	char *s;
;1339:	int	i;
;1340:
;1341:	if ( strchr( command, ';' ) || strchr( command, '\n' ) || strchr( command, '\r' ) )
ADDRFP4 4
INDIRP4
ARGP4
CNSTI4 59
ARGI4
ADDRLP4 268
ADDRGP4 strchr
CALLP4
ASGNP4
ADDRLP4 268
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $542
ADDRFP4 4
INDIRP4
ARGP4
CNSTI4 10
ARGI4
ADDRLP4 272
ADDRGP4 strchr
CALLP4
ASGNP4
ADDRLP4 272
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $542
ADDRFP4 4
INDIRP4
ARGP4
CNSTI4 13
ARGI4
ADDRLP4 276
ADDRGP4 strchr
CALLP4
ASGNP4
ADDRLP4 276
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $539
LABELV $542
line 1342
;1342:	{
line 1343
;1343:		trap_SendServerCommand( clientNum, "print \"Invalid vote command.\n\"" );
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 $543
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1344
;1344:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $538
JUMPV
LABELV $539
line 1347
;1345:	}
;1346:
;1347:	base = command;
ADDRLP4 264
ADDRFP4 4
INDIRP4
ASGNP4
line 1349
;1348:	
;1349:	s = buf; // extract command name
ADDRLP4 4
ADDRLP4 8
ASGNP4
ADDRGP4 $545
JUMPV
LABELV $544
line 1350
;1350:	while ( *command != '\0' && *command != ' ' ) {
line 1351
;1351:		*s = *command; s++; command++;
ADDRLP4 4
INDIRP4
ADDRFP4 4
INDIRP4
INDIRI1
ASGNI1
ADDRLP4 4
ADDRLP4 4
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
ADDRFP4 4
ADDRFP4 4
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
line 1352
;1352:	}
LABELV $545
line 1350
ADDRLP4 280
ADDRFP4 4
INDIRP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 280
INDIRI4
CNSTI4 0
EQI4 $547
ADDRLP4 280
INDIRI4
CNSTI4 32
NEI4 $544
LABELV $547
line 1353
;1353:	*s = '\0';
ADDRLP4 4
INDIRP4
CNSTI1 0
ASGNI1
ADDRGP4 $549
JUMPV
LABELV $548
line 1356
;1354:	// point cmd on first argument
;1355:	while ( *command == ' ' || *command == '\t' )
;1356:		command++;
ADDRFP4 4
ADDRFP4 4
INDIRP4
CNSTI4 1
ADDP4
ASGNP4
LABELV $549
line 1355
ADDRLP4 284
ADDRFP4 4
INDIRP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 284
INDIRI4
CNSTI4 32
EQI4 $548
ADDRLP4 284
INDIRI4
CNSTI4 9
EQI4 $548
line 1358
;1357:
;1358:	for ( i = 0; i < ARRAY_LEN( voteCommands ); i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $554
JUMPV
LABELV $551
line 1359
;1359:		if ( !Q_stricmp( buf, voteCommands[i] ) ) {
ADDRLP4 8
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 voteCommands
ADDP4
INDIRP4
ARGP4
ADDRLP4 288
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 288
INDIRI4
CNSTI4 0
NEI4 $555
line 1360
;1360:			break;
ADDRGP4 $553
JUMPV
LABELV $555
line 1362
;1361:		}
;1362:	}
LABELV $552
line 1358
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $554
ADDRLP4 0
INDIRI4
CVIU4 4
CNSTU4 13
LTU4 $551
LABELV $553
line 1364
;1363:
;1364:	if ( i == ARRAY_LEN( voteCommands ) ) {
ADDRLP4 0
INDIRI4
CVIU4 4
CNSTU4 13
NEU4 $557
line 1365
;1365:		trap_SendServerCommand( clientNum, "print \"Invalid vote command.\nVote commands are: \n"
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 $559
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1372
;1366:			" g_gametype <n|ffa|duel|tdm|ctf>\n"
;1367:			" map_restart, map <mapname>, rotate [round], nextmap\n"
;1368:			" kick <player>, clientkick <clientnum>\n"
;1369:			" g_unlagged <0|1>, g_warmup <-1|0|seconds>\n"
;1370:			" timelimit <time>, fraglimit <frags>, capturelimit <captures>\n"
;1371:		    " shuffle\n\"" );
;1372:		return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $538
JUMPV
LABELV $557
line 1375
;1373:	}
;1374:
;1375:	if ( Q_stricmp( buf, "g_gametype" ) == 0 )
ADDRLP4 8
ARGP4
ADDRGP4 $531
ARGP4
ADDRLP4 288
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 288
INDIRI4
CNSTI4 0
NEI4 $560
line 1376
;1376:	{
line 1377
;1377:		if ( !Q_stricmp( command, "ffa" ) ) i = GT_FFA;
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $564
ARGP4
ADDRLP4 292
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 292
INDIRI4
CNSTI4 0
NEI4 $562
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $563
JUMPV
LABELV $562
line 1378
;1378:		else if ( !Q_stricmp( command, "duel" ) ) i = GT_TOURNAMENT;
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $567
ARGP4
ADDRLP4 296
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 296
INDIRI4
CNSTI4 0
NEI4 $565
ADDRLP4 0
CNSTI4 1
ASGNI4
ADDRGP4 $566
JUMPV
LABELV $565
line 1379
;1379:		else if ( !Q_stricmp( command, "tdm" ) ) i = GT_TEAM;
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $570
ARGP4
ADDRLP4 300
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 300
INDIRI4
CNSTI4 0
NEI4 $568
ADDRLP4 0
CNSTI4 3
ASGNI4
ADDRGP4 $569
JUMPV
LABELV $568
line 1380
;1380:		else if ( !Q_stricmp( command, "ctf" ) ) i = GT_CTF;
ADDRFP4 4
INDIRP4
ARGP4
ADDRGP4 $573
ARGP4
ADDRLP4 304
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 304
INDIRI4
CNSTI4 0
NEI4 $571
ADDRLP4 0
CNSTI4 4
ASGNI4
ADDRGP4 $572
JUMPV
LABELV $571
line 1382
;1381:		else 
;1382:		{
line 1383
;1383:			i = atoi( command );
ADDRFP4 4
INDIRP4
ARGP4
ADDRLP4 308
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 0
ADDRLP4 308
INDIRI4
ASGNI4
line 1384
;1384:			if( i == GT_SINGLE_PLAYER || i < GT_FFA || i >= GT_MAX_GAME_TYPE ) {
ADDRLP4 0
INDIRI4
CNSTI4 2
EQI4 $577
ADDRLP4 0
INDIRI4
CNSTI4 0
LTI4 $577
ADDRLP4 0
INDIRI4
CNSTI4 5
LTI4 $574
LABELV $577
line 1385
;1385:				trap_SendServerCommand( clientNum, va( "print \"Invalid gametype %i.\n\"", i ) );
ADDRGP4 $578
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 316
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 316
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1386
;1386:				return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $538
JUMPV
LABELV $574
line 1388
;1387:			}
;1388:			return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $538
JUMPV
LABELV $572
LABELV $569
LABELV $566
LABELV $563
line 1392
;1389:		}
;1390:
;1391:		// handle string values
;1392:		BG_sprintf( base, "g_gametype %i", i );
ADDRLP4 264
INDIRP4
ARGP4
ADDRGP4 $579
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 BG_sprintf
CALLI4
pop
line 1394
;1393:
;1394:		return qtrue;
CNSTI4 1
RETI4
ADDRGP4 $538
JUMPV
LABELV $560
line 1397
;1395:	}
;1396:
;1397:	if (Q_stricmp(buf, "map") == 0) {
ADDRLP4 8
ARGP4
ADDRGP4 $526
ARGP4
ADDRLP4 292
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 292
INDIRI4
CNSTI4 0
NEI4 $580
line 1399
;1398:		char map[256];
;1399:		Q_strncpyz(map, command, sizeof(map));
ADDRLP4 296
ARGP4
ADDRFP4 4
INDIRP4
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 Q_strncpyz
CALLV
pop
line 1401
;1400:
;1401:		if (!G_MapExist(map) || !MapInRotation(map)) {
ADDRLP4 296
ARGP4
ADDRLP4 552
ADDRGP4 G_MapExist
CALLI4
ASGNI4
ADDRLP4 552
INDIRI4
CNSTI4 0
EQI4 $584
ADDRLP4 296
ARGP4
ADDRLP4 556
ADDRGP4 MapInRotation
CALLI4
ASGNI4
ADDRLP4 556
INDIRI4
CNSTI4 0
NEI4 $582
LABELV $584
line 1402
;1402:			trap_SendServerCommand(clientNum, "print \"^3Map not found.\n\"");
ADDRFP4 0
INDIRI4
ARGI4
ADDRGP4 $585
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1403
;1403:			return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $538
JUMPV
LABELV $582
line 1406
;1404:		}
;1405:
;1406:		return qtrue;
CNSTI4 1
RETI4
ADDRGP4 $538
JUMPV
LABELV $580
line 1409
;1407:	}
;1408:
;1409:	if (Q_stricmp(buf, "nextmap") == 0) {
ADDRLP4 8
ARGP4
ADDRGP4 $528
ARGP4
ADDRLP4 296
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 296
INDIRI4
CNSTI4 0
NEI4 $586
line 1410
;1410:		strcpy(base, "rotate");
ADDRLP4 264
INDIRP4
ARGP4
ADDRGP4 $527
ARGP4
ADDRGP4 strcpy
CALLP4
pop
line 1411
;1411:	}
LABELV $586
line 1413
;1412:
;1413:	return qtrue;
CNSTI4 1
RETI4
LABELV $538
endproc ValidVoteCommand 560 12
export Cmd_CallVote_f
proc Cmd_CallVote_f 2116 16
line 1421
;1414:}
;1415:
;1416:/*
;1417:==================
;1418:Cmd_CallVote_f
;1419:==================
;1420:*/
;1421:void Cmd_CallVote_f(gentity_t* ent) {
line 1425
;1422:	int i, n;
;1423:	char arg[MAX_STRING_TOKENS], * argn[4];
;1424:	char cmd[MAX_STRING_TOKENS], * s;
;1425:	int currentTime = level.time;
ADDRLP4 2076
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1428
;1426:
;1427:	// Check if enough time has passed since the player joined
;1428:	if (currentTime - ent->client->pers.joinTime < 5000 ) { // 5 seconds delay
ADDRLP4 2076
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 632
ADDP4
INDIRI4
SUBI4
CNSTI4 5000
GEI4 $590
line 1429
;1429:		trap_SendServerCommand(ent - g_entities, "print \"You must wait 5 seconds after joining before calling a vote.\n\"");
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
ADDRGP4 $592
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1430
;1430:		return;
ADDRGP4 $588
JUMPV
LABELV $590
line 1434
;1431:	}
;1432:
;1433:
;1434:	if (!g_allowVote.integer) {
ADDRGP4 g_allowVote+12
INDIRI4
CNSTI4 0
NEI4 $593
line 1435
;1435:		trap_SendServerCommand(ent - g_entities, "print \"Voting not allowed here.\n\"");
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
ADDRGP4 $596
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1436
;1436:		return;
ADDRGP4 $588
JUMPV
LABELV $593
line 1439
;1437:	}
;1438:
;1439:	if (level.voteTime) {
ADDRGP4 level+872
INDIRI4
CNSTI4 0
EQI4 $597
line 1440
;1440:		trap_SendServerCommand(ent - g_entities, "print \"A vote is already in progress.\n\"");
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
ADDRGP4 $600
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1441
;1441:		return;
ADDRGP4 $588
JUMPV
LABELV $597
line 1445
;1442:	}
;1443:
;1444:	// if there is still a vote to be executed
;1445:	if (level.voteExecuteTime || level.restarted) {
ADDRGP4 level+876
INDIRI4
CNSTI4 0
NEI4 $605
ADDRGP4 level+72
INDIRI4
CNSTI4 0
EQI4 $601
LABELV $605
line 1446
;1446:		trap_SendServerCommand(ent - g_entities, "print \"Previous vote command is waiting execution^1.^7\n\"");
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
ADDRGP4 $606
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1447
;1447:		return;
ADDRGP4 $588
JUMPV
LABELV $601
line 1450
;1448:	}
;1449:
;1450:	if (ent->client->pers.voteCount >= MAX_VOTE_COUNT) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 600
ADDP4
INDIRI4
CNSTI4 3
LTI4 $607
line 1451
;1451:		trap_SendServerCommand(ent - g_entities, "print \"You have called the maximum number of votes.\n\"");
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
ADDRGP4 $609
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1452
;1452:		return;
ADDRGP4 $588
JUMPV
LABELV $607
line 1454
;1453:	}
;1454:	if (ent->client->sess.sessionTeam == TEAM_SPECTATOR) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $610
line 1455
;1455:		trap_SendServerCommand(ent - g_entities, "print \"Not allowed to call a vote as spectator.\n\"");
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
ADDRGP4 $612
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1456
;1456:		return;
ADDRGP4 $588
JUMPV
LABELV $610
line 1460
;1457:	}
;1458:
;1459:	// build command buffer
;1460:	arg[0] = '\0';
ADDRLP4 1052
CNSTI1 0
ASGNI1
line 1461
;1461:	s = arg;
ADDRLP4 4
ADDRLP4 1052
ASGNP4
line 1462
;1462:	for (i = 1; i < trap_Argc(); i++) {
ADDRLP4 0
CNSTI4 1
ASGNI4
ADDRGP4 $616
JUMPV
LABELV $613
line 1463
;1463:		if (arg[0])
ADDRLP4 1052
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $617
line 1464
;1464:			s = Q_stradd(s, " ");
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $619
ARGP4
ADDRLP4 2080
ADDRGP4 Q_stradd
CALLP4
ASGNP4
ADDRLP4 4
ADDRLP4 2080
INDIRP4
ASGNP4
LABELV $617
line 1465
;1465:		trap_Argv(i, cmd, sizeof(cmd));
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 8
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1466
;1466:		s = Q_stradd(s, cmd);
ADDRLP4 4
INDIRP4
ARGP4
ADDRLP4 8
ARGP4
ADDRLP4 2084
ADDRGP4 Q_stradd
CALLP4
ASGNP4
ADDRLP4 4
ADDRLP4 2084
INDIRP4
ASGNP4
line 1467
;1467:	}
LABELV $614
line 1462
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $616
ADDRLP4 2080
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
ADDRLP4 2080
INDIRI4
LTI4 $613
line 1470
;1468:
;1469:	// split by ';' separators
;1470:	n = Com_Split(arg, argn, ARRAY_LEN(argn), ';');
ADDRLP4 1052
ARGP4
ADDRLP4 1032
ARGP4
CNSTI4 4
ARGI4
CNSTI4 59
ARGI4
ADDRLP4 2084
ADDRGP4 Com_Split
CALLI4
ASGNI4
ADDRLP4 1048
ADDRLP4 2084
INDIRI4
ASGNI4
line 1471
;1471:	if (n == 0 || *argn[0] == '\0')
ADDRLP4 1048
INDIRI4
CNSTI4 0
EQI4 $622
ADDRLP4 1032
INDIRP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $620
LABELV $622
line 1472
;1472:		return; // empty callvote command?
ADDRGP4 $588
JUMPV
LABELV $620
line 1475
;1473:
;1474:	// validate all split commands
;1475:	for (i = 0; i < n; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $626
JUMPV
LABELV $623
line 1477
;1476:		// make sure it is a valid command to vote on
;1477:		if (!ValidVoteCommand(ent - g_entities, argn[i]))
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
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 1032
ADDP4
INDIRP4
ARGP4
ADDRLP4 2088
ADDRGP4 ValidVoteCommand
CALLI4
ASGNI4
ADDRLP4 2088
INDIRI4
CNSTI4 0
NEI4 $627
line 1478
;1478:			return;
ADDRGP4 $588
JUMPV
LABELV $627
line 1479
;1479:	}
LABELV $624
line 1475
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $626
ADDRLP4 0
INDIRI4
ADDRLP4 1048
INDIRI4
LTI4 $623
line 1482
;1480:
;1481:	// rebuild command buffer
;1482:	cmd[0] = '\0';
ADDRLP4 8
CNSTI1 0
ASGNI1
line 1483
;1483:	for (s = cmd, i = 0; i < n; i++) {
ADDRLP4 4
ADDRLP4 8
ASGNP4
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $632
JUMPV
LABELV $629
line 1484
;1484:		if (cmd[0])
ADDRLP4 8
INDIRI1
CVII4 1
CNSTI4 0
EQI4 $633
line 1485
;1485:			s = Q_stradd(s, ";");
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $635
ARGP4
ADDRLP4 2088
ADDRGP4 Q_stradd
CALLP4
ASGNP4
ADDRLP4 4
ADDRLP4 2088
INDIRP4
ASGNP4
LABELV $633
line 1486
;1486:		s = Q_stradd(s, argn[i]);
ADDRLP4 4
INDIRP4
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 1032
ADDP4
INDIRP4
ARGP4
ADDRLP4 2092
ADDRGP4 Q_stradd
CALLP4
ASGNP4
ADDRLP4 4
ADDRLP4 2092
INDIRP4
ASGNP4
line 1487
;1487:	}
LABELV $630
line 1483
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $632
ADDRLP4 0
INDIRI4
ADDRLP4 1048
INDIRI4
LTI4 $629
line 1489
;1488:
;1489:	Com_sprintf(level.voteString, sizeof(level.voteString), cmd);
ADDRGP4 level+360
ARGP4
CNSTI4 256
ARGI4
ADDRLP4 8
ARGP4
ADDRGP4 Com_sprintf
CALLI4
pop
line 1490
;1490:	Com_sprintf(level.voteDisplayString, sizeof(level.voteDisplayString), "%s", level.voteString);
ADDRGP4 level+616
ARGP4
CNSTI4 256
ARGI4
ADDRGP4 $640
ARGP4
ADDRGP4 level+360
ARGP4
ADDRGP4 Com_sprintf
CALLI4
pop
line 1492
;1491:
;1492:	trap_SendServerCommand(-1, va("print \"%s called a vote(%s).\n\"", ent->client->pers.netname, cmd));
ADDRGP4 $642
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 8
ARGP4
ADDRLP4 2088
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 -1
ARGI4
ADDRLP4 2088
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1495
;1493:
;1494:	// start the voting, the caller automatically votes yes
;1495:	level.voteTime = level.time;
ADDRGP4 level+872
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1496
;1496:	level.voteYes = 1;
ADDRGP4 level+880
CNSTI4 1
ASGNI4
line 1497
;1497:	level.voteNo = 0;
ADDRGP4 level+884
CNSTI4 0
ASGNI4
line 1499
;1498:
;1499:	for (i = 0; i < level.maxclients; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $650
JUMPV
LABELV $647
line 1500
;1500:		level.clients[i].ps.eFlags &= ~EF_VOTED;
ADDRLP4 2092
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 2092
INDIRP4
ADDRLP4 2092
INDIRP4
INDIRI4
CNSTI4 -16385
BANDI4
ASGNI4
line 1501
;1501:		level.clients[i].pers.voted = 0;
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 612
ADDP4
CNSTI4 0
ASGNI4
line 1502
;1502:	}
LABELV $648
line 1499
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $650
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $647
line 1504
;1503:
;1504:	ent->client->ps.eFlags |= EF_VOTED;
ADDRLP4 2092
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 2092
INDIRP4
ADDRLP4 2092
INDIRP4
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 1505
;1505:	ent->client->pers.voted = 1;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 612
ADDP4
CNSTI4 1
ASGNI4
line 1507
;1506:
;1507:	ent->client->pers.voteCount++;
ADDRLP4 2096
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 600
ADDP4
ASGNP4
ADDRLP4 2096
INDIRP4
ADDRLP4 2096
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1509
;1508:
;1509:	trap_SetConfigstring(CS_VOTE_TIME, va("%i", level.voteTime));
ADDRGP4 $652
ARGP4
ADDRGP4 level+872
INDIRI4
ARGI4
ADDRLP4 2100
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 8
ARGI4
ADDRLP4 2100
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1510
;1510:	trap_SetConfigstring(CS_VOTE_STRING, level.voteDisplayString);
CNSTI4 9
ARGI4
ADDRGP4 level+616
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1511
;1511:	trap_SetConfigstring(CS_VOTE_YES, va("%i", level.voteYes));
ADDRGP4 $652
ARGP4
ADDRGP4 level+880
INDIRI4
ARGI4
ADDRLP4 2104
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 10
ARGI4
ADDRLP4 2104
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1512
;1512:	trap_SetConfigstring(CS_VOTE_NO, va("%i", level.voteNo));
ADDRGP4 $652
ARGP4
ADDRGP4 level+884
INDIRI4
ARGI4
ADDRLP4 2108
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 11
ARGI4
ADDRLP4 2108
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1515
;1513:
;1514:	// Update last callvote time
;1515:	lastCallVoteTime = trap_Milliseconds();
ADDRLP4 2112
ADDRGP4 trap_Milliseconds
CALLI4
ASGNI4
ADDRGP4 lastCallVoteTime
ADDRLP4 2112
INDIRI4
ASGNI4
line 1516
;1516:}
LABELV $588
endproc Cmd_CallVote_f 2116 16
proc Cmd_Vote_f 80 12
line 1524
;1517:
;1518:
;1519:/*
;1520:==================
;1521:Cmd_Vote_f
;1522:==================
;1523:*/
;1524:static void Cmd_Vote_f( gentity_t *ent ) {
line 1527
;1525:	char		msg[64];
;1526:
;1527:	if ( !level.voteTime ) {
ADDRGP4 level+872
INDIRI4
CNSTI4 0
NEI4 $658
line 1528
;1528:		trap_SendServerCommand( ent-g_entities, "print \"No vote in progress.\n\"" );
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
ADDRGP4 $661
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1529
;1529:		return;
ADDRGP4 $657
JUMPV
LABELV $658
line 1532
;1530:	}
;1531:
;1532:	if ( ent->client->pers.voted != 0 ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 612
ADDP4
INDIRI4
CNSTI4 0
EQI4 $662
line 1533
;1533:		trap_SendServerCommand( ent-g_entities, "print \"Vote already cast.\n\"" );
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
ADDRGP4 $664
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1534
;1534:		return;
ADDRGP4 $657
JUMPV
LABELV $662
line 1537
;1535:	}
;1536:
;1537:	if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $665
line 1538
;1538:		trap_SendServerCommand( ent-g_entities, "print \"Not allowed to vote as spectator.\n\"" );
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
ADDRGP4 $667
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1539
;1539:		return;
ADDRGP4 $657
JUMPV
LABELV $665
line 1542
;1540:	}
;1541:
;1542:	trap_SendServerCommand( ent-g_entities, "print \"Vote cast.\n\"" );
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
ADDRGP4 $668
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1544
;1543:
;1544:	ent->client->ps.eFlags |= EF_VOTED;
ADDRLP4 64
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 64
INDIRP4
ADDRLP4 64
INDIRP4
INDIRI4
CNSTI4 16384
BORI4
ASGNI4
line 1546
;1545:
;1546:	trap_Argv( 1, msg, sizeof( msg ) );
CNSTI4 1
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 64
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1548
;1547:
;1548:	if ( msg[0] == 'y' || msg[0] == 'Y' || msg[0] == '1' ) {
ADDRLP4 68
ADDRLP4 0
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 68
INDIRI4
CNSTI4 121
EQI4 $672
ADDRLP4 68
INDIRI4
CNSTI4 89
EQI4 $672
ADDRLP4 68
INDIRI4
CNSTI4 49
NEI4 $669
LABELV $672
line 1549
;1549:		level.voteYes++;
ADDRLP4 72
ADDRGP4 level+880
ASGNP4
ADDRLP4 72
INDIRP4
ADDRLP4 72
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1550
;1550:		ent->client->pers.voted = 1;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 612
ADDP4
CNSTI4 1
ASGNI4
line 1551
;1551:		trap_SetConfigstring( CS_VOTE_YES, va( "%i", level.voteYes ) );
ADDRGP4 $652
ARGP4
ADDRGP4 level+880
INDIRI4
ARGI4
ADDRLP4 76
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 10
ARGI4
ADDRLP4 76
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1552
;1552:	} else {
ADDRGP4 $670
JUMPV
LABELV $669
line 1553
;1553:		level.voteNo++;
ADDRLP4 72
ADDRGP4 level+884
ASGNP4
ADDRLP4 72
INDIRP4
ADDRLP4 72
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1554
;1554:		ent->client->pers.voted = -1;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 612
ADDP4
CNSTI4 -1
ASGNI4
line 1555
;1555:		trap_SetConfigstring( CS_VOTE_NO, va( "%i", level.voteNo ) );	
ADDRGP4 $652
ARGP4
ADDRGP4 level+884
INDIRI4
ARGI4
ADDRLP4 76
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 11
ARGI4
ADDRLP4 76
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1556
;1556:	}
LABELV $670
line 1560
;1557:
;1558:	// a majority will be determined in CheckVote, which will also account
;1559:	// for players entering or leaving
;1560:}
LABELV $657
endproc Cmd_Vote_f 80 12
export G_RevertVote
proc G_RevertVote 20 8
line 1563
;1561:
;1562:
;1563:void G_RevertVote( gclient_t *client ) {
line 1564
;1564:	if ( level.voteTime ) {
ADDRGP4 level+872
INDIRI4
CNSTI4 0
EQI4 $678
line 1565
;1565:		if ( client->pers.voted == 1 ) {
ADDRFP4 0
INDIRP4
CNSTI4 612
ADDP4
INDIRI4
CNSTI4 1
NEI4 $681
line 1566
;1566:			level.voteYes--;
ADDRLP4 0
ADDRGP4 level+880
ASGNP4
ADDRLP4 0
INDIRP4
ADDRLP4 0
INDIRP4
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 1567
;1567:			client->pers.voted = 0;
ADDRFP4 0
INDIRP4
CNSTI4 612
ADDP4
CNSTI4 0
ASGNI4
line 1568
;1568:			client->ps.eFlags &= ~EF_VOTED;
ADDRLP4 4
ADDRFP4 0
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 -16385
BANDI4
ASGNI4
line 1569
;1569:			trap_SetConfigstring( CS_VOTE_YES, va( "%i", level.voteYes ) );
ADDRGP4 $652
ARGP4
ADDRGP4 level+880
INDIRI4
ARGI4
ADDRLP4 8
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 10
ARGI4
ADDRLP4 8
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1570
;1570:		} else if ( client->pers.voted == -1 ) {
ADDRGP4 $682
JUMPV
LABELV $681
ADDRFP4 0
INDIRP4
CNSTI4 612
ADDP4
INDIRI4
CNSTI4 -1
NEI4 $685
line 1571
;1571:			level.voteNo--;
ADDRLP4 0
ADDRGP4 level+884
ASGNP4
ADDRLP4 0
INDIRP4
ADDRLP4 0
INDIRP4
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 1572
;1572:			client->pers.voted = 0;
ADDRFP4 0
INDIRP4
CNSTI4 612
ADDP4
CNSTI4 0
ASGNI4
line 1573
;1573:			client->ps.eFlags &= ~EF_VOTED;
ADDRLP4 4
ADDRFP4 0
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 -16385
BANDI4
ASGNI4
line 1574
;1574:			trap_SetConfigstring( CS_VOTE_NO, va( "%i", level.voteNo ) );
ADDRGP4 $652
ARGP4
ADDRGP4 level+884
INDIRI4
ARGI4
ADDRLP4 8
ADDRGP4 va
CALLP4
ASGNP4
CNSTI4 11
ARGI4
ADDRLP4 8
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1575
;1575:		}
LABELV $685
LABELV $682
line 1576
;1576:	}
LABELV $678
line 1577
;1577:	if ( client->sess.sessionTeam == TEAM_RED || client->sess.sessionTeam == TEAM_BLUE ) {
ADDRLP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 1
EQI4 $691
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 2
NEI4 $689
LABELV $691
line 1579
;1578:		int cs_offset;
;1579:		if ( client->sess.sessionTeam == TEAM_RED )
ADDRFP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 1
NEI4 $692
line 1580
;1580:			cs_offset = 0;
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $693
JUMPV
LABELV $692
line 1582
;1581:		else
;1582:			cs_offset = 1;
ADDRLP4 4
CNSTI4 1
ASGNI4
LABELV $693
line 1583
;1583:		if ( client->pers.teamVoted == 1 ) {
ADDRFP4 0
INDIRP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 1
NEI4 $694
line 1584
;1584:			level.teamVoteYes[cs_offset]--;
ADDRLP4 8
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2948
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 1585
;1585:			client->pers.teamVoted = 0;
ADDRFP4 0
INDIRP4
CNSTI4 616
ADDP4
CNSTI4 0
ASGNI4
line 1586
;1586:			client->ps.eFlags &= ~EF_TEAMVOTED;
ADDRLP4 12
ADDRFP4 0
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 12
INDIRP4
ADDRLP4 12
INDIRP4
INDIRI4
CNSTI4 -524289
BANDI4
ASGNI4
line 1587
;1587:			trap_SetConfigstring( CS_TEAMVOTE_YES + cs_offset, va("%i", level.teamVoteYes[cs_offset] ) );
ADDRGP4 $652
ARGP4
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2948
ADDP4
INDIRI4
ARGI4
ADDRLP4 16
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 4
INDIRI4
CNSTI4 16
ADDI4
ARGI4
ADDRLP4 16
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1588
;1588:		} else if ( client->pers.teamVoted == -1 ) {
ADDRGP4 $695
JUMPV
LABELV $694
ADDRFP4 0
INDIRP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 -1
NEI4 $698
line 1589
;1589:			level.teamVoteNo[cs_offset]--;
ADDRLP4 8
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2956
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 1590
;1590:			client->pers.teamVoted = 0;
ADDRFP4 0
INDIRP4
CNSTI4 616
ADDP4
CNSTI4 0
ASGNI4
line 1591
;1591:			client->ps.eFlags &= ~EF_TEAMVOTED;
ADDRLP4 12
ADDRFP4 0
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 12
INDIRP4
ADDRLP4 12
INDIRP4
INDIRI4
CNSTI4 -524289
BANDI4
ASGNI4
line 1592
;1592:			trap_SetConfigstring( CS_TEAMVOTE_NO + cs_offset, va("%i", level.teamVoteNo[cs_offset] ) );
ADDRGP4 $652
ARGP4
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2956
ADDP4
INDIRI4
ARGI4
ADDRLP4 16
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 4
INDIRI4
CNSTI4 18
ADDI4
ARGI4
ADDRLP4 16
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1593
;1593:		}
LABELV $698
LABELV $695
line 1594
;1594:	} 
LABELV $689
line 1595
;1595:}
LABELV $677
endproc G_RevertVote 20 8
proc Cmd_CallTeamVote_f 2172 20
line 1603
;1596:
;1597:
;1598:/*
;1599:==================
;1600:Cmd_CallTeamVote_f
;1601:==================
;1602:*/
;1603:static void Cmd_CallTeamVote_f( gentity_t *ent ) {
line 1608
;1604:	int		i, team, cs_offset;
;1605:	char	arg1[MAX_STRING_TOKENS];
;1606:	char	arg2[MAX_STRING_TOKENS];
;1607:
;1608:	team = ent->client->sess.sessionTeam;
ADDRLP4 1028
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ASGNI4
line 1609
;1609:	if ( team == TEAM_RED )
ADDRLP4 1028
INDIRI4
CNSTI4 1
NEI4 $703
line 1610
;1610:		cs_offset = 0;
ADDRLP4 1032
CNSTI4 0
ASGNI4
ADDRGP4 $704
JUMPV
LABELV $703
line 1611
;1611:	else if ( team == TEAM_BLUE )
ADDRLP4 1028
INDIRI4
CNSTI4 2
NEI4 $702
line 1612
;1612:		cs_offset = 1;
ADDRLP4 1032
CNSTI4 1
ASGNI4
line 1614
;1613:	else
;1614:		return;
LABELV $706
LABELV $704
line 1616
;1615:
;1616:	if ( !g_allowVote.integer ) {
ADDRGP4 g_allowVote+12
INDIRI4
CNSTI4 0
NEI4 $707
line 1617
;1617:		trap_SendServerCommand( ent-g_entities, "print \"Voting not allowed here.\n\"" );
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
ADDRGP4 $596
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1618
;1618:		return;
ADDRGP4 $702
JUMPV
LABELV $707
line 1621
;1619:	}
;1620:
;1621:	if ( level.teamVoteTime[cs_offset] ) {
ADDRLP4 1032
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
INDIRI4
CNSTI4 0
EQI4 $710
line 1622
;1622:		trap_SendServerCommand( ent-g_entities, "print \"A team vote is already in progress.\n\"" );
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
ADDRGP4 $713
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1623
;1623:		return;
ADDRGP4 $702
JUMPV
LABELV $710
line 1625
;1624:	}
;1625:	if ( ent->client->pers.teamVoteCount >= MAX_VOTE_COUNT ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 604
ADDP4
INDIRI4
CNSTI4 3
LTI4 $714
line 1626
;1626:		trap_SendServerCommand( ent-g_entities, "print \"You have called the maximum number of team votes.\n\"" );
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
ADDRGP4 $716
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1627
;1627:		return;
ADDRGP4 $702
JUMPV
LABELV $714
line 1630
;1628:	}
;1629:
;1630:	if ( level.voteExecuteTime || level.restarted ) {
ADDRGP4 level+876
INDIRI4
CNSTI4 0
NEI4 $721
ADDRGP4 level+72
INDIRI4
CNSTI4 0
EQI4 $717
LABELV $721
line 1631
;1631:		return;
ADDRGP4 $702
JUMPV
LABELV $717
line 1634
;1632:	}
;1633:
;1634:	if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $722
line 1635
;1635:		trap_SendServerCommand( ent-g_entities, "print \"Not allowed to call a vote as spectator.\n\"" );
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
ADDRGP4 $612
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1636
;1636:		return;
ADDRGP4 $702
JUMPV
LABELV $722
line 1640
;1637:	}
;1638:
;1639:	// make sure it is a valid command to vote on
;1640:	trap_Argv( 1, arg1, sizeof( arg1 ) );
CNSTI4 1
ARGI4
ADDRLP4 1036
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1641
;1641:	arg2[0] = '\0';
ADDRLP4 4
CNSTI1 0
ASGNI1
line 1642
;1642:	for ( i = 2; i < trap_Argc(); i++ ) {
ADDRLP4 0
CNSTI4 2
ASGNI4
ADDRGP4 $727
JUMPV
LABELV $724
line 1643
;1643:		if (i > 2)
ADDRLP4 0
INDIRI4
CNSTI4 2
LEI4 $728
line 1644
;1644:			strcat(arg2, " ");
ADDRLP4 4
ARGP4
ADDRGP4 $619
ARGP4
ADDRGP4 strcat
CALLP4
pop
LABELV $728
line 1645
;1645:		trap_Argv( i, &arg2[strlen(arg2)], sizeof( arg2 ) - (int)strlen(arg2) );
ADDRLP4 4
ARGP4
ADDRLP4 2060
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 4
ARGP4
ADDRLP4 2064
ADDRGP4 strlen
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 2060
INDIRI4
ADDRLP4 4
ADDP4
ARGP4
CNSTU4 1024
ADDRLP4 2064
INDIRI4
CVIU4 4
SUBU4
CVUI4 4
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1646
;1646:	}
LABELV $725
line 1642
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $727
ADDRLP4 2060
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 0
INDIRI4
ADDRLP4 2060
INDIRI4
LTI4 $724
line 1648
;1647:
;1648:	if( strchr( arg1, ';' ) || strchr( arg2, ';' ) || strchr( arg2, '\n' ) || strchr( arg2, '\r' ) ) {
ADDRLP4 1036
ARGP4
CNSTI4 59
ARGI4
ADDRLP4 2064
ADDRGP4 strchr
CALLP4
ASGNP4
ADDRLP4 2064
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $734
ADDRLP4 4
ARGP4
CNSTI4 59
ARGI4
ADDRLP4 2068
ADDRGP4 strchr
CALLP4
ASGNP4
ADDRLP4 2068
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $734
ADDRLP4 4
ARGP4
CNSTI4 10
ARGI4
ADDRLP4 2072
ADDRGP4 strchr
CALLP4
ASGNP4
ADDRLP4 2072
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $734
ADDRLP4 4
ARGP4
CNSTI4 13
ARGI4
ADDRLP4 2076
ADDRGP4 strchr
CALLP4
ASGNP4
ADDRLP4 2076
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $730
LABELV $734
line 1649
;1649:		trap_SendServerCommand( ent-g_entities, "print \"Invalid vote string.\n\"" );
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
ADDRGP4 $735
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1650
;1650:		return;
ADDRGP4 $702
JUMPV
LABELV $730
line 1653
;1651:	}
;1652:
;1653:	if ( !Q_stricmp( arg1, "leader" ) ) {
ADDRLP4 1036
ARGP4
ADDRGP4 $738
ARGP4
ADDRLP4 2080
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 2080
INDIRI4
CNSTI4 0
NEI4 $736
line 1656
;1654:		char netname[MAX_NETNAME], leader[MAX_NETNAME];
;1655:
;1656:		if ( !arg2[0] ) {
ADDRLP4 4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $739
line 1657
;1657:			i = ent->client->ps.clientNum;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 140
ADDP4
INDIRI4
ASGNI4
line 1658
;1658:		}
ADDRGP4 $740
JUMPV
LABELV $739
line 1659
;1659:		else {
line 1661
;1660:			// numeric values are just slot numbers
;1661:			for (i = 0; i < 3; i++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
LABELV $741
line 1662
;1662:				if ( !arg2[i] || arg2[i] < '0' || arg2[i] > '9' )
ADDRLP4 2156
ADDRLP4 0
INDIRI4
ADDRLP4 4
ADDP4
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 2156
INDIRI4
CNSTI4 0
EQI4 $748
ADDRLP4 2156
INDIRI4
CNSTI4 48
LTI4 $748
ADDRLP4 2156
INDIRI4
CNSTI4 57
LEI4 $745
LABELV $748
line 1663
;1663:					break;
ADDRGP4 $743
JUMPV
LABELV $745
line 1664
;1664:			}
LABELV $742
line 1661
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 3
LTI4 $741
LABELV $743
line 1665
;1665:			if ( i >= 3 || !arg2[i]) {
ADDRLP4 0
INDIRI4
CNSTI4 3
GEI4 $751
ADDRLP4 0
INDIRI4
ADDRLP4 4
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $749
LABELV $751
line 1666
;1666:				i = atoi( arg2 );
ADDRLP4 4
ARGP4
ADDRLP4 2160
ADDRGP4 atoi
CALLI4
ASGNI4
ADDRLP4 0
ADDRLP4 2160
INDIRI4
ASGNI4
line 1667
;1667:				if ( i < 0 || i >= level.maxclients ) {
ADDRLP4 0
INDIRI4
CNSTI4 0
LTI4 $755
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $752
LABELV $755
line 1668
;1668:					trap_SendServerCommand( ent-g_entities, va("print \"Bad client slot: %i\n\"", i) );
ADDRGP4 $122
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 2168
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
ADDRLP4 2168
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1669
;1669:					return;
ADDRGP4 $702
JUMPV
LABELV $752
line 1672
;1670:				}
;1671:
;1672:				if ( !g_entities[i].inuse ) {
ADDRLP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities+520
ADDP4
INDIRI4
CNSTI4 0
NEI4 $750
line 1673
;1673:					trap_SendServerCommand( ent-g_entities, va("print \"Client %i is not active\n\"", i) );
ADDRGP4 $125
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 2168
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
ADDRLP4 2168
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1674
;1674:					return;
ADDRGP4 $702
JUMPV
line 1676
;1675:				}
;1676:			}
LABELV $749
line 1677
;1677:			else {
line 1678
;1678:				Q_strncpyz(leader, arg2, sizeof(leader));
ADDRLP4 2120
ARGP4
ADDRLP4 4
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 Q_strncpyz
CALLV
pop
line 1679
;1679:				Q_CleanStr(leader);
ADDRLP4 2120
ARGP4
ADDRGP4 Q_CleanStr
CALLP4
pop
line 1680
;1680:				for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $762
JUMPV
LABELV $759
line 1681
;1681:					if ( level.clients[i].pers.connected == CON_DISCONNECTED )
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
NEI4 $764
line 1682
;1682:						continue;
ADDRGP4 $760
JUMPV
LABELV $764
line 1683
;1683:					if (level.clients[i].sess.sessionTeam != team)
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
ADDRLP4 1028
INDIRI4
EQI4 $766
line 1684
;1684:						continue;
ADDRGP4 $760
JUMPV
LABELV $766
line 1685
;1685:					Q_strncpyz(netname, level.clients[i].pers.netname, sizeof(netname));
ADDRLP4 2084
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 508
ADDP4
ARGP4
CNSTI4 36
ARGI4
ADDRGP4 Q_strncpyz
CALLV
pop
line 1686
;1686:					Q_CleanStr(netname);
ADDRLP4 2084
ARGP4
ADDRGP4 Q_CleanStr
CALLP4
pop
line 1687
;1687:					if ( !Q_stricmp(netname, leader) ) {
ADDRLP4 2084
ARGP4
ADDRLP4 2120
ARGP4
ADDRLP4 2160
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 2160
INDIRI4
CNSTI4 0
NEI4 $768
line 1688
;1688:						break;
ADDRGP4 $761
JUMPV
LABELV $768
line 1690
;1689:					}
;1690:				}
LABELV $760
line 1680
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $762
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $759
LABELV $761
line 1691
;1691:				if ( i >= level.maxclients ) {
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $770
line 1692
;1692:					trap_SendServerCommand( ent-g_entities, va("print \"%s is not a valid player on your team.\n\"", arg2) );
ADDRGP4 $773
ARGP4
ADDRLP4 4
ARGP4
ADDRLP4 2160
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
ADDRLP4 2160
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1693
;1693:					return;
ADDRGP4 $702
JUMPV
LABELV $770
line 1695
;1694:				}
;1695:			}
LABELV $750
line 1696
;1696:		}
LABELV $740
line 1697
;1697:		Com_sprintf(arg2, sizeof(arg2), "%d", i);
ADDRLP4 4
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 $231
ARGP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRGP4 Com_sprintf
CALLI4
pop
line 1698
;1698:	} else {
ADDRGP4 $737
JUMPV
LABELV $736
line 1699
;1699:		trap_SendServerCommand( ent-g_entities, "print \"Invalid vote string.\n\"" );
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
ADDRGP4 $735
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1700
;1700:		trap_SendServerCommand( ent-g_entities, "print \"Team vote commands are: leader <player>.\n\"" );
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
ADDRGP4 $774
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1701
;1701:		return;
ADDRGP4 $702
JUMPV
LABELV $737
line 1704
;1702:	}
;1703:
;1704:	Com_sprintf( level.teamVoteString[cs_offset], sizeof( level.teamVoteString[cs_offset] ), "%s %s", arg1, arg2 );
ADDRLP4 1032
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+892
ADDP4
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 $777
ARGP4
ADDRLP4 1036
ARGP4
ADDRLP4 4
ARGP4
ADDRGP4 Com_sprintf
CALLI4
pop
line 1706
;1705:
;1706:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $781
JUMPV
LABELV $778
line 1707
;1707:		if ( level.clients[i].pers.connected == CON_DISCONNECTED )
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
NEI4 $783
line 1708
;1708:			continue;
ADDRGP4 $779
JUMPV
LABELV $783
line 1709
;1709:		if (level.clients[i].sess.sessionTeam == team)
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
ADDRLP4 1028
INDIRI4
NEI4 $785
line 1710
;1710:			trap_SendServerCommand( i, va("print \"%s called a team vote.\n\"", ent->client->pers.netname ) );
ADDRGP4 $787
ARGP4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 508
ADDP4
ARGP4
ADDRLP4 2084
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 0
INDIRI4
ARGI4
ADDRLP4 2084
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
LABELV $785
line 1711
;1711:	}
LABELV $779
line 1706
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $781
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $778
line 1714
;1712:
;1713:	// start the voting, the caller automatically votes yes
;1714:	level.teamVoteTime[cs_offset] = level.time;
ADDRLP4 1032
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1715
;1715:	level.teamVoteYes[cs_offset] = 1;
ADDRLP4 1032
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2948
ADDP4
CNSTI4 1
ASGNI4
line 1716
;1716:	level.teamVoteNo[cs_offset] = 0;
ADDRLP4 1032
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2956
ADDP4
CNSTI4 0
ASGNI4
line 1718
;1717:
;1718:	for ( i = 0 ; i < level.maxclients ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $795
JUMPV
LABELV $792
line 1719
;1719:		if ( level.clients[i].sess.sessionTeam == team ) {
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
ADDRLP4 1028
INDIRI4
NEI4 $797
line 1720
;1720:			level.clients[i].ps.eFlags &= ~EF_TEAMVOTED;
ADDRLP4 2084
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 2084
INDIRP4
ADDRLP4 2084
INDIRP4
INDIRI4
CNSTI4 -524289
BANDI4
ASGNI4
line 1721
;1721:			level.clients[i].pers.teamVoted = 0;
ADDRLP4 0
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
CNSTI4 616
ADDP4
CNSTI4 0
ASGNI4
line 1722
;1722:		}
LABELV $797
line 1723
;1723:	}
LABELV $793
line 1718
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $795
ADDRLP4 0
INDIRI4
ADDRGP4 level+24
INDIRI4
LTI4 $792
line 1724
;1724:	ent->client->ps.eFlags |= EF_TEAMVOTED;
ADDRLP4 2084
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 2084
INDIRP4
ADDRLP4 2084
INDIRP4
INDIRI4
CNSTI4 524288
BORI4
ASGNI4
line 1725
;1725:	ent->client->pers.teamVoted = 1;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 616
ADDP4
CNSTI4 1
ASGNI4
line 1727
;1726:
;1727:	ent->client->pers.teamVoteCount++;
ADDRLP4 2088
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 604
ADDP4
ASGNP4
ADDRLP4 2088
INDIRP4
ADDRLP4 2088
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1729
;1728:
;1729:	trap_SetConfigstring( CS_TEAMVOTE_TIME + cs_offset, va("%i", level.teamVoteTime[cs_offset] ) );
ADDRGP4 $652
ARGP4
ADDRLP4 1032
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
INDIRI4
ARGI4
ADDRLP4 2092
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 1032
INDIRI4
CNSTI4 12
ADDI4
ARGI4
ADDRLP4 2092
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1730
;1730:	trap_SetConfigstring( CS_TEAMVOTE_STRING + cs_offset, level.teamVoteString[cs_offset] );
ADDRLP4 1032
INDIRI4
CNSTI4 14
ADDI4
ARGI4
ADDRLP4 1032
INDIRI4
CNSTI4 10
LSHI4
ADDRGP4 level+892
ADDP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1731
;1731:	trap_SetConfigstring( CS_TEAMVOTE_YES + cs_offset, va("%i", level.teamVoteYes[cs_offset] ) );
ADDRGP4 $652
ARGP4
ADDRLP4 1032
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2948
ADDP4
INDIRI4
ARGI4
ADDRLP4 2100
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 1032
INDIRI4
CNSTI4 16
ADDI4
ARGI4
ADDRLP4 2100
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1732
;1732:	trap_SetConfigstring( CS_TEAMVOTE_NO + cs_offset, va("%i", level.teamVoteNo[cs_offset] ) );
ADDRGP4 $652
ARGP4
ADDRLP4 1032
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2956
ADDP4
INDIRI4
ARGI4
ADDRLP4 2104
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 1032
INDIRI4
CNSTI4 18
ADDI4
ARGI4
ADDRLP4 2104
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1733
;1733:}
LABELV $702
endproc Cmd_CallTeamVote_f 2172 20
proc Cmd_TeamVote_f 92 12
line 1741
;1734:
;1735:
;1736:/*
;1737:==================
;1738:Cmd_TeamVote_f
;1739:==================
;1740:*/
;1741:static void Cmd_TeamVote_f( gentity_t *ent ) {
line 1745
;1742:	int			team, cs_offset;
;1743:	char		msg[64];
;1744:
;1745:	team = ent->client->sess.sessionTeam;
ADDRLP4 68
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
ASGNI4
line 1746
;1746:	if ( team == TEAM_RED )
ADDRLP4 68
INDIRI4
CNSTI4 1
NEI4 $804
line 1747
;1747:		cs_offset = 0;
ADDRLP4 64
CNSTI4 0
ASGNI4
ADDRGP4 $805
JUMPV
LABELV $804
line 1748
;1748:	else if ( team == TEAM_BLUE )
ADDRLP4 68
INDIRI4
CNSTI4 2
NEI4 $803
line 1749
;1749:		cs_offset = 1;
ADDRLP4 64
CNSTI4 1
ASGNI4
line 1751
;1750:	else
;1751:		return;
LABELV $807
LABELV $805
line 1753
;1752:
;1753:	if ( !level.teamVoteTime[cs_offset] ) {
ADDRLP4 64
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2940
ADDP4
INDIRI4
CNSTI4 0
NEI4 $808
line 1754
;1754:		trap_SendServerCommand( ent-g_entities, "print \"No team vote in progress.\n\"" );
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
ADDRGP4 $811
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1755
;1755:		return;
ADDRGP4 $803
JUMPV
LABELV $808
line 1757
;1756:	}
;1757:	if ( ent->client->pers.teamVoted != 0 ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 616
ADDP4
INDIRI4
CNSTI4 0
EQI4 $812
line 1758
;1758:		trap_SendServerCommand( ent-g_entities, "print \"Team vote already cast.\n\"" );
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
ADDRGP4 $814
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1759
;1759:		return;
ADDRGP4 $803
JUMPV
LABELV $812
line 1761
;1760:	}
;1761:	if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $815
line 1762
;1762:		trap_SendServerCommand( ent-g_entities, "print \"Not allowed to vote as spectator.\n\"" );
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
ADDRGP4 $667
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1763
;1763:		return;
ADDRGP4 $803
JUMPV
LABELV $815
line 1766
;1764:	}
;1765:
;1766:	trap_SendServerCommand( ent-g_entities, "print \"Team vote cast.\n\"" );
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
ADDRGP4 $817
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1768
;1767:
;1768:	ent->client->ps.eFlags |= EF_TEAMVOTED;
ADDRLP4 72
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 72
INDIRP4
ADDRLP4 72
INDIRP4
INDIRI4
CNSTI4 524288
BORI4
ASGNI4
line 1769
;1769:	ent->client->pers.teamVoteCount++;
ADDRLP4 76
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 604
ADDP4
ASGNP4
ADDRLP4 76
INDIRP4
ADDRLP4 76
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 1771
;1770:
;1771:	trap_Argv( 1, msg, sizeof( msg ) );
CNSTI4 1
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 64
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1773
;1772:
;1773:	if ( msg[0] == 'y' || msg[0] == 'Y' || msg[0] == '1' ) {
ADDRLP4 80
ADDRLP4 0
INDIRI1
CVII4 1
ASGNI4
ADDRLP4 80
INDIRI4
CNSTI4 121
EQI4 $821
ADDRLP4 80
INDIRI4
CNSTI4 89
EQI4 $821
ADDRLP4 80
INDIRI4
CNSTI4 49
NEI4 $818
LABELV $821
line 1774
;1774:		level.teamVoteYes[cs_offset]++;
ADDRLP4 84
ADDRLP4 64
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2948
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
line 1775
;1775:		trap_SetConfigstring( CS_TEAMVOTE_YES + cs_offset, va("%i", level.teamVoteYes[cs_offset] ) );
ADDRGP4 $652
ARGP4
ADDRLP4 64
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2948
ADDP4
INDIRI4
ARGI4
ADDRLP4 88
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 64
INDIRI4
CNSTI4 16
ADDI4
ARGI4
ADDRLP4 88
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1776
;1776:	} else {
ADDRGP4 $819
JUMPV
LABELV $818
line 1777
;1777:		level.teamVoteNo[cs_offset]++;
ADDRLP4 84
ADDRLP4 64
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2956
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
line 1778
;1778:		trap_SetConfigstring( CS_TEAMVOTE_NO + cs_offset, va("%i", level.teamVoteNo[cs_offset] ) );	
ADDRGP4 $652
ARGP4
ADDRLP4 64
INDIRI4
CNSTI4 2
LSHI4
ADDRGP4 level+2956
ADDP4
INDIRI4
ARGI4
ADDRLP4 88
ADDRGP4 va
CALLP4
ASGNP4
ADDRLP4 64
INDIRI4
CNSTI4 18
ADDI4
ARGI4
ADDRLP4 88
INDIRP4
ARGP4
ADDRGP4 trap_SetConfigstring
CALLV
pop
line 1779
;1779:	}
LABELV $819
line 1783
;1780:
;1781:	// a majority will be determined in TeamCheckVote, which will also account
;1782:	// for players entering or leaving
;1783:}
LABELV $803
endproc Cmd_TeamVote_f 92 12
proc Cmd_SetViewpos_f 1060 12
line 1791
;1784:
;1785:
;1786:/*
;1787:=================
;1788:Cmd_SetViewpos_f
;1789:=================
;1790:*/
;1791:static void Cmd_SetViewpos_f( gentity_t *ent ) {
line 1796
;1792:	vec3_t		origin, angles;
;1793:	char		buffer[MAX_TOKEN_CHARS];
;1794:	int			i;
;1795:
;1796:	if ( !g_cheats.integer ) {
ADDRGP4 g_cheats+12
INDIRI4
CNSTI4 0
NEI4 $827
line 1797
;1797:		trap_SendServerCommand( ent-g_entities, "print \"Cheats are not enabled on this server.\n\"");
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
ADDRGP4 $94
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1798
;1798:		return;
ADDRGP4 $826
JUMPV
LABELV $827
line 1800
;1799:	}
;1800:	if ( trap_Argc() != 5 ) {
ADDRLP4 1052
ADDRGP4 trap_Argc
CALLI4
ASGNI4
ADDRLP4 1052
INDIRI4
CNSTI4 5
EQI4 $830
line 1801
;1801:		trap_SendServerCommand( ent-g_entities, "print \"usage: setviewpos x y z yaw\n\"");
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
ADDRGP4 $832
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 1802
;1802:		return;
ADDRGP4 $826
JUMPV
LABELV $830
line 1805
;1803:	}
;1804:
;1805:	VectorClear( angles );
ADDRLP4 1040
CNSTF4 0
ASGNF4
ADDRLP4 1040+4
CNSTF4 0
ASGNF4
ADDRLP4 1040+8
CNSTF4 0
ASGNF4
line 1806
;1806:	for ( i = 0 ; i < 3 ; i++ ) {
ADDRLP4 0
CNSTI4 0
ASGNI4
LABELV $835
line 1807
;1807:		trap_Argv( i + 1, buffer, sizeof( buffer ) );
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ARGI4
ADDRLP4 4
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1808
;1808:		origin[i] = atof( buffer );
ADDRLP4 4
ARGP4
ADDRLP4 1056
ADDRGP4 atof
CALLF4
ASGNF4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 1028
ADDP4
ADDRLP4 1056
INDIRF4
ASGNF4
line 1809
;1809:	}
LABELV $836
line 1806
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 0
INDIRI4
CNSTI4 3
LTI4 $835
line 1811
;1810:
;1811:	trap_Argv( 4, buffer, sizeof( buffer ) );
CNSTI4 4
ARGI4
ADDRLP4 4
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1812
;1812:	angles[YAW] = atof( buffer );
ADDRLP4 4
ARGP4
ADDRLP4 1056
ADDRGP4 atof
CALLF4
ASGNF4
ADDRLP4 1040+4
ADDRLP4 1056
INDIRF4
ASGNF4
line 1814
;1813:
;1814:	TeleportPlayer( ent, origin, angles );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 1028
ARGP4
ADDRLP4 1040
ARGP4
ADDRGP4 TeleportPlayer
CALLV
pop
line 1815
;1815:}
LABELV $826
endproc Cmd_SetViewpos_f 1060 12
proc Cmd_Stats_f 0 0
line 1824
;1816:
;1817:
;1818:
;1819:/*
;1820:=================
;1821:Cmd_Stats_f
;1822:=================
;1823:*/
;1824:static void Cmd_Stats_f( gentity_t *ent ) {
line 1839
;1825:/*
;1826:	int max, n, i;
;1827:
;1828:	max = trap_AAS_PointReachabilityAreaIndex( NULL );
;1829:
;1830:	n = 0;
;1831:	for ( i = 0; i < max; i++ ) {
;1832:		if ( ent->client->areabits[i >> 3] & (1 << (i & 7)) )
;1833:			n++;
;1834:	}
;1835:
;1836:	//trap_SendServerCommand( ent-g_entities, va("print \"visited %d of %d areas\n\"", n, max));
;1837:	trap_SendServerCommand( ent-g_entities, va("print \"%d%% level coverage\n\"", n * 100 / max));
;1838:*/
;1839:}
LABELV $840
endproc Cmd_Stats_f 0 0
export ClientCommand
proc ClientCommand 1124 12
line 1847
;1840:
;1841:
;1842:/*
;1843:=================
;1844:ClientCommand
;1845:=================
;1846:*/
;1847:void ClientCommand( int clientNum ) {
line 1851
;1848:	gentity_t *ent;
;1849:	char	cmd[MAX_TOKEN_CHARS];
;1850:
;1851:	ent = g_entities + clientNum;
ADDRLP4 1024
ADDRFP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1852
;1852:	if ( !ent->client )
ADDRLP4 1024
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $842
line 1853
;1853:		return;
ADDRGP4 $841
JUMPV
LABELV $842
line 1855
;1854:
;1855:	trap_Argv( 0, cmd, sizeof( cmd ) );
CNSTI4 0
ARGI4
ADDRLP4 0
ARGP4
CNSTI4 1024
ARGI4
ADDRGP4 trap_Argv
CALLV
pop
line 1857
;1856:
;1857:	if ( ent->client->pers.connected != CON_CONNECTED ) {
ADDRLP4 1024
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $844
line 1858
;1858:		if ( ent->client->pers.connected == CON_CONNECTING && g_gametype.integer >= GT_TEAM ) {
ADDRLP4 1024
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 1
NEI4 $841
ADDRGP4 g_gametype+12
INDIRI4
CNSTI4 3
LTI4 $841
line 1859
;1859:			if ( Q_stricmp( cmd, "team" ) == 0 && !level.restarted ) {
ADDRLP4 0
ARGP4
ADDRGP4 $851
ARGP4
ADDRLP4 1028
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1028
INDIRI4
CNSTI4 0
NEI4 $841
ADDRGP4 level+72
INDIRI4
CNSTI4 0
NEI4 $841
line 1860
;1860:				Cmd_Team_f( ent ); // early team override
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Team_f
CALLV
pop
line 1861
;1861:			}
line 1862
;1862:		}
line 1863
;1863:		return;	// not fully in game yet
ADDRGP4 $841
JUMPV
LABELV $844
line 1866
;1864:	}
;1865:
;1866:	if (Q_stricmp (cmd, "say") == 0) {
ADDRLP4 0
ARGP4
ADDRGP4 $855
ARGP4
ADDRLP4 1028
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1028
INDIRI4
CNSTI4 0
NEI4 $853
line 1867
;1867:		Cmd_Say_f (ent, SAY_ALL, qfalse);
ADDRLP4 1024
INDIRP4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 0
ARGI4
ADDRGP4 Cmd_Say_f
CALLV
pop
line 1868
;1868:		return;
ADDRGP4 $841
JUMPV
LABELV $853
line 1870
;1869:	}
;1870:	if (Q_stricmp (cmd, "say_team") == 0) {
ADDRLP4 0
ARGP4
ADDRGP4 $858
ARGP4
ADDRLP4 1032
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1032
INDIRI4
CNSTI4 0
NEI4 $856
line 1871
;1871:		Cmd_Say_f (ent, SAY_TEAM, qfalse);
ADDRLP4 1024
INDIRP4
ARGP4
CNSTI4 1
ARGI4
CNSTI4 0
ARGI4
ADDRGP4 Cmd_Say_f
CALLV
pop
line 1872
;1872:		return;
ADDRGP4 $841
JUMPV
LABELV $856
line 1874
;1873:	}
;1874:	if (Q_stricmp (cmd, "tell") == 0) {
ADDRLP4 0
ARGP4
ADDRGP4 $861
ARGP4
ADDRLP4 1036
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1036
INDIRI4
CNSTI4 0
NEI4 $859
line 1875
;1875:		Cmd_Tell_f ( ent );
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Tell_f
CALLV
pop
line 1876
;1876:		return;
ADDRGP4 $841
JUMPV
LABELV $859
line 1908
;1877:	}
;1878:#ifdef MISSIONPACK
;1879:	if (Q_stricmp (cmd, "vsay") == 0) {
;1880:		Cmd_Voice_f (ent, SAY_ALL, qfalse, qfalse);
;1881:		return;
;1882:	}
;1883:	if (Q_stricmp (cmd, "vsay_team") == 0) {
;1884:		Cmd_Voice_f (ent, SAY_TEAM, qfalse, qfalse);
;1885:		return;
;1886:	}
;1887:	if (Q_stricmp (cmd, "vtell") == 0) {
;1888:		Cmd_VoiceTell_f ( ent, qfalse );
;1889:		return;
;1890:	}
;1891:	if (Q_stricmp (cmd, "vosay") == 0) {
;1892:		Cmd_Voice_f (ent, SAY_ALL, qfalse, qtrue);
;1893:		return;
;1894:	}
;1895:	if (Q_stricmp (cmd, "vosay_team") == 0) {
;1896:		Cmd_Voice_f (ent, SAY_TEAM, qfalse, qtrue);
;1897:		return;
;1898:	}
;1899:	if (Q_stricmp (cmd, "votell") == 0) {
;1900:		Cmd_VoiceTell_f ( ent, qtrue );
;1901:		return;
;1902:	}
;1903:	if (Q_stricmp (cmd, "vtaunt") == 0) {
;1904:		Cmd_VoiceTaunt_f ( ent );
;1905:		return;
;1906:	}
;1907:#endif
;1908:	if (Q_stricmp (cmd, "score") == 0) {
ADDRLP4 0
ARGP4
ADDRGP4 $306
ARGP4
ADDRLP4 1040
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1040
INDIRI4
CNSTI4 0
NEI4 $862
line 1909
;1909:		Cmd_Score_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Score_f
CALLV
pop
line 1910
;1910:		return;
ADDRGP4 $841
JUMPV
LABELV $862
line 1914
;1911:	}
;1912:
;1913:	// ignore all other commands when at intermission
;1914:	if (level.intermissiontime) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $864
line 1915
;1915:		Cmd_Say_f (ent, qfalse, qtrue);
ADDRLP4 1024
INDIRP4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 1
ARGI4
ADDRGP4 Cmd_Say_f
CALLV
pop
line 1916
;1916:		return;
ADDRGP4 $841
JUMPV
LABELV $864
line 1919
;1917:	}
;1918:
;1919:	if (Q_stricmp (cmd, "give") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $869
ARGP4
ADDRLP4 1044
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1044
INDIRI4
CNSTI4 0
NEI4 $867
line 1920
;1920:		Cmd_Give_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Give_f
CALLV
pop
ADDRGP4 $868
JUMPV
LABELV $867
line 1921
;1921:	else if (Q_stricmp (cmd, "god") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $872
ARGP4
ADDRLP4 1048
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1048
INDIRI4
CNSTI4 0
NEI4 $870
line 1922
;1922:		Cmd_God_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_God_f
CALLV
pop
ADDRGP4 $871
JUMPV
LABELV $870
line 1923
;1923:	else if (Q_stricmp (cmd, "notarget") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $875
ARGP4
ADDRLP4 1052
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1052
INDIRI4
CNSTI4 0
NEI4 $873
line 1924
;1924:		Cmd_Notarget_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Notarget_f
CALLV
pop
ADDRGP4 $874
JUMPV
LABELV $873
line 1925
;1925:	else if (Q_stricmp (cmd, "noclip") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $878
ARGP4
ADDRLP4 1056
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1056
INDIRI4
CNSTI4 0
NEI4 $876
line 1926
;1926:		Cmd_Noclip_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Noclip_f
CALLV
pop
ADDRGP4 $877
JUMPV
LABELV $876
line 1927
;1927:	else if (Q_stricmp (cmd, "kill") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $881
ARGP4
ADDRLP4 1060
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1060
INDIRI4
CNSTI4 0
NEI4 $879
line 1928
;1928:		Cmd_Kill_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Kill_f
CALLV
pop
ADDRGP4 $880
JUMPV
LABELV $879
line 1929
;1929:	else if (Q_stricmp (cmd, "teamtask") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $230
ARGP4
ADDRLP4 1064
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1064
INDIRI4
CNSTI4 0
NEI4 $882
line 1930
;1930:		Cmd_TeamTask_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_TeamTask_f
CALLV
pop
ADDRGP4 $883
JUMPV
LABELV $882
line 1931
;1931:	else if (Q_stricmp (cmd, "levelshot") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $886
ARGP4
ADDRLP4 1068
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1068
INDIRI4
CNSTI4 0
NEI4 $884
line 1932
;1932:		Cmd_LevelShot_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_LevelShot_f
CALLV
pop
ADDRGP4 $885
JUMPV
LABELV $884
line 1933
;1933:	else if (Q_stricmp (cmd, "follow") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $889
ARGP4
ADDRLP4 1072
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1072
INDIRI4
CNSTI4 0
NEI4 $887
line 1934
;1934:		Cmd_Follow_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Follow_f
CALLV
pop
ADDRGP4 $888
JUMPV
LABELV $887
line 1935
;1935:	else if (Q_stricmp (cmd, "follownext") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $892
ARGP4
ADDRLP4 1076
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1076
INDIRI4
CNSTI4 0
NEI4 $890
line 1936
;1936:		Cmd_FollowCycle_f (ent, 1);
ADDRLP4 1024
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 Cmd_FollowCycle_f
CALLV
pop
ADDRGP4 $891
JUMPV
LABELV $890
line 1937
;1937:	else if (Q_stricmp (cmd, "followprev") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $895
ARGP4
ADDRLP4 1080
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1080
INDIRI4
CNSTI4 0
NEI4 $893
line 1938
;1938:		Cmd_FollowCycle_f (ent, -1);
ADDRLP4 1024
INDIRP4
ARGP4
CNSTI4 -1
ARGI4
ADDRGP4 Cmd_FollowCycle_f
CALLV
pop
ADDRGP4 $894
JUMPV
LABELV $893
line 1939
;1939:	else if (Q_stricmp (cmd, "team") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $851
ARGP4
ADDRLP4 1084
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1084
INDIRI4
CNSTI4 0
NEI4 $896
line 1940
;1940:		Cmd_Team_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Team_f
CALLV
pop
ADDRGP4 $897
JUMPV
LABELV $896
line 1941
;1941:	else if (Q_stricmp (cmd, "where") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $900
ARGP4
ADDRLP4 1088
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1088
INDIRI4
CNSTI4 0
NEI4 $898
line 1942
;1942:		Cmd_Where_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Where_f
CALLV
pop
ADDRGP4 $899
JUMPV
LABELV $898
line 1943
;1943:	else if (Q_stricmp (cmd, "callvote") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $903
ARGP4
ADDRLP4 1092
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1092
INDIRI4
CNSTI4 0
NEI4 $901
line 1944
;1944:		Cmd_CallVote_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_CallVote_f
CALLV
pop
ADDRGP4 $902
JUMPV
LABELV $901
line 1945
;1945:	else if (Q_stricmp (cmd, "vote") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $906
ARGP4
ADDRLP4 1096
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1096
INDIRI4
CNSTI4 0
NEI4 $904
line 1946
;1946:		Cmd_Vote_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Vote_f
CALLV
pop
ADDRGP4 $905
JUMPV
LABELV $904
line 1947
;1947:	else if (Q_stricmp (cmd, "callteamvote") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $909
ARGP4
ADDRLP4 1100
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1100
INDIRI4
CNSTI4 0
NEI4 $907
line 1948
;1948:		Cmd_CallTeamVote_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_CallTeamVote_f
CALLV
pop
ADDRGP4 $908
JUMPV
LABELV $907
line 1949
;1949:	else if (Q_stricmp (cmd, "teamvote") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $912
ARGP4
ADDRLP4 1104
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1104
INDIRI4
CNSTI4 0
NEI4 $910
line 1950
;1950:		Cmd_TeamVote_f (ent);
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_TeamVote_f
CALLV
pop
ADDRGP4 $911
JUMPV
LABELV $910
line 1951
;1951:	else if (Q_stricmp (cmd, "gc") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $915
ARGP4
ADDRLP4 1108
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1108
INDIRI4
CNSTI4 0
NEI4 $913
line 1952
;1952:		Cmd_GameCommand_f( ent );
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_GameCommand_f
CALLV
pop
ADDRGP4 $914
JUMPV
LABELV $913
line 1953
;1953:	else if (Q_stricmp (cmd, "setviewpos") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $918
ARGP4
ADDRLP4 1112
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1112
INDIRI4
CNSTI4 0
NEI4 $916
line 1954
;1954:		Cmd_SetViewpos_f( ent );
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_SetViewpos_f
CALLV
pop
ADDRGP4 $917
JUMPV
LABELV $916
line 1955
;1955:	else if (Q_stricmp (cmd, "stats") == 0)
ADDRLP4 0
ARGP4
ADDRGP4 $921
ARGP4
ADDRLP4 1116
ADDRGP4 Q_stricmp
CALLI4
ASGNI4
ADDRLP4 1116
INDIRI4
CNSTI4 0
NEI4 $919
line 1956
;1956:		Cmd_Stats_f( ent );
ADDRLP4 1024
INDIRP4
ARGP4
ADDRGP4 Cmd_Stats_f
CALLV
pop
ADDRGP4 $920
JUMPV
LABELV $919
line 1958
;1957:	else
;1958:		trap_SendServerCommand( clientNum, va( "print \"unknown cmd %s\n\"", cmd ) );
ADDRGP4 $922
ARGP4
ADDRLP4 0
ARGP4
ADDRLP4 1120
ADDRGP4 va
CALLP4
ASGNP4
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 1120
INDIRP4
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
LABELV $920
LABELV $917
LABELV $914
LABELV $911
LABELV $908
LABELV $905
LABELV $902
LABELV $899
LABELV $897
LABELV $894
LABELV $891
LABELV $888
LABELV $885
LABELV $883
LABELV $880
LABELV $877
LABELV $874
LABELV $871
LABELV $868
line 1959
;1959:}
LABELV $841
endproc ClientCommand 1124 12
import MapInRotation
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
import G_NewString
import G_SpawnEntitiesFromString
import G_SpawnVector
import G_SpawnInt
import G_SpawnFloat
import G_SpawnString
import lastMapRotationTime
import lastCallVoteTime
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
LABELV $922
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 117
byte 1 110
byte 1 107
byte 1 110
byte 1 111
byte 1 119
byte 1 110
byte 1 32
byte 1 99
byte 1 109
byte 1 100
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $921
byte 1 115
byte 1 116
byte 1 97
byte 1 116
byte 1 115
byte 1 0
align 1
LABELV $918
byte 1 115
byte 1 101
byte 1 116
byte 1 118
byte 1 105
byte 1 101
byte 1 119
byte 1 112
byte 1 111
byte 1 115
byte 1 0
align 1
LABELV $915
byte 1 103
byte 1 99
byte 1 0
align 1
LABELV $912
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $909
byte 1 99
byte 1 97
byte 1 108
byte 1 108
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $906
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $903
byte 1 99
byte 1 97
byte 1 108
byte 1 108
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $900
byte 1 119
byte 1 104
byte 1 101
byte 1 114
byte 1 101
byte 1 0
align 1
LABELV $895
byte 1 102
byte 1 111
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 112
byte 1 114
byte 1 101
byte 1 118
byte 1 0
align 1
LABELV $892
byte 1 102
byte 1 111
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 110
byte 1 101
byte 1 120
byte 1 116
byte 1 0
align 1
LABELV $889
byte 1 102
byte 1 111
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 0
align 1
LABELV $886
byte 1 108
byte 1 101
byte 1 118
byte 1 101
byte 1 108
byte 1 115
byte 1 104
byte 1 111
byte 1 116
byte 1 0
align 1
LABELV $881
byte 1 107
byte 1 105
byte 1 108
byte 1 108
byte 1 0
align 1
LABELV $878
byte 1 110
byte 1 111
byte 1 99
byte 1 108
byte 1 105
byte 1 112
byte 1 0
align 1
LABELV $875
byte 1 110
byte 1 111
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 0
align 1
LABELV $872
byte 1 103
byte 1 111
byte 1 100
byte 1 0
align 1
LABELV $869
byte 1 103
byte 1 105
byte 1 118
byte 1 101
byte 1 0
align 1
LABELV $861
byte 1 116
byte 1 101
byte 1 108
byte 1 108
byte 1 0
align 1
LABELV $858
byte 1 115
byte 1 97
byte 1 121
byte 1 95
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 0
align 1
LABELV $855
byte 1 115
byte 1 97
byte 1 121
byte 1 0
align 1
LABELV $851
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 0
align 1
LABELV $832
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 117
byte 1 115
byte 1 97
byte 1 103
byte 1 101
byte 1 58
byte 1 32
byte 1 115
byte 1 101
byte 1 116
byte 1 118
byte 1 105
byte 1 101
byte 1 119
byte 1 112
byte 1 111
byte 1 115
byte 1 32
byte 1 120
byte 1 32
byte 1 121
byte 1 32
byte 1 122
byte 1 32
byte 1 121
byte 1 97
byte 1 119
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $817
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
byte 1 99
byte 1 97
byte 1 115
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $814
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
byte 1 97
byte 1 108
byte 1 114
byte 1 101
byte 1 97
byte 1 100
byte 1 121
byte 1 32
byte 1 99
byte 1 97
byte 1 115
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $811
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 78
byte 1 111
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 105
byte 1 110
byte 1 32
byte 1 112
byte 1 114
byte 1 111
byte 1 103
byte 1 114
byte 1 101
byte 1 115
byte 1 115
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $787
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
byte 1 99
byte 1 97
byte 1 108
byte 1 108
byte 1 101
byte 1 100
byte 1 32
byte 1 97
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $777
byte 1 37
byte 1 115
byte 1 32
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $774
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
byte 1 99
byte 1 111
byte 1 109
byte 1 109
byte 1 97
byte 1 110
byte 1 100
byte 1 115
byte 1 32
byte 1 97
byte 1 114
byte 1 101
byte 1 58
byte 1 32
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 32
byte 1 60
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 62
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $773
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
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 97
byte 1 32
byte 1 118
byte 1 97
byte 1 108
byte 1 105
byte 1 100
byte 1 32
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 32
byte 1 111
byte 1 110
byte 1 32
byte 1 121
byte 1 111
byte 1 117
byte 1 114
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $738
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 101
byte 1 114
byte 1 0
align 1
LABELV $735
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 73
byte 1 110
byte 1 118
byte 1 97
byte 1 108
byte 1 105
byte 1 100
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 115
byte 1 116
byte 1 114
byte 1 105
byte 1 110
byte 1 103
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $716
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 89
byte 1 111
byte 1 117
byte 1 32
byte 1 104
byte 1 97
byte 1 118
byte 1 101
byte 1 32
byte 1 99
byte 1 97
byte 1 108
byte 1 108
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 109
byte 1 97
byte 1 120
byte 1 105
byte 1 109
byte 1 117
byte 1 109
byte 1 32
byte 1 110
byte 1 117
byte 1 109
byte 1 98
byte 1 101
byte 1 114
byte 1 32
byte 1 111
byte 1 102
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 115
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $713
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 65
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 97
byte 1 108
byte 1 114
byte 1 101
byte 1 97
byte 1 100
byte 1 121
byte 1 32
byte 1 105
byte 1 110
byte 1 32
byte 1 112
byte 1 114
byte 1 111
byte 1 103
byte 1 114
byte 1 101
byte 1 115
byte 1 115
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $668
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
byte 1 99
byte 1 97
byte 1 115
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $667
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 78
byte 1 111
byte 1 116
byte 1 32
byte 1 97
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 97
byte 1 115
byte 1 32
byte 1 115
byte 1 112
byte 1 101
byte 1 99
byte 1 116
byte 1 97
byte 1 116
byte 1 111
byte 1 114
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $664
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
byte 1 97
byte 1 108
byte 1 114
byte 1 101
byte 1 97
byte 1 100
byte 1 121
byte 1 32
byte 1 99
byte 1 97
byte 1 115
byte 1 116
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $661
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 78
byte 1 111
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 105
byte 1 110
byte 1 32
byte 1 112
byte 1 114
byte 1 111
byte 1 103
byte 1 114
byte 1 101
byte 1 115
byte 1 115
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $652
byte 1 37
byte 1 105
byte 1 0
align 1
LABELV $642
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
byte 1 99
byte 1 97
byte 1 108
byte 1 108
byte 1 101
byte 1 100
byte 1 32
byte 1 97
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 40
byte 1 37
byte 1 115
byte 1 41
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $640
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $635
byte 1 59
byte 1 0
align 1
LABELV $619
byte 1 32
byte 1 0
align 1
LABELV $612
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 78
byte 1 111
byte 1 116
byte 1 32
byte 1 97
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 99
byte 1 97
byte 1 108
byte 1 108
byte 1 32
byte 1 97
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 97
byte 1 115
byte 1 32
byte 1 115
byte 1 112
byte 1 101
byte 1 99
byte 1 116
byte 1 97
byte 1 116
byte 1 111
byte 1 114
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $609
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 89
byte 1 111
byte 1 117
byte 1 32
byte 1 104
byte 1 97
byte 1 118
byte 1 101
byte 1 32
byte 1 99
byte 1 97
byte 1 108
byte 1 108
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 109
byte 1 97
byte 1 120
byte 1 105
byte 1 109
byte 1 117
byte 1 109
byte 1 32
byte 1 110
byte 1 117
byte 1 109
byte 1 98
byte 1 101
byte 1 114
byte 1 32
byte 1 111
byte 1 102
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 115
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $606
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 80
byte 1 114
byte 1 101
byte 1 118
byte 1 105
byte 1 111
byte 1 117
byte 1 115
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 99
byte 1 111
byte 1 109
byte 1 109
byte 1 97
byte 1 110
byte 1 100
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 119
byte 1 97
byte 1 105
byte 1 116
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 101
byte 1 120
byte 1 101
byte 1 99
byte 1 117
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 94
byte 1 49
byte 1 46
byte 1 94
byte 1 55
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $600
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 65
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 97
byte 1 108
byte 1 114
byte 1 101
byte 1 97
byte 1 100
byte 1 121
byte 1 32
byte 1 105
byte 1 110
byte 1 32
byte 1 112
byte 1 114
byte 1 111
byte 1 103
byte 1 114
byte 1 101
byte 1 115
byte 1 115
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $596
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
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 97
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 101
byte 1 100
byte 1 32
byte 1 104
byte 1 101
byte 1 114
byte 1 101
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $592
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 89
byte 1 111
byte 1 117
byte 1 32
byte 1 109
byte 1 117
byte 1 115
byte 1 116
byte 1 32
byte 1 119
byte 1 97
byte 1 105
byte 1 116
byte 1 32
byte 1 53
byte 1 32
byte 1 115
byte 1 101
byte 1 99
byte 1 111
byte 1 110
byte 1 100
byte 1 115
byte 1 32
byte 1 97
byte 1 102
byte 1 116
byte 1 101
byte 1 114
byte 1 32
byte 1 106
byte 1 111
byte 1 105
byte 1 110
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 98
byte 1 101
byte 1 102
byte 1 111
byte 1 114
byte 1 101
byte 1 32
byte 1 99
byte 1 97
byte 1 108
byte 1 108
byte 1 105
byte 1 110
byte 1 103
byte 1 32
byte 1 97
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $585
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 94
byte 1 51
byte 1 77
byte 1 97
byte 1 112
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
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $579
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
byte 1 0
align 1
LABELV $578
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 73
byte 1 110
byte 1 118
byte 1 97
byte 1 108
byte 1 105
byte 1 100
byte 1 32
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
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $573
byte 1 99
byte 1 116
byte 1 102
byte 1 0
align 1
LABELV $570
byte 1 116
byte 1 100
byte 1 109
byte 1 0
align 1
LABELV $567
byte 1 100
byte 1 117
byte 1 101
byte 1 108
byte 1 0
align 1
LABELV $564
byte 1 102
byte 1 102
byte 1 97
byte 1 0
align 1
LABELV $559
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 73
byte 1 110
byte 1 118
byte 1 97
byte 1 108
byte 1 105
byte 1 100
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 99
byte 1 111
byte 1 109
byte 1 109
byte 1 97
byte 1 110
byte 1 100
byte 1 46
byte 1 10
byte 1 86
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 99
byte 1 111
byte 1 109
byte 1 109
byte 1 97
byte 1 110
byte 1 100
byte 1 115
byte 1 32
byte 1 97
byte 1 114
byte 1 101
byte 1 58
byte 1 32
byte 1 10
byte 1 32
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
byte 1 60
byte 1 110
byte 1 124
byte 1 102
byte 1 102
byte 1 97
byte 1 124
byte 1 100
byte 1 117
byte 1 101
byte 1 108
byte 1 124
byte 1 116
byte 1 100
byte 1 109
byte 1 124
byte 1 99
byte 1 116
byte 1 102
byte 1 62
byte 1 10
byte 1 32
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
byte 1 44
byte 1 32
byte 1 109
byte 1 97
byte 1 112
byte 1 32
byte 1 60
byte 1 109
byte 1 97
byte 1 112
byte 1 110
byte 1 97
byte 1 109
byte 1 101
byte 1 62
byte 1 44
byte 1 32
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 101
byte 1 32
byte 1 91
byte 1 114
byte 1 111
byte 1 117
byte 1 110
byte 1 100
byte 1 93
byte 1 44
byte 1 32
byte 1 110
byte 1 101
byte 1 120
byte 1 116
byte 1 109
byte 1 97
byte 1 112
byte 1 10
byte 1 32
byte 1 107
byte 1 105
byte 1 99
byte 1 107
byte 1 32
byte 1 60
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 62
byte 1 44
byte 1 32
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 107
byte 1 105
byte 1 99
byte 1 107
byte 1 32
byte 1 60
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 110
byte 1 117
byte 1 109
byte 1 62
byte 1 10
byte 1 32
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
byte 1 32
byte 1 60
byte 1 48
byte 1 124
byte 1 49
byte 1 62
byte 1 44
byte 1 32
byte 1 103
byte 1 95
byte 1 119
byte 1 97
byte 1 114
byte 1 109
byte 1 117
byte 1 112
byte 1 32
byte 1 60
byte 1 45
byte 1 49
byte 1 124
byte 1 48
byte 1 124
byte 1 115
byte 1 101
byte 1 99
byte 1 111
byte 1 110
byte 1 100
byte 1 115
byte 1 62
byte 1 10
byte 1 32
byte 1 116
byte 1 105
byte 1 109
byte 1 101
byte 1 108
byte 1 105
byte 1 109
byte 1 105
byte 1 116
byte 1 32
byte 1 60
byte 1 116
byte 1 105
byte 1 109
byte 1 101
byte 1 62
byte 1 44
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
byte 1 32
byte 1 60
byte 1 102
byte 1 114
byte 1 97
byte 1 103
byte 1 115
byte 1 62
byte 1 44
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
byte 1 32
byte 1 60
byte 1 99
byte 1 97
byte 1 112
byte 1 116
byte 1 117
byte 1 114
byte 1 101
byte 1 115
byte 1 62
byte 1 10
byte 1 32
byte 1 115
byte 1 104
byte 1 117
byte 1 102
byte 1 102
byte 1 108
byte 1 101
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $543
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 73
byte 1 110
byte 1 118
byte 1 97
byte 1 108
byte 1 105
byte 1 100
byte 1 32
byte 1 118
byte 1 111
byte 1 116
byte 1 101
byte 1 32
byte 1 99
byte 1 111
byte 1 109
byte 1 109
byte 1 97
byte 1 110
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $537
byte 1 115
byte 1 104
byte 1 117
byte 1 102
byte 1 102
byte 1 108
byte 1 101
byte 1 0
align 1
LABELV $536
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
LABELV $535
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
LABELV $534
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
LABELV $533
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
LABELV $532
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
LABELV $531
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
LABELV $530
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 107
byte 1 105
byte 1 99
byte 1 107
byte 1 0
align 1
LABELV $529
byte 1 107
byte 1 105
byte 1 99
byte 1 107
byte 1 0
align 1
LABELV $528
byte 1 110
byte 1 101
byte 1 120
byte 1 116
byte 1 109
byte 1 97
byte 1 112
byte 1 0
align 1
LABELV $527
byte 1 114
byte 1 111
byte 1 116
byte 1 97
byte 1 116
byte 1 101
byte 1 0
align 1
LABELV $526
byte 1 109
byte 1 97
byte 1 112
byte 1 0
align 1
LABELV $525
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
LABELV $524
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $517
byte 1 114
byte 1 101
byte 1 112
byte 1 111
byte 1 114
byte 1 116
byte 1 0
align 1
LABELV $516
byte 1 115
byte 1 101
byte 1 97
byte 1 114
byte 1 99
byte 1 104
byte 1 32
byte 1 97
byte 1 110
byte 1 100
byte 1 32
byte 1 100
byte 1 101
byte 1 115
byte 1 116
byte 1 114
byte 1 111
byte 1 121
byte 1 0
align 1
LABELV $515
byte 1 103
byte 1 117
byte 1 97
byte 1 114
byte 1 100
byte 1 32
byte 1 108
byte 1 111
byte 1 99
byte 1 97
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 0
align 1
LABELV $514
byte 1 99
byte 1 111
byte 1 118
byte 1 101
byte 1 114
byte 1 32
byte 1 109
byte 1 101
byte 1 0
align 1
LABELV $513
byte 1 99
byte 1 111
byte 1 109
byte 1 101
byte 1 32
byte 1 104
byte 1 101
byte 1 114
byte 1 101
byte 1 0
align 1
LABELV $512
byte 1 104
byte 1 111
byte 1 108
byte 1 100
byte 1 32
byte 1 116
byte 1 104
byte 1 105
byte 1 115
byte 1 32
byte 1 112
byte 1 111
byte 1 115
byte 1 105
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 0
align 1
LABELV $511
byte 1 104
byte 1 111
byte 1 108
byte 1 100
byte 1 32
byte 1 121
byte 1 111
byte 1 117
byte 1 114
byte 1 32
byte 1 112
byte 1 111
byte 1 115
byte 1 105
byte 1 116
byte 1 105
byte 1 111
byte 1 110
byte 1 0
align 1
LABELV $508
byte 1 116
byte 1 101
byte 1 108
byte 1 108
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 37
byte 1 115
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $488
byte 1 37
byte 1 115
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $482
byte 1 25
byte 1 91
byte 1 37
byte 1 115
byte 1 37
byte 1 99
byte 1 37
byte 1 99
byte 1 25
byte 1 93
byte 1 25
byte 1 58
byte 1 32
byte 1 0
align 1
LABELV $481
byte 1 25
byte 1 91
byte 1 37
byte 1 115
byte 1 37
byte 1 99
byte 1 37
byte 1 99
byte 1 25
byte 1 93
byte 1 32
byte 1 40
byte 1 37
byte 1 115
byte 1 41
byte 1 25
byte 1 58
byte 1 32
byte 1 0
align 1
LABELV $476
byte 1 25
byte 1 40
byte 1 37
byte 1 115
byte 1 37
byte 1 99
byte 1 37
byte 1 99
byte 1 25
byte 1 41
byte 1 25
byte 1 58
byte 1 32
byte 1 0
align 1
LABELV $475
byte 1 25
byte 1 40
byte 1 37
byte 1 115
byte 1 37
byte 1 99
byte 1 37
byte 1 99
byte 1 25
byte 1 41
byte 1 32
byte 1 40
byte 1 37
byte 1 115
byte 1 41
byte 1 25
byte 1 58
byte 1 32
byte 1 0
align 1
LABELV $472
byte 1 115
byte 1 97
byte 1 121
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $470
byte 1 37
byte 1 115
byte 1 37
byte 1 99
byte 1 37
byte 1 99
byte 1 25
byte 1 58
byte 1 32
byte 1 0
align 1
LABELV $469
byte 1 115
byte 1 97
byte 1 121
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 58
byte 1 32
byte 1 37
byte 1 115
byte 1 10
byte 1 0
align 1
LABELV $458
byte 1 99
byte 1 104
byte 1 97
byte 1 116
byte 1 0
align 1
LABELV $457
byte 1 116
byte 1 99
byte 1 104
byte 1 97
byte 1 116
byte 1 0
align 1
LABELV $456
byte 1 37
byte 1 115
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 37
byte 1 99
byte 1 37
byte 1 99
byte 1 37
byte 1 115
byte 1 34
byte 1 32
byte 1 37
byte 1 105
byte 1 0
align 1
LABELV $428
byte 1 67
byte 1 109
byte 1 100
byte 1 95
byte 1 70
byte 1 111
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 67
byte 1 121
byte 1 99
byte 1 108
byte 1 101
byte 1 95
byte 1 102
byte 1 58
byte 1 32
byte 1 98
byte 1 97
byte 1 100
byte 1 32
byte 1 100
byte 1 105
byte 1 114
byte 1 32
byte 1 37
byte 1 105
byte 1 0
align 1
LABELV $397
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 77
byte 1 97
byte 1 121
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 115
byte 1 119
byte 1 105
byte 1 116
byte 1 99
byte 1 104
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 115
byte 1 32
byte 1 109
byte 1 111
byte 1 114
byte 1 101
byte 1 32
byte 1 116
byte 1 104
byte 1 97
byte 1 110
byte 1 32
byte 1 111
byte 1 110
byte 1 99
byte 1 101
byte 1 32
byte 1 112
byte 1 101
byte 1 114
byte 1 32
byte 1 53
byte 1 32
byte 1 115
byte 1 101
byte 1 99
byte 1 111
byte 1 110
byte 1 100
byte 1 115
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $392
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 83
byte 1 112
byte 1 101
byte 1 99
byte 1 116
byte 1 97
byte 1 116
byte 1 111
byte 1 114
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $390
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 70
byte 1 114
byte 1 101
byte 1 101
byte 1 32
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $388
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
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $386
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
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $317
byte 1 115
byte 1 0
align 1
LABELV $316
byte 1 115
byte 1 112
byte 1 101
byte 1 99
byte 1 116
byte 1 97
byte 1 116
byte 1 111
byte 1 114
byte 1 0
align 1
LABELV $313
byte 1 102
byte 1 111
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 50
byte 1 0
align 1
LABELV $310
byte 1 102
byte 1 111
byte 1 108
byte 1 108
byte 1 111
byte 1 119
byte 1 49
byte 1 0
align 1
LABELV $306
byte 1 115
byte 1 99
byte 1 111
byte 1 114
byte 1 101
byte 1 0
align 1
LABELV $305
byte 1 115
byte 1 99
byte 1 111
byte 1 114
byte 1 101
byte 1 98
byte 1 111
byte 1 97
byte 1 114
byte 1 100
byte 1 0
align 1
LABELV $299
byte 1 98
byte 1 0
align 1
LABELV $298
byte 1 98
byte 1 108
byte 1 117
byte 1 101
byte 1 0
align 1
LABELV $294
byte 1 114
byte 1 0
align 1
LABELV $293
byte 1 114
byte 1 101
byte 1 100
byte 1 0
align 1
LABELV $286
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 94
byte 1 52
byte 1 66
byte 1 76
byte 1 85
byte 1 69
byte 1 32
byte 1 94
byte 1 55
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 104
byte 1 97
byte 1 115
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $283
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 94
byte 1 49
byte 1 82
byte 1 69
byte 1 68
byte 1 32
byte 1 94
byte 1 55
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 104
byte 1 97
byte 1 115
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 108
byte 1 101
byte 1 97
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $276
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 94
byte 1 52
byte 1 66
byte 1 76
byte 1 85
byte 1 69
byte 1 32
byte 1 94
byte 1 55
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 104
byte 1 97
byte 1 115
byte 1 32
byte 1 116
byte 1 111
byte 1 111
byte 1 32
byte 1 109
byte 1 97
byte 1 110
byte 1 121
byte 1 32
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 115
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $271
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 94
byte 1 49
byte 1 82
byte 1 69
byte 1 68
byte 1 32
byte 1 94
byte 1 55
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 32
byte 1 104
byte 1 97
byte 1 115
byte 1 32
byte 1 116
byte 1 111
byte 1 111
byte 1 32
byte 1 109
byte 1 97
byte 1 110
byte 1 121
byte 1 32
byte 1 112
byte 1 108
byte 1 97
byte 1 121
byte 1 101
byte 1 114
byte 1 115
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $249
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 106
byte 1 111
byte 1 105
byte 1 110
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 98
byte 1 97
byte 1 116
byte 1 116
byte 1 108
byte 1 101
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $246
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 106
byte 1 111
byte 1 105
byte 1 110
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 94
byte 1 51
byte 1 83
byte 1 80
byte 1 69
byte 1 67
byte 1 84
byte 1 65
byte 1 84
byte 1 79
byte 1 82
byte 1 83
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $243
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 106
byte 1 111
byte 1 105
byte 1 110
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 94
byte 1 52
byte 1 94
byte 1 52
byte 1 66
byte 1 76
byte 1 85
byte 1 69
byte 1 94
byte 1 55
byte 1 32
byte 1 94
byte 1 55
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $240
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 37
byte 1 115
byte 1 94
byte 1 55
byte 1 32
byte 1 106
byte 1 111
byte 1 105
byte 1 110
byte 1 101
byte 1 100
byte 1 32
byte 1 116
byte 1 104
byte 1 101
byte 1 32
byte 1 94
byte 1 49
byte 1 94
byte 1 49
byte 1 82
byte 1 69
byte 1 68
byte 1 94
byte 1 55
byte 1 32
byte 1 94
byte 1 55
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $231
byte 1 37
byte 1 100
byte 1 0
align 1
LABELV $230
byte 1 116
byte 1 101
byte 1 97
byte 1 109
byte 1 116
byte 1 97
byte 1 115
byte 1 107
byte 1 0
align 1
LABELV $226
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 76
byte 1 101
byte 1 118
byte 1 101
byte 1 108
byte 1 83
byte 1 104
byte 1 111
byte 1 116
byte 1 0
align 1
LABELV $225
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 84
byte 1 104
byte 1 101
byte 1 32
byte 1 108
byte 1 101
byte 1 118
byte 1 101
byte 1 108
byte 1 115
byte 1 104
byte 1 111
byte 1 116
byte 1 32
byte 1 99
byte 1 111
byte 1 109
byte 1 109
byte 1 97
byte 1 110
byte 1 100
byte 1 32
byte 1 109
byte 1 117
byte 1 115
byte 1 116
byte 1 32
byte 1 98
byte 1 101
byte 1 32
byte 1 101
byte 1 120
byte 1 101
byte 1 99
byte 1 117
byte 1 116
byte 1 101
byte 1 100
byte 1 32
byte 1 98
byte 1 121
byte 1 32
byte 1 97
byte 1 32
byte 1 108
byte 1 111
byte 1 99
byte 1 97
byte 1 108
byte 1 32
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $222
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 77
byte 1 117
byte 1 115
byte 1 116
byte 1 32
byte 1 98
byte 1 101
byte 1 32
byte 1 105
byte 1 110
byte 1 32
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
byte 1 48
byte 1 32
byte 1 102
byte 1 111
byte 1 114
byte 1 32
byte 1 108
byte 1 101
byte 1 118
byte 1 101
byte 1 108
byte 1 115
byte 1 104
byte 1 111
byte 1 116
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $212
byte 1 110
byte 1 111
byte 1 99
byte 1 108
byte 1 105
byte 1 112
byte 1 32
byte 1 79
byte 1 78
byte 1 10
byte 1 0
align 1
LABELV $211
byte 1 110
byte 1 111
byte 1 99
byte 1 108
byte 1 105
byte 1 112
byte 1 32
byte 1 79
byte 1 70
byte 1 70
byte 1 10
byte 1 0
align 1
LABELV $205
byte 1 110
byte 1 111
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 32
byte 1 79
byte 1 78
byte 1 10
byte 1 0
align 1
LABELV $204
byte 1 110
byte 1 111
byte 1 116
byte 1 97
byte 1 114
byte 1 103
byte 1 101
byte 1 116
byte 1 32
byte 1 79
byte 1 70
byte 1 70
byte 1 10
byte 1 0
align 1
LABELV $198
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
LABELV $197
byte 1 103
byte 1 111
byte 1 100
byte 1 109
byte 1 111
byte 1 100
byte 1 101
byte 1 32
byte 1 79
byte 1 78
byte 1 10
byte 1 0
align 1
LABELV $196
byte 1 103
byte 1 111
byte 1 100
byte 1 109
byte 1 111
byte 1 100
byte 1 101
byte 1 32
byte 1 79
byte 1 70
byte 1 70
byte 1 10
byte 1 0
align 1
LABELV $184
byte 1 97
byte 1 115
byte 1 115
byte 1 105
byte 1 115
byte 1 116
byte 1 0
align 1
LABELV $181
byte 1 100
byte 1 101
byte 1 102
byte 1 101
byte 1 110
byte 1 100
byte 1 0
align 1
LABELV $178
byte 1 103
byte 1 97
byte 1 117
byte 1 110
byte 1 116
byte 1 108
byte 1 101
byte 1 116
byte 1 97
byte 1 119
byte 1 97
byte 1 114
byte 1 100
byte 1 0
align 1
LABELV $175
byte 1 105
byte 1 109
byte 1 112
byte 1 114
byte 1 101
byte 1 115
byte 1 115
byte 1 105
byte 1 118
byte 1 101
byte 1 0
align 1
LABELV $172
byte 1 101
byte 1 120
byte 1 99
byte 1 101
byte 1 108
byte 1 108
byte 1 101
byte 1 110
byte 1 116
byte 1 0
align 1
LABELV $166
byte 1 97
byte 1 114
byte 1 109
byte 1 111
byte 1 114
byte 1 0
align 1
LABELV $156
byte 1 97
byte 1 109
byte 1 109
byte 1 111
byte 1 0
align 1
LABELV $150
byte 1 119
byte 1 101
byte 1 97
byte 1 112
byte 1 111
byte 1 110
byte 1 115
byte 1 0
align 1
LABELV $144
byte 1 104
byte 1 101
byte 1 97
byte 1 108
byte 1 116
byte 1 104
byte 1 0
align 1
LABELV $141
byte 1 97
byte 1 108
byte 1 108
byte 1 0
align 1
LABELV $135
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 85
byte 1 115
byte 1 101
byte 1 114
byte 1 32
byte 1 37
byte 1 115
byte 1 32
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
byte 1 115
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $125
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 67
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 105
byte 1 115
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 97
byte 1 99
byte 1 116
byte 1 105
byte 1 118
byte 1 101
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $122
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 66
byte 1 97
byte 1 100
byte 1 32
byte 1 99
byte 1 108
byte 1 105
byte 1 101
byte 1 110
byte 1 116
byte 1 32
byte 1 115
byte 1 108
byte 1 111
byte 1 116
byte 1 58
byte 1 32
byte 1 37
byte 1 105
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $97
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 89
byte 1 111
byte 1 117
byte 1 32
byte 1 109
byte 1 117
byte 1 115
byte 1 116
byte 1 32
byte 1 98
byte 1 101
byte 1 32
byte 1 97
byte 1 108
byte 1 105
byte 1 118
byte 1 101
byte 1 32
byte 1 116
byte 1 111
byte 1 32
byte 1 117
byte 1 115
byte 1 101
byte 1 32
byte 1 116
byte 1 104
byte 1 105
byte 1 115
byte 1 32
byte 1 99
byte 1 111
byte 1 109
byte 1 109
byte 1 97
byte 1 110
byte 1 100
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $94
byte 1 112
byte 1 114
byte 1 105
byte 1 110
byte 1 116
byte 1 32
byte 1 34
byte 1 67
byte 1 104
byte 1 101
byte 1 97
byte 1 116
byte 1 115
byte 1 32
byte 1 97
byte 1 114
byte 1 101
byte 1 32
byte 1 110
byte 1 111
byte 1 116
byte 1 32
byte 1 101
byte 1 110
byte 1 97
byte 1 98
byte 1 108
byte 1 101
byte 1 100
byte 1 32
byte 1 111
byte 1 110
byte 1 32
byte 1 116
byte 1 104
byte 1 105
byte 1 115
byte 1 32
byte 1 115
byte 1 101
byte 1 114
byte 1 118
byte 1 101
byte 1 114
byte 1 46
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $84
byte 1 115
byte 1 99
byte 1 111
byte 1 114
byte 1 101
byte 1 115
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 37
byte 1 115
byte 1 0
align 1
LABELV $77
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
byte 1 32
byte 1 37
byte 1 105
byte 1 32
byte 1 37
byte 1 105
byte 1 0
align 1
LABELV $57
byte 1 115
byte 1 99
byte 1 111
byte 1 114
byte 1 101
byte 1 115
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

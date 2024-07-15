export P_DamageFeedback
code
proc P_DamageFeedback 36 12
file "..\..\..\..\code\game\g_active.c"
line 17
;1:// Copyright (C) 1999-2000 Id Software, Inc.
;2://
;3:
;4:#include "g_local.h"
;5:
;6:
;7:/*
;8:===============
;9:G_DamageFeedback
;10:
;11:Called just before a snapshot is sent to the given player.
;12:Totals up all damage and generates both the player_state_t
;13:damage values to that client for pain blends and kicks, and
;14:global pain sound events for all clients.
;15:===============
;16:*/
;17:void P_DamageFeedback( gentity_t *player ) {
line 22
;18:	gclient_t	*client;
;19:	float	count;
;20:	vec3_t	angles;
;21:
;22:	client = player->client;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 23
;23:	if ( client->ps.pm_type == PM_DEAD ) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 3
NEI4 $56
line 24
;24:		return;
ADDRGP4 $55
JUMPV
LABELV $56
line 28
;25:	}
;26:
;27:	// total points of damage shot at the player this frame
;28:	count = client->damage_blood + client->damage_armor;
ADDRLP4 4
ADDRLP4 0
INDIRP4
CNSTI4 704
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 700
ADDP4
INDIRI4
ADDI4
CVIF4 4
ASGNF4
line 29
;29:	if ( count == 0 ) {
ADDRLP4 4
INDIRF4
CNSTF4 0
NEF4 $58
line 30
;30:		return;		// didn't take any damage
ADDRGP4 $55
JUMPV
LABELV $58
line 33
;31:	}
;32:
;33:	if ( count > 255 ) {
ADDRLP4 4
INDIRF4
CNSTF4 1132396544
LEF4 $60
line 34
;34:		count = 255;
ADDRLP4 4
CNSTF4 1132396544
ASGNF4
line 35
;35:	}
LABELV $60
line 41
;36:
;37:	// send the information to the client
;38:
;39:	// world damage (falling, slime, etc) uses a special code
;40:	// to make the blend blob centered instead of positional
;41:	if ( client->damage_fromWorld ) {
ADDRLP4 0
INDIRP4
CNSTI4 724
ADDP4
INDIRI4
CNSTI4 0
EQI4 $62
line 42
;42:		client->ps.damagePitch = 255;
ADDRLP4 0
INDIRP4
CNSTI4 176
ADDP4
CNSTI4 255
ASGNI4
line 43
;43:		client->ps.damageYaw = 255;
ADDRLP4 0
INDIRP4
CNSTI4 172
ADDP4
CNSTI4 255
ASGNI4
line 45
;44:
;45:		client->damage_fromWorld = qfalse;
ADDRLP4 0
INDIRP4
CNSTI4 724
ADDP4
CNSTI4 0
ASGNI4
line 46
;46:	} else {
ADDRGP4 $63
JUMPV
LABELV $62
line 47
;47:		vectoangles( client->damage_from, angles );
ADDRLP4 0
INDIRP4
CNSTI4 712
ADDP4
ARGP4
ADDRLP4 8
ARGP4
ADDRGP4 vectoangles
CALLV
pop
line 48
;48:		client->ps.damagePitch = angles[PITCH]/360.0 * 256;
ADDRLP4 0
INDIRP4
CNSTI4 176
ADDP4
ADDRLP4 8
INDIRF4
CNSTF4 1060506465
MULF4
CVFI4 4
ASGNI4
line 49
;49:		client->ps.damageYaw = angles[YAW]/360.0 * 256;
ADDRLP4 0
INDIRP4
CNSTI4 172
ADDP4
ADDRLP4 8+4
INDIRF4
CNSTF4 1060506465
MULF4
CVFI4 4
ASGNI4
line 50
;50:	}
LABELV $63
line 53
;51:
;52:	// play an apropriate pain sound
;53:	if ( (level.time > player->pain_debounce_time) && !(player->flags & FL_GODMODE) ) {
ADDRLP4 24
ADDRFP4 0
INDIRP4
ASGNP4
ADDRGP4 level+32
INDIRI4
ADDRLP4 24
INDIRP4
CNSTI4 720
ADDP4
INDIRI4
LEI4 $65
ADDRLP4 24
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 16
BANDI4
CNSTI4 0
NEI4 $65
line 54
;54:		player->pain_debounce_time = level.time + 700;
ADDRFP4 0
INDIRP4
CNSTI4 720
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 700
ADDI4
ASGNI4
line 55
;55:		G_AddEvent( player, EV_PAIN, player->health );
ADDRLP4 28
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 28
INDIRP4
ARGP4
CNSTI4 56
ARGI4
ADDRLP4 28
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
ARGI4
ADDRGP4 G_AddEvent
CALLV
pop
line 56
;56:		client->ps.damageEvent++;
ADDRLP4 32
ADDRLP4 0
INDIRP4
CNSTI4 168
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
line 57
;57:	}
LABELV $65
line 60
;58:
;59:
;60:	client->ps.damageCount = count;
ADDRLP4 0
INDIRP4
CNSTI4 180
ADDP4
ADDRLP4 4
INDIRF4
CVFI4 4
ASGNI4
line 65
;61:
;62:	//
;63:	// clear totals
;64:	//
;65:	client->damage_blood = 0;
ADDRLP4 0
INDIRP4
CNSTI4 704
ADDP4
CNSTI4 0
ASGNI4
line 66
;66:	client->damage_armor = 0;
ADDRLP4 0
INDIRP4
CNSTI4 700
ADDP4
CNSTI4 0
ASGNI4
line 67
;67:	client->damage_knockback = 0;
ADDRLP4 0
INDIRP4
CNSTI4 708
ADDP4
CNSTI4 0
ASGNI4
line 68
;68:}
LABELV $55
endproc P_DamageFeedback 36 12
export P_WorldEffects
proc P_WorldEffects 24 32
line 79
;69:
;70:
;71:
;72:/*
;73:=============
;74:P_WorldEffects
;75:
;76:Check for lava / slime contents and drowning
;77:=============
;78:*/
;79:void P_WorldEffects( gentity_t *ent ) {
line 83
;80:	qboolean	envirosuit;
;81:	int			waterlevel;
;82:
;83:	if ( ent->client->noclip ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 668
ADDP4
INDIRI4
CNSTI4 0
EQI4 $70
line 84
;84:		ent->client->airOutTime = level.time + 12000;	// don't need air
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 768
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 12000
ADDI4
ASGNI4
line 85
;85:		return;
ADDRGP4 $69
JUMPV
LABELV $70
line 88
;86:	}
;87:
;88:	waterlevel = ent->waterlevel;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 788
ADDP4
INDIRI4
ASGNI4
line 90
;89:
;90:	envirosuit = ent->client->ps.powerups[PW_BATTLESUIT] > level.time;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 320
ADDP4
INDIRI4
ADDRGP4 level+32
INDIRI4
LEI4 $75
ADDRLP4 8
CNSTI4 1
ASGNI4
ADDRGP4 $76
JUMPV
LABELV $75
ADDRLP4 8
CNSTI4 0
ASGNI4
LABELV $76
ADDRLP4 4
ADDRLP4 8
INDIRI4
ASGNI4
line 95
;91:
;92:	//
;93:	// check for drowning
;94:	//
;95:	if ( waterlevel == 3 ) {
ADDRLP4 0
INDIRI4
CNSTI4 3
NEI4 $77
line 97
;96:		// envirosuit give air
;97:		if ( envirosuit ) {
ADDRLP4 4
INDIRI4
CNSTI4 0
EQI4 $79
line 98
;98:			ent->client->airOutTime = level.time + 10000;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 768
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 10000
ADDI4
ASGNI4
line 99
;99:		}
LABELV $79
line 102
;100:
;101:		// if out of air, start drowning
;102:		if ( ent->client->airOutTime < level.time) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 768
ADDP4
INDIRI4
ADDRGP4 level+32
INDIRI4
GEI4 $78
line 104
;103:			// drown!
;104:			ent->client->airOutTime += 1000;
ADDRLP4 12
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 768
ADDP4
ASGNP4
ADDRLP4 12
INDIRP4
ADDRLP4 12
INDIRP4
INDIRI4
CNSTI4 1000
ADDI4
ASGNI4
line 105
;105:			if ( ent->health > 0 ) {
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CNSTI4 0
LEI4 $78
line 107
;106:				// take more damage the longer underwater
;107:				ent->damage += 2;
ADDRLP4 16
ADDRFP4 0
INDIRP4
CNSTI4 740
ADDP4
ASGNP4
ADDRLP4 16
INDIRP4
ADDRLP4 16
INDIRP4
INDIRI4
CNSTI4 2
ADDI4
ASGNI4
line 108
;108:				if (ent->damage > 15)
ADDRFP4 0
INDIRP4
CNSTI4 740
ADDP4
INDIRI4
CNSTI4 15
LEI4 $87
line 109
;109:					ent->damage = 15;
ADDRFP4 0
INDIRP4
CNSTI4 740
ADDP4
CNSTI4 15
ASGNI4
LABELV $87
line 112
;110:
;111:				// don't play a normal pain sound
;112:				ent->pain_debounce_time = level.time + 200;
ADDRFP4 0
INDIRP4
CNSTI4 720
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 200
ADDI4
ASGNI4
line 114
;113:
;114:				G_Damage (ent, NULL, NULL, NULL, NULL, 
ADDRLP4 20
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 20
INDIRP4
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
ADDRLP4 20
INDIRP4
CNSTI4 740
ADDP4
INDIRI4
ARGI4
CNSTI4 2
ARGI4
CNSTI4 14
ARGI4
ADDRGP4 G_Damage
CALLV
pop
line 116
;115:					ent->damage, DAMAGE_NO_ARMOR, MOD_WATER);
;116:			}
line 117
;117:		}
line 118
;118:	} else {
ADDRGP4 $78
JUMPV
LABELV $77
line 119
;119:		ent->client->airOutTime = level.time + 12000;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 768
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 12000
ADDI4
ASGNI4
line 120
;120:		ent->damage = 2;
ADDRFP4 0
INDIRP4
CNSTI4 740
ADDP4
CNSTI4 2
ASGNI4
line 121
;121:	}
LABELV $78
line 126
;122:
;123:	//
;124:	// check for sizzle damage (move to pmove?)
;125:	//
;126:	if (waterlevel && 
ADDRLP4 0
INDIRI4
CNSTI4 0
EQI4 $91
ADDRFP4 0
INDIRP4
CNSTI4 784
ADDP4
INDIRI4
CNSTI4 24
BANDI4
CNSTI4 0
EQI4 $91
line 127
;127:		(ent->watertype&(CONTENTS_LAVA|CONTENTS_SLIME)) ) {
line 128
;128:		if (ent->health > 0
ADDRLP4 12
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 12
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CNSTI4 0
LEI4 $93
ADDRLP4 12
INDIRP4
CNSTI4 720
ADDP4
INDIRI4
ADDRGP4 level+32
INDIRI4
GTI4 $93
line 129
;129:			&& ent->pain_debounce_time <= level.time	) {
line 131
;130:
;131:			if ( envirosuit ) {
ADDRLP4 4
INDIRI4
CNSTI4 0
EQI4 $96
line 132
;132:				G_AddEvent( ent, EV_POWERUP_BATTLESUIT, 0 );
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 62
ARGI4
CNSTI4 0
ARGI4
ADDRGP4 G_AddEvent
CALLV
pop
line 133
;133:			} else {
ADDRGP4 $97
JUMPV
LABELV $96
line 134
;134:				if (ent->watertype & CONTENTS_LAVA) {
ADDRFP4 0
INDIRP4
CNSTI4 784
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $98
line 135
;135:					G_Damage (ent, NULL, NULL, NULL, NULL, 
ADDRFP4 0
INDIRP4
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 30
MULI4
ARGI4
CNSTI4 0
ARGI4
CNSTI4 16
ARGI4
ADDRGP4 G_Damage
CALLV
pop
line 137
;136:						30*waterlevel, 0, MOD_LAVA);
;137:				}
LABELV $98
line 139
;138:
;139:				if (ent->watertype & CONTENTS_SLIME) {
ADDRFP4 0
INDIRP4
CNSTI4 784
ADDP4
INDIRI4
CNSTI4 16
BANDI4
CNSTI4 0
EQI4 $100
line 140
;140:					G_Damage (ent, NULL, NULL, NULL, NULL, 
ADDRFP4 0
INDIRP4
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
ADDRLP4 0
INDIRI4
CNSTI4 10
MULI4
ARGI4
CNSTI4 0
ARGI4
CNSTI4 15
ARGI4
ADDRGP4 G_Damage
CALLV
pop
line 142
;141:						10*waterlevel, 0, MOD_SLIME);
;142:				}
LABELV $100
line 143
;143:			}
LABELV $97
line 144
;144:		}
LABELV $93
line 145
;145:	}
LABELV $91
line 146
;146:}
LABELV $69
endproc P_WorldEffects 24 32
export G_SetClientSound
proc G_SetClientSound 4 0
line 155
;147:
;148:
;149:
;150:/*
;151:===============
;152:G_SetClientSound
;153:===============
;154:*/
;155:void G_SetClientSound( gentity_t *ent ) {
line 162
;156:#ifdef MISSIONPACK
;157:	if( ent->s.eFlags & EF_TICKING ) {
;158:		ent->client->ps.loopSound = G_SoundIndex( "sound/weapons/proxmine/wstbtick.wav");
;159:	}
;160:	else
;161:#endif
;162:	if (ent->waterlevel && (ent->watertype&(CONTENTS_LAVA|CONTENTS_SLIME)) ) {
ADDRLP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 788
ADDP4
INDIRI4
CNSTI4 0
EQI4 $103
ADDRLP4 0
INDIRP4
CNSTI4 784
ADDP4
INDIRI4
CNSTI4 24
BANDI4
CNSTI4 0
EQI4 $103
line 163
;163:		ent->client->ps.loopSound = level.snd_fry;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 444
ADDP4
ADDRGP4 level+352
INDIRI4
ASGNI4
line 164
;164:	} else {
ADDRGP4 $104
JUMPV
LABELV $103
line 165
;165:		ent->client->ps.loopSound = 0;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 444
ADDP4
CNSTI4 0
ASGNI4
line 166
;166:	}
LABELV $104
line 167
;167:}
LABELV $102
endproc G_SetClientSound 4 0
export ClientImpacts
proc ClientImpacts 76 12
line 178
;168:
;169:
;170:
;171://==============================================================
;172:
;173:/*
;174:==============
;175:ClientImpacts
;176:==============
;177:*/
;178:void ClientImpacts( gentity_t *ent, pmove_t *pm ) {
line 183
;179:	int		i, j;
;180:	trace_t	trace;
;181:	gentity_t	*other;
;182:
;183:	memset( &trace, 0, sizeof( trace ) );
ADDRLP4 12
ARGP4
CNSTI4 0
ARGI4
CNSTI4 56
ARGI4
ADDRGP4 memset
CALLP4
pop
line 184
;184:	for (i=0 ; i<pm->numtouch ; i++) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $110
JUMPV
LABELV $107
line 185
;185:		for (j=0 ; j<i ; j++) {
ADDRLP4 0
CNSTI4 0
ASGNI4
ADDRGP4 $114
JUMPV
LABELV $111
line 186
;186:			if (pm->touchents[j] == pm->touchents[i] ) {
ADDRLP4 68
ADDRFP4 4
INDIRP4
ASGNP4
ADDRLP4 0
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 68
INDIRP4
CNSTI4 48
ADDP4
ADDP4
INDIRI4
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 68
INDIRP4
CNSTI4 48
ADDP4
ADDP4
INDIRI4
NEI4 $115
line 187
;187:				break;
ADDRGP4 $113
JUMPV
LABELV $115
line 189
;188:			}
;189:		}
LABELV $112
line 185
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $114
ADDRLP4 0
INDIRI4
ADDRLP4 4
INDIRI4
LTI4 $111
LABELV $113
line 190
;190:		if (j != i) {
ADDRLP4 0
INDIRI4
ADDRLP4 4
INDIRI4
EQI4 $117
line 191
;191:			continue;	// duplicated
ADDRGP4 $108
JUMPV
LABELV $117
line 193
;192:		}
;193:		other = &g_entities[ pm->touchents[i] ];
ADDRLP4 8
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRFP4 4
INDIRP4
CNSTI4 48
ADDP4
ADDP4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 195
;194:
;195:		if ( ( ent->r.svFlags & SVF_BOT ) && ( ent->touch ) ) {
ADDRLP4 68
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 68
INDIRP4
CNSTI4 424
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $119
ADDRLP4 68
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $119
line 196
;196:			ent->touch( ent, other, &trace );
ADDRLP4 72
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 72
INDIRP4
ARGP4
ADDRLP4 8
INDIRP4
ARGP4
ADDRLP4 12
ARGP4
ADDRLP4 72
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CALLV
pop
line 197
;197:		}
LABELV $119
line 199
;198:
;199:		if ( !other->touch ) {
ADDRLP4 8
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $121
line 200
;200:			continue;
ADDRGP4 $108
JUMPV
LABELV $121
line 203
;201:		}
;202:
;203:		other->touch( other, ent, &trace );
ADDRLP4 8
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 12
ARGP4
ADDRLP4 8
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CALLV
pop
line 204
;204:	}
LABELV $108
line 184
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $110
ADDRLP4 4
INDIRI4
ADDRFP4 4
INDIRP4
CNSTI4 44
ADDP4
INDIRI4
LTI4 $107
line 206
;205:
;206:}
LABELV $106
endproc ClientImpacts 76 12
data
align 4
LABELV $124
byte 4 1109393408
byte 4 1109393408
byte 4 1112539136
export G_TouchTriggers
code
proc G_TouchTriggers 4224 16
line 216
;207:
;208:/*
;209:============
;210:G_TouchTriggers
;211:
;212:Find all trigger entities that ent's current position touches.
;213:Spectators will only interact with teleporters.
;214:============
;215:*/
;216:void	G_TouchTriggers( gentity_t *ent ) {
line 224
;217:	int			i, num;
;218:	int			touch[MAX_GENTITIES];
;219:	gentity_t	*hit;
;220:	trace_t		trace;
;221:	vec3_t		mins, maxs;
;222:	static vec3_t	range = { 40, 40, 52 };
;223:
;224:	if ( !ent->client ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $125
line 225
;225:		return;
ADDRGP4 $123
JUMPV
LABELV $125
line 229
;226:	}
;227:
;228:	// dead clients don't activate triggers!
;229:	if ( ent->client->ps.stats[STAT_HEALTH] <= 0 ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 184
ADDP4
INDIRI4
CNSTI4 0
GTI4 $127
line 230
;230:		return;
ADDRGP4 $123
JUMPV
LABELV $127
line 233
;231:	}
;232:
;233:	VectorSubtract( ent->client->ps.origin, range, mins );
ADDRLP4 4188
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 64
ADDRLP4 4188
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 20
ADDP4
INDIRF4
ADDRGP4 $124
INDIRF4
SUBF4
ASGNF4
ADDRLP4 64+4
ADDRLP4 4188
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 24
ADDP4
INDIRF4
ADDRGP4 $124+4
INDIRF4
SUBF4
ASGNF4
ADDRLP4 64+8
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 28
ADDP4
INDIRF4
ADDRGP4 $124+8
INDIRF4
SUBF4
ASGNF4
line 234
;234:	VectorAdd( ent->client->ps.origin, range, maxs );
ADDRLP4 4192
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 76
ADDRLP4 4192
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 20
ADDP4
INDIRF4
ADDRGP4 $124
INDIRF4
ADDF4
ASGNF4
ADDRLP4 76+4
ADDRLP4 4192
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 24
ADDP4
INDIRF4
ADDRGP4 $124+4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 76+8
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 28
ADDP4
INDIRF4
ADDRGP4 $124+8
INDIRF4
ADDF4
ASGNF4
line 236
;235:
;236:	num = trap_EntitiesInBox( mins, maxs, touch, MAX_GENTITIES );
ADDRLP4 64
ARGP4
ADDRLP4 76
ARGP4
ADDRLP4 92
ARGP4
CNSTI4 1024
ARGI4
ADDRLP4 4196
ADDRGP4 trap_EntitiesInBox
CALLI4
ASGNI4
ADDRLP4 88
ADDRLP4 4196
INDIRI4
ASGNI4
line 239
;237:
;238:	// can't use ent->absmin, because that has a one unit pad
;239:	VectorAdd( ent->client->ps.origin, ent->r.mins, mins );
ADDRLP4 4200
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 64
ADDRLP4 4200
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 20
ADDP4
INDIRF4
ADDRLP4 4200
INDIRP4
CNSTI4 436
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 64+4
ADDRLP4 4200
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 24
ADDP4
INDIRF4
ADDRLP4 4200
INDIRP4
CNSTI4 440
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 4204
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 64+8
ADDRLP4 4204
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 28
ADDP4
INDIRF4
ADDRLP4 4204
INDIRP4
CNSTI4 444
ADDP4
INDIRF4
ADDF4
ASGNF4
line 240
;240:	VectorAdd( ent->client->ps.origin, ent->r.maxs, maxs );
ADDRLP4 4208
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 76
ADDRLP4 4208
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 20
ADDP4
INDIRF4
ADDRLP4 4208
INDIRP4
CNSTI4 448
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 76+4
ADDRLP4 4208
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 24
ADDP4
INDIRF4
ADDRLP4 4208
INDIRP4
CNSTI4 452
ADDP4
INDIRF4
ADDF4
ASGNF4
ADDRLP4 4212
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 76+8
ADDRLP4 4212
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 28
ADDP4
INDIRF4
ADDRLP4 4212
INDIRP4
CNSTI4 456
ADDP4
INDIRF4
ADDF4
ASGNF4
line 242
;241:
;242:	for ( i=0 ; i<num ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
ADDRGP4 $144
JUMPV
LABELV $141
line 243
;243:		hit = &g_entities[touch[i]];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 92
ADDP4
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 245
;244:
;245:		if ( !hit->touch && !ent->touch ) {
ADDRLP4 0
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $145
ADDRFP4 0
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $145
line 246
;246:			continue;
ADDRGP4 $142
JUMPV
LABELV $145
line 248
;247:		}
;248:		if ( !( hit->r.contents & CONTENTS_TRIGGER ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 460
ADDP4
INDIRI4
CNSTI4 1073741824
BANDI4
CNSTI4 0
NEI4 $147
line 249
;249:			continue;
ADDRGP4 $142
JUMPV
LABELV $147
line 253
;250:		}
;251:
;252:		// ignore most entities if a spectator
;253:		if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $149
line 254
;254:			if ( hit->s.eType != ET_TELEPORT_TRIGGER &&
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 9
EQI4 $151
ADDRLP4 0
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CVPU4 4
ADDRGP4 Touch_DoorTrigger
CVPU4 4
EQU4 $151
line 257
;255:				// this is ugly but adding a new ET_? type will
;256:				// most likely cause network incompatibilities
;257:				hit->touch != Touch_DoorTrigger) {
line 258
;258:				continue;
ADDRGP4 $142
JUMPV
LABELV $151
line 260
;259:			}
;260:		}
LABELV $149
line 264
;261:
;262:		// use seperate code for determining if an item is picked up
;263:		// so you don't have to actually contact its bounding box
;264:		if ( hit->s.eType == ET_ITEM ) {
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 2
NEI4 $153
line 265
;265:			if ( !BG_PlayerTouchesItem( &ent->client->ps, &hit->s, level.time ) ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 level+32
INDIRI4
ARGI4
ADDRLP4 4216
ADDRGP4 BG_PlayerTouchesItem
CALLI4
ASGNI4
ADDRLP4 4216
INDIRI4
CNSTI4 0
NEI4 $154
line 266
;266:				continue;
ADDRGP4 $142
JUMPV
line 268
;267:			}
;268:		} else {
LABELV $153
line 269
;269:			if ( !trap_EntityContact( mins, maxs, hit ) ) {
ADDRLP4 64
ARGP4
ADDRLP4 76
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 4216
ADDRGP4 trap_EntityContact
CALLI4
ASGNI4
ADDRLP4 4216
INDIRI4
CNSTI4 0
NEI4 $158
line 270
;270:				continue;
ADDRGP4 $142
JUMPV
LABELV $158
line 272
;271:			}
;272:		}
LABELV $154
line 274
;273:
;274:		memset( &trace, 0, sizeof(trace) );
ADDRLP4 8
ARGP4
CNSTI4 0
ARGI4
CNSTI4 56
ARGI4
ADDRGP4 memset
CALLP4
pop
line 276
;275:
;276:		if ( hit->touch ) {
ADDRLP4 0
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $160
line 277
;277:			hit->touch (hit, ent, &trace);
ADDRLP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 8
ARGP4
ADDRLP4 0
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CALLV
pop
line 278
;278:		}
LABELV $160
line 280
;279:
;280:		if ( ( ent->r.svFlags & SVF_BOT ) && ( ent->touch ) ) {
ADDRLP4 4216
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4216
INDIRP4
CNSTI4 424
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $162
ADDRLP4 4216
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $162
line 281
;281:			ent->touch( ent, hit, &trace );
ADDRLP4 4220
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4220
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 8
ARGP4
ADDRLP4 4220
INDIRP4
CNSTI4 704
ADDP4
INDIRP4
CALLV
pop
line 282
;282:		}
LABELV $162
line 283
;283:	}
LABELV $142
line 242
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $144
ADDRLP4 4
INDIRI4
ADDRLP4 88
INDIRI4
LTI4 $141
line 286
;284:
;285:	// if we didn't touch a jump pad this pmove frame
;286:	if ( ent->client->ps.jumppad_frame != ent->client->ps.pmove_framecount ) {
ADDRLP4 4216
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4216
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 460
ADDP4
INDIRI4
ADDRLP4 4216
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 456
ADDP4
INDIRI4
EQI4 $164
line 287
;287:		ent->client->ps.jumppad_frame = 0;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 460
ADDP4
CNSTI4 0
ASGNI4
line 288
;288:		ent->client->ps.jumppad_ent = 0;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 448
ADDP4
CNSTI4 0
ASGNI4
line 289
;289:	}
LABELV $164
line 290
;290:}
LABELV $123
endproc G_TouchTriggers 4224 16
export SpectatorThink
proc SpectatorThink 236 12
line 297
;291:
;292:/*
;293:=================
;294:SpectatorThink
;295:=================
;296:*/
;297:void SpectatorThink( gentity_t *ent, usercmd_t *ucmd ) {
line 301
;298:	pmove_t	pm;
;299:	gclient_t	*client;
;300:
;301:	client = ent->client;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 303
;302:
;303:	if ( client->sess.spectatorState != SPECTATOR_FOLLOW ) {
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 2
EQI4 $167
line 304
;304:		client->ps.pm_type = PM_SPECTATOR;
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 2
ASGNI4
line 305
;305:		client->ps.speed = g_speed.value * 1.25f; // faster than normal
ADDRLP4 0
INDIRP4
CNSTI4 52
ADDP4
ADDRGP4 g_speed+8
INDIRF4
CNSTF4 1067450368
MULF4
CVFI4 4
ASGNI4
line 308
;306:
;307:		// set up for pmove
;308:		memset( &pm, 0, sizeof( pm ) );
ADDRLP4 4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 224
ARGI4
ADDRGP4 memset
CALLP4
pop
line 309
;309:		pm.ps = &client->ps;
ADDRLP4 4
ADDRLP4 0
INDIRP4
ASGNP4
line 310
;310:		pm.cmd = *ucmd;
ADDRLP4 4+4
ADDRFP4 4
INDIRP4
INDIRB
ASGNB 24
line 311
;311:		if ( client->noclip )
ADDRLP4 0
INDIRP4
CNSTI4 668
ADDP4
INDIRI4
CNSTI4 0
EQI4 $171
line 312
;312:			pm.tracemask = 0;
ADDRLP4 4+28
CNSTI4 0
ASGNI4
ADDRGP4 $172
JUMPV
LABELV $171
line 314
;313:		else
;314:			pm.tracemask = MASK_PLAYERSOLID & ~CONTENTS_BODY;	// spectators can fly through bodies
ADDRLP4 4+28
CNSTI4 65537
ASGNI4
LABELV $172
line 315
;315:		pm.trace = trap_Trace;
ADDRLP4 4+216
ADDRGP4 trap_Trace
ASGNP4
line 316
;316:		pm.pointcontents = trap_PointContents;
ADDRLP4 4+220
ADDRGP4 trap_PointContents
ASGNP4
line 319
;317:
;318:		// perform a pmove
;319:		Pmove( &pm );
ADDRLP4 4
ARGP4
ADDRGP4 Pmove
CALLV
pop
line 321
;320:		// save results of pmove
;321:		VectorCopy( client->ps.origin, ent->s.origin );
ADDRFP4 0
INDIRP4
CNSTI4 92
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 20
ADDP4
INDIRB
ASGNB 12
line 323
;322:
;323:		G_TouchTriggers( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 G_TouchTriggers
CALLV
pop
line 324
;324:		trap_UnlinkEntity( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 trap_UnlinkEntity
CALLV
pop
line 325
;325:	}
LABELV $167
line 327
;326:
;327:	client->oldbuttons = client->buttons;
ADDRLP4 0
INDIRP4
CNSTI4 680
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 676
ADDP4
INDIRI4
ASGNI4
line 328
;328:	client->buttons = ucmd->buttons;
ADDRLP4 0
INDIRP4
CNSTI4 676
ADDP4
ADDRFP4 4
INDIRP4
CNSTI4 16
ADDP4
INDIRI4
ASGNI4
line 331
;329:
;330:	// attack button cycles through spectators
;331:	if ( ( client->buttons & BUTTON_ATTACK ) && ! ( client->oldbuttons & BUTTON_ATTACK ) ) {
ADDRLP4 0
INDIRP4
CNSTI4 676
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
EQI4 $177
ADDRLP4 0
INDIRP4
CNSTI4 680
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
NEI4 $177
line 332
;332:		Cmd_FollowCycle_f( ent, 1 );
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 Cmd_FollowCycle_f
CALLV
pop
line 333
;333:	}
LABELV $177
line 334
;334:}
LABELV $166
endproc SpectatorThink 236 12
export ClientInactivityTimer
proc ClientInactivityTimer 8 8
line 345
;335:
;336:
;337:
;338:/*
;339:=================
;340:ClientInactivityTimer
;341:
;342:Returns qfalse if the client is dropped
;343:=================
;344:*/
;345:qboolean ClientInactivityTimer(gclient_t* client) {
line 346
;346:	if (!g_inactivity.integer) {
ADDRGP4 g_inactivity+12
INDIRI4
CNSTI4 0
NEI4 $180
line 349
;347:		// Give everyone some time, so if the operator sets g_inactivity during
;348:		// gameplay, everyone isn't kicked
;349:		client->inactivityTime = level.time + 60 * 1000;
ADDRFP4 0
INDIRP4
CNSTI4 756
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 60000
ADDI4
ASGNI4
line 350
;350:		client->inactivityWarning = qfalse;
ADDRFP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 0
ASGNI4
line 351
;351:	}
ADDRGP4 $181
JUMPV
LABELV $180
line 352
;352:	else if (client->pers.cmd.forwardmove ||
ADDRLP4 0
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 0
INDIRP4
CNSTI4 493
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $188
ADDRLP4 0
INDIRP4
CNSTI4 494
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $188
ADDRLP4 0
INDIRP4
CNSTI4 495
ADDP4
INDIRI1
CVII4 1
CNSTI4 0
NEI4 $188
ADDRLP4 0
INDIRP4
CNSTI4 488
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
EQI4 $184
LABELV $188
line 355
;353:		client->pers.cmd.rightmove ||
;354:		client->pers.cmd.upmove ||
;355:		(client->pers.cmd.buttons & BUTTON_ATTACK)) {
line 356
;356:		client->inactivityTime = level.time + g_inactivity.integer * 1000;
ADDRFP4 0
INDIRP4
CNSTI4 756
ADDP4
ADDRGP4 level+32
INDIRI4
ADDRGP4 g_inactivity+12
INDIRI4
CNSTI4 1000
MULI4
ADDI4
ASGNI4
line 357
;357:		client->inactivityWarning = qfalse;
ADDRFP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 0
ASGNI4
line 358
;358:	}
ADDRGP4 $185
JUMPV
LABELV $184
line 359
;359:	else if (!client->pers.localClient) {
ADDRFP4 0
INDIRP4
CNSTI4 496
ADDP4
INDIRI4
CNSTI4 0
NEI4 $191
line 360
;360:		if (level.time > client->inactivityTime) {
ADDRGP4 level+32
INDIRI4
ADDRFP4 0
INDIRP4
CNSTI4 756
ADDP4
INDIRI4
LEI4 $193
line 362
;361:			// Get the entity corresponding to the client
;362:			gentity_t* ent = &g_entities[client - level.clients];
ADDRLP4 4
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
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 364
;363:			// Move the player to spectator mode
;364:			SetTeam(ent, "spectator");
ADDRLP4 4
INDIRP4
ARGP4
ADDRGP4 $196
ARGP4
ADDRGP4 SetTeam
CALLI4
pop
line 365
;365:			return qfalse;
CNSTI4 0
RETI4
ADDRGP4 $179
JUMPV
LABELV $193
line 367
;366:		}
;367:		if (level.time > client->inactivityTime - 10000 && !client->inactivityWarning) {
ADDRLP4 4
ADDRFP4 0
INDIRP4
ASGNP4
ADDRGP4 level+32
INDIRI4
ADDRLP4 4
INDIRP4
CNSTI4 756
ADDP4
INDIRI4
CNSTI4 10000
SUBI4
LEI4 $197
ADDRLP4 4
INDIRP4
CNSTI4 760
ADDP4
INDIRI4
CNSTI4 0
NEI4 $197
line 368
;368:			client->inactivityWarning = qtrue;
ADDRFP4 0
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 1
ASGNI4
line 369
;369:			trap_SendServerCommand(client - level.clients, "cp \"Ten seconds until inactivity drop!\n\"");
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
ARGI4
ADDRGP4 $200
ARGP4
ADDRGP4 trap_SendServerCommand
CALLV
pop
line 370
;370:		}
LABELV $197
line 371
;371:	}
LABELV $191
LABELV $185
LABELV $181
line 372
;372:	return qtrue;
CNSTI4 1
RETI4
LABELV $179
endproc ClientInactivityTimer 8 8
export ClientTimerActions
proc ClientTimerActions 20 12
line 383
;373:}
;374:
;375:
;376:/*
;377:==================
;378:ClientTimerActions
;379:
;380:Actions that happen once a second
;381:==================
;382:*/
;383:void ClientTimerActions( gentity_t *ent, int msec ) {
line 389
;384:	gclient_t	*client;
;385:#ifdef MISSIONPACK
;386:	int			maxHealth;
;387:#endif
;388:
;389:	client = ent->client;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 390
;390:	client->timeResidual += msec;
ADDRLP4 4
ADDRLP4 0
INDIRP4
CNSTI4 788
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
ADDRFP4 4
INDIRI4
ADDI4
ASGNI4
ADDRGP4 $203
JUMPV
LABELV $202
line 392
;391:
;392:	while ( client->timeResidual >= 1000 ) {
line 393
;393:		client->timeResidual -= 1000;
ADDRLP4 8
ADDRLP4 0
INDIRP4
CNSTI4 788
ADDP4
ASGNP4
ADDRLP4 8
INDIRP4
ADDRLP4 8
INDIRP4
INDIRI4
CNSTI4 1000
SUBI4
ASGNI4
line 421
;394:
;395:		// regenerate
;396:#ifdef MISSIONPACK
;397:		if( bg_itemlist[client->ps.stats[STAT_PERSISTANT_POWERUP]].giTag == PW_GUARD ) {
;398:			maxHealth = client->ps.stats[STAT_MAX_HEALTH] / 2;
;399:		}
;400:		else if ( client->ps.powerups[PW_REGEN] ) {
;401:			maxHealth = client->ps.stats[STAT_MAX_HEALTH];
;402:		}
;403:		else {
;404:			maxHealth = 0;
;405:		}
;406:		if( maxHealth ) {
;407:			if ( ent->health < maxHealth ) {
;408:				ent->health += 15;
;409:				if ( ent->health > maxHealth * 1.1 ) {
;410:					ent->health = maxHealth * 1.1;
;411:				}
;412:				G_AddEvent( ent, EV_POWERUP_REGEN, 0 );
;413:			} else if ( ent->health < maxHealth * 2) {
;414:				ent->health += 5;
;415:				if ( ent->health > maxHealth * 2 ) {
;416:					ent->health = maxHealth * 2;
;417:				}
;418:				G_AddEvent( ent, EV_POWERUP_REGEN, 0 );
;419:			}
;420:#else
;421:		if ( client->ps.powerups[PW_REGEN] ) {
ADDRLP4 0
INDIRP4
CNSTI4 332
ADDP4
INDIRI4
CNSTI4 0
EQI4 $205
line 422
;422:			if ( ent->health < client->ps.stats[STAT_MAX_HEALTH]) {
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
GEI4 $207
line 423
;423:				ent->health += 15;
ADDRLP4 12
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
ASGNP4
ADDRLP4 12
INDIRP4
ADDRLP4 12
INDIRP4
INDIRI4
CNSTI4 15
ADDI4
ASGNI4
line 424
;424:				if ( ent->health > client->ps.stats[STAT_MAX_HEALTH] * 1.1 ) {
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
CVIF4 4
ADDRLP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
CVIF4 4
CNSTF4 1066192077
MULF4
LEF4 $209
line 425
;425:					ent->health = client->ps.stats[STAT_MAX_HEALTH] * 1.1;
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
CVIF4 4
CNSTF4 1066192077
MULF4
CVFI4 4
ASGNI4
line 426
;426:				}
LABELV $209
line 427
;427:				G_AddEvent( ent, EV_POWERUP_REGEN, 0 );
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 63
ARGI4
CNSTI4 0
ARGI4
ADDRGP4 G_AddEvent
CALLV
pop
line 428
;428:			} else if ( ent->health < client->ps.stats[STAT_MAX_HEALTH] * 2) {
ADDRGP4 $206
JUMPV
LABELV $207
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
CNSTI4 1
LSHI4
GEI4 $206
line 429
;429:				ent->health += 5;
ADDRLP4 12
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
ASGNP4
ADDRLP4 12
INDIRP4
ADDRLP4 12
INDIRP4
INDIRI4
CNSTI4 5
ADDI4
ASGNI4
line 430
;430:				if ( ent->health > client->ps.stats[STAT_MAX_HEALTH] * 2 ) {
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
CNSTI4 1
LSHI4
LEI4 $213
line 431
;431:					ent->health = client->ps.stats[STAT_MAX_HEALTH] * 2;
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
CNSTI4 1
LSHI4
ASGNI4
line 432
;432:				}
LABELV $213
line 433
;433:				G_AddEvent( ent, EV_POWERUP_REGEN, 0 );
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 63
ARGI4
CNSTI4 0
ARGI4
ADDRGP4 G_AddEvent
CALLV
pop
line 434
;434:			}
line 436
;435:#endif
;436:		} else {
ADDRGP4 $206
JUMPV
LABELV $205
line 438
;437:			// count down health when over max
;438:			if ( ent->health > client->ps.stats[STAT_MAX_HEALTH] ) {
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
LEI4 $215
line 439
;439:				ent->health--;
ADDRLP4 12
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
ASGNP4
ADDRLP4 12
INDIRP4
ADDRLP4 12
INDIRP4
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 440
;440:			}
LABELV $215
line 441
;441:		}
LABELV $206
line 444
;442:
;443:		// count down armor when over max
;444:		if ( client->ps.stats[STAT_ARMOR] > client->ps.stats[STAT_MAX_HEALTH] ) {
ADDRLP4 0
INDIRP4
CNSTI4 196
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
LEI4 $217
line 445
;445:			client->ps.stats[STAT_ARMOR]--;
ADDRLP4 16
ADDRLP4 0
INDIRP4
CNSTI4 196
ADDP4
ASGNP4
ADDRLP4 16
INDIRP4
ADDRLP4 16
INDIRP4
INDIRI4
CNSTI4 1
SUBI4
ASGNI4
line 446
;446:		}
LABELV $217
line 447
;447:	}
LABELV $203
line 392
ADDRLP4 0
INDIRP4
CNSTI4 788
ADDP4
INDIRI4
CNSTI4 1000
GEI4 $202
line 486
;448:#ifdef MISSIONPACK
;449:	if( bg_itemlist[client->ps.stats[STAT_PERSISTANT_POWERUP]].giTag == PW_AMMOREGEN ) {
;450:		int w, max, inc, t, i;
;451:    int weapList[]={WP_MACHINEGUN,WP_SHOTGUN,WP_GRENADE_LAUNCHER,WP_ROCKET_LAUNCHER,WP_LIGHTNING,WP_RAILGUN,WP_PLASMAGUN,WP_BFG,WP_NAILGUN,WP_PROX_LAUNCHER,WP_CHAINGUN};
;452:    int weapCount = ARRAY_LEN( weapList );
;453:		//
;454:    for (i = 0; i < weapCount; i++) {
;455:		  w = weapList[i];
;456:
;457:		  switch(w) {
;458:			  case WP_MACHINEGUN: max = 50; inc = 4; t = 1000; break;
;459:			  case WP_SHOTGUN: max = 10; inc = 1; t = 1500; break;
;460:			  case WP_GRENADE_LAUNCHER: max = 10; inc = 1; t = 2000; break;
;461:			  case WP_ROCKET_LAUNCHER: max = 10; inc = 1; t = 1750; break;
;462:			  case WP_LIGHTNING: max = 50; inc = 5; t = 1500; break;
;463:			  case WP_RAILGUN: max = 10; inc = 1; t = 1750; break;
;464:			  case WP_PLASMAGUN: max = 50; inc = 5; t = 1500; break;
;465:			  case WP_BFG: max = 10; inc = 1; t = 4000; break;
;466:			  case WP_NAILGUN: max = 10; inc = 1; t = 1250; break;
;467:			  case WP_PROX_LAUNCHER: max = 5; inc = 1; t = 2000; break;
;468:			  case WP_CHAINGUN: max = 100; inc = 5; t = 1000; break;
;469:			  default: max = 0; inc = 0; t = 1000; break;
;470:		  }
;471:		  client->ammoTimes[w] += msec;
;472:		  if ( client->ps.ammo[w] >= max ) {
;473:			  client->ammoTimes[w] = 0;
;474:		  }
;475:		  if ( client->ammoTimes[w] >= t ) {
;476:			  while ( client->ammoTimes[w] >= t )
;477:				  client->ammoTimes[w] -= t;
;478:			  client->ps.ammo[w] += inc;
;479:			  if ( client->ps.ammo[w] > max ) {
;480:				  client->ps.ammo[w] = max;
;481:			  }
;482:		  }
;483:    }
;484:	}
;485:#endif
;486:}
LABELV $201
endproc ClientTimerActions 20 12
export ClientIntermissionThink
proc ClientIntermissionThink 20 0
line 493
;487:
;488:/*
;489:====================
;490:ClientIntermissionThink
;491:====================
;492:*/
;493:void ClientIntermissionThink( gclient_t *client ) {
line 494
;494:	client->ps.eFlags &= ~EF_TALK;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 0
INDIRP4
ADDRLP4 0
INDIRP4
INDIRI4
CNSTI4 -4097
BANDI4
ASGNI4
line 495
;495:	client->ps.eFlags &= ~EF_FIRING;
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
CNSTI4 -257
BANDI4
ASGNI4
line 500
;496:
;497:	// the level will exit when everyone wants to or after timeouts
;498:
;499:	// swap and latch button actions
;500:	client->oldbuttons = client->buttons;
ADDRLP4 8
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 8
INDIRP4
CNSTI4 680
ADDP4
ADDRLP4 8
INDIRP4
CNSTI4 676
ADDP4
INDIRI4
ASGNI4
line 501
;501:	client->buttons = client->pers.cmd.buttons;
ADDRLP4 12
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 12
INDIRP4
CNSTI4 676
ADDP4
ADDRLP4 12
INDIRP4
CNSTI4 488
ADDP4
INDIRI4
ASGNI4
line 502
;502:	if ( client->buttons & ( BUTTON_ATTACK | BUTTON_USE_HOLDABLE ) & ( client->oldbuttons ^ client->buttons ) ) {
ADDRLP4 16
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 16
INDIRP4
CNSTI4 676
ADDP4
INDIRI4
CNSTI4 5
BANDI4
ADDRLP4 16
INDIRP4
CNSTI4 680
ADDP4
INDIRI4
ADDRLP4 16
INDIRP4
CNSTI4 676
ADDP4
INDIRI4
BXORI4
BANDI4
CNSTI4 0
EQI4 $220
line 504
;503:		// this used to be an ^1 but once a player says ready, it should stick
;504:		client->readyToExit = 1;
ADDRFP4 0
INDIRP4
CNSTI4 664
ADDP4
CNSTI4 1
ASGNI4
line 505
;505:	}
LABELV $220
line 506
;506:}
LABELV $219
endproc ClientIntermissionThink 20 0
export ClientEvents
proc ClientEvents 68 32
line 517
;507:
;508:
;509:/*
;510:================
;511:ClientEvents
;512:
;513:Events will be passed on to the clients for presentation,
;514:but any server game effects are handled here
;515:================
;516:*/
;517:void ClientEvents( gentity_t *ent, int oldEventSequence ) {
line 527
;518:	int		i, j;
;519:	int		event;
;520:	gclient_t *client;
;521:	int		damage;
;522:	vec3_t	origin, angles;
;523://	qboolean	fired;
;524:	gitem_t *item;
;525:	gentity_t *drop;
;526:
;527:	client = ent->client;
ADDRLP4 8
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 529
;528:
;529:	if ( oldEventSequence < client->ps.eventSequence - MAX_PS_EVENTS ) {
ADDRFP4 4
INDIRI4
ADDRLP4 8
INDIRP4
CNSTI4 108
ADDP4
INDIRI4
CNSTI4 2
SUBI4
GEI4 $223
line 530
;530:		oldEventSequence = client->ps.eventSequence - MAX_PS_EVENTS;
ADDRFP4 4
ADDRLP4 8
INDIRP4
CNSTI4 108
ADDP4
INDIRI4
CNSTI4 2
SUBI4
ASGNI4
line 531
;531:	}
LABELV $223
line 532
;532:	for ( i = oldEventSequence ; i < client->ps.eventSequence ; i++ ) {
ADDRLP4 0
ADDRFP4 4
INDIRI4
ASGNI4
ADDRGP4 $228
JUMPV
LABELV $225
line 533
;533:		event = client->ps.events[ i & (MAX_PS_EVENTS-1) ];
ADDRLP4 4
ADDRLP4 0
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 2
LSHI4
ADDRLP4 8
INDIRP4
CNSTI4 112
ADDP4
ADDP4
INDIRI4
ASGNI4
line 535
;534:
;535:		switch ( event ) {
ADDRLP4 4
INDIRI4
CNSTI4 11
EQI4 $231
ADDRLP4 4
INDIRI4
CNSTI4 12
EQI4 $231
ADDRLP4 4
INDIRI4
CNSTI4 11
LTI4 $230
LABELV $254
ADDRLP4 4
INDIRI4
CNSTI4 23
EQI4 $240
ADDRLP4 4
INDIRI4
CNSTI4 25
EQI4 $241
ADDRLP4 4
INDIRI4
CNSTI4 26
EQI4 $253
ADDRGP4 $230
JUMPV
LABELV $231
line 538
;536:		case EV_FALL_MEDIUM:
;537:		case EV_FALL_FAR:
;538:			if ( ent->s.eType != ET_PLAYER ) {
ADDRFP4 0
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 1
EQI4 $232
line 539
;539:				break;		// not in the player model
ADDRGP4 $230
JUMPV
LABELV $232
line 541
;540:			}
;541:			if ( g_dmflags.integer & DF_NO_FALLING ) {
ADDRGP4 g_dmflags+12
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $234
line 542
;542:				break;
ADDRGP4 $230
JUMPV
LABELV $234
line 544
;543:			}
;544:			if ( event == EV_FALL_FAR ) {
ADDRLP4 4
INDIRI4
CNSTI4 12
NEI4 $237
line 545
;545:				damage = 10;
ADDRLP4 24
CNSTI4 10
ASGNI4
line 546
;546:			} else {
ADDRGP4 $238
JUMPV
LABELV $237
line 547
;547:				damage = 5;
ADDRLP4 24
CNSTI4 5
ASGNI4
line 548
;548:			}
LABELV $238
line 549
;549:			ent->pain_debounce_time = level.time + 200;	// no normal pain sound
ADDRFP4 0
INDIRP4
CNSTI4 720
ADDP4
ADDRGP4 level+32
INDIRI4
CNSTI4 200
ADDI4
ASGNI4
line 550
;550:			G_Damage (ent, NULL, NULL, NULL, NULL, damage, 0, MOD_FALLING);
ADDRFP4 0
INDIRP4
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
CNSTP4 0
ARGP4
ADDRLP4 24
INDIRI4
ARGI4
CNSTI4 0
ARGI4
CNSTI4 19
ARGI4
ADDRGP4 G_Damage
CALLV
pop
line 551
;551:			break;
ADDRGP4 $230
JUMPV
LABELV $240
line 554
;552:
;553:		case EV_FIRE_WEAPON:
;554:			FireWeapon( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 FireWeapon
CALLV
pop
line 555
;555:			break;
ADDRGP4 $230
JUMPV
LABELV $241
line 559
;556:
;557:		case EV_USE_ITEM1:		// teleporter
;558:			// drop flags in CTF
;559:			item = NULL;
ADDRLP4 12
CNSTP4 0
ASGNP4
line 560
;560:			j = 0;
ADDRLP4 16
CNSTI4 0
ASGNI4
line 562
;561:
;562:			if ( ent->client->ps.powerups[ PW_REDFLAG ] ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 340
ADDP4
INDIRI4
CNSTI4 0
EQI4 $242
line 563
;563:				item = BG_FindItemForPowerup( PW_REDFLAG );
CNSTI4 7
ARGI4
ADDRLP4 60
ADDRGP4 BG_FindItemForPowerup
CALLP4
ASGNP4
ADDRLP4 12
ADDRLP4 60
INDIRP4
ASGNP4
line 564
;564:				j = PW_REDFLAG;
ADDRLP4 16
CNSTI4 7
ASGNI4
line 565
;565:			} else if ( ent->client->ps.powerups[ PW_BLUEFLAG ] ) {
ADDRGP4 $243
JUMPV
LABELV $242
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 344
ADDP4
INDIRI4
CNSTI4 0
EQI4 $244
line 566
;566:				item = BG_FindItemForPowerup( PW_BLUEFLAG );
CNSTI4 8
ARGI4
ADDRLP4 60
ADDRGP4 BG_FindItemForPowerup
CALLP4
ASGNP4
ADDRLP4 12
ADDRLP4 60
INDIRP4
ASGNP4
line 567
;567:				j = PW_BLUEFLAG;
ADDRLP4 16
CNSTI4 8
ASGNI4
line 568
;568:			} else if ( ent->client->ps.powerups[ PW_NEUTRALFLAG ] ) {
ADDRGP4 $245
JUMPV
LABELV $244
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 348
ADDP4
INDIRI4
CNSTI4 0
EQI4 $246
line 569
;569:				item = BG_FindItemForPowerup( PW_NEUTRALFLAG );
CNSTI4 9
ARGI4
ADDRLP4 60
ADDRGP4 BG_FindItemForPowerup
CALLP4
ASGNP4
ADDRLP4 12
ADDRLP4 60
INDIRP4
ASGNP4
line 570
;570:				j = PW_NEUTRALFLAG;
ADDRLP4 16
CNSTI4 9
ASGNI4
line 571
;571:			}
LABELV $246
LABELV $245
LABELV $243
line 573
;572:
;573:			if ( item ) {
ADDRLP4 12
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $248
line 574
;574:				drop = Drop_Item( ent, item, 0 );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 12
INDIRP4
ARGP4
CNSTF4 0
ARGF4
ADDRLP4 60
ADDRGP4 Drop_Item
CALLP4
ASGNP4
ADDRLP4 20
ADDRLP4 60
INDIRP4
ASGNP4
line 576
;575:				// decide how many seconds it has left
;576:				drop->count = ( ent->client->ps.powerups[ j ] - level.time ) / 1000;
ADDRLP4 20
INDIRP4
CNSTI4 760
ADDP4
ADDRLP4 16
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
ADDRGP4 level+32
INDIRI4
SUBI4
CNSTI4 1000
DIVI4
ASGNI4
line 577
;577:				if ( drop->count < 1 ) {
ADDRLP4 20
INDIRP4
CNSTI4 760
ADDP4
INDIRI4
CNSTI4 1
GEI4 $251
line 578
;578:					drop->count = 1;
ADDRLP4 20
INDIRP4
CNSTI4 760
ADDP4
CNSTI4 1
ASGNI4
line 579
;579:				}
LABELV $251
line 581
;580:				// for pickup prediction
;581:				drop->s.time2 = drop->count;
ADDRLP4 64
ADDRLP4 20
INDIRP4
ASGNP4
ADDRLP4 64
INDIRP4
CNSTI4 88
ADDP4
ADDRLP4 64
INDIRP4
CNSTI4 760
ADDP4
INDIRI4
ASGNI4
line 583
;582:
;583:				ent->client->ps.powerups[ j ] = 0;
ADDRLP4 16
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
CNSTI4 0
ASGNI4
line 584
;584:			}
LABELV $248
line 608
;585:
;586:#ifdef MISSIONPACK
;587:			if ( g_gametype.integer == GT_HARVESTER ) {
;588:				if ( ent->client->ps.generic1 > 0 ) {
;589:					if ( ent->client->sess.sessionTeam == TEAM_RED ) {
;590:						item = BG_FindItem( "Blue Cube" );
;591:					} else {
;592:						item = BG_FindItem( "Red Cube" );
;593:					}
;594:					if ( item ) {
;595:						for ( j = 0; j < ent->client->ps.generic1; j++ ) {
;596:							drop = Drop_Item( ent, item, 0 );
;597:							if ( ent->client->sess.sessionTeam == TEAM_RED ) {
;598:								drop->spawnflags = TEAM_BLUE;
;599:							} else {
;600:								drop->spawnflags = TEAM_RED;
;601:							}
;602:						}
;603:					}
;604:					ent->client->ps.generic1 = 0;
;605:				}
;606:			}
;607:#endif
;608:			SelectSpawnPoint( ent, ent->client->ps.origin, origin, angles );
ADDRLP4 60
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 60
INDIRP4
ARGP4
ADDRLP4 60
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 20
ADDP4
ARGP4
ADDRLP4 28
ARGP4
ADDRLP4 40
ARGP4
ADDRGP4 SelectSpawnPoint
CALLP4
pop
line 609
;609:			TeleportPlayer( ent, origin, angles );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 28
ARGP4
ADDRLP4 40
ARGP4
ADDRGP4 TeleportPlayer
CALLV
pop
line 610
;610:			break;
ADDRGP4 $230
JUMPV
LABELV $253
line 613
;611:
;612:		case EV_USE_ITEM2:		// medkit
;613:			ent->health = ent->client->ps.stats[STAT_MAX_HEALTH] + 25;
ADDRLP4 64
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 64
INDIRP4
CNSTI4 732
ADDP4
ADDRLP4 64
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
CNSTI4 25
ADDI4
ASGNI4
line 615
;614:
;615:			break;
line 639
;616:
;617:#ifdef MISSIONPACK
;618:		case EV_USE_ITEM3:		// kamikaze
;619:			// make sure the invulnerability is off
;620:			ent->client->invulnerabilityTime = 0;
;621:			// start the kamikze
;622:			G_StartKamikaze( ent );
;623:			break;
;624:
;625:		case EV_USE_ITEM4:		// portal
;626:			if( ent->client->portalID ) {
;627:				DropPortalSource( ent );
;628:			}
;629:			else {
;630:				DropPortalDestination( ent );
;631:			}
;632:			break;
;633:		case EV_USE_ITEM5:		// invulnerability
;634:			ent->client->invulnerabilityTime = level.time + 10000;
;635:			break;
;636:#endif
;637:
;638:		default:
;639:			break;
LABELV $230
line 641
;640:		}
;641:	}
LABELV $226
line 532
ADDRLP4 0
ADDRLP4 0
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
LABELV $228
ADDRLP4 0
INDIRI4
ADDRLP4 8
INDIRP4
CNSTI4 108
ADDP4
INDIRI4
LTI4 $225
line 643
;642:
;643:}
LABELV $222
endproc ClientEvents 68 32
export SendPendingPredictableEvents
proc SendPendingPredictableEvents 40 12
line 695
;644:
;645:#ifdef MISSIONPACK
;646:/*
;647:==============
;648:StuckInOtherClient
;649:==============
;650:*/
;651:static int StuckInOtherClient(gentity_t *ent) {
;652:	int i;
;653:	gentity_t	*ent2;
;654:
;655:	ent2 = &g_entities[0];
;656:	for ( i = 0; i < MAX_CLIENTS; i++, ent2++ ) {
;657:		if ( ent2 == ent ) {
;658:			continue;
;659:		}
;660:		if ( !ent2->inuse ) {
;661:			continue;
;662:		}
;663:		if ( !ent2->client ) {
;664:			continue;
;665:		}
;666:		if ( ent2->health <= 0 ) {
;667:			continue;
;668:		}
;669:		//
;670:		if (ent2->r.absmin[0] > ent->r.absmax[0])
;671:			continue;
;672:		if (ent2->r.absmin[1] > ent->r.absmax[1])
;673:			continue;
;674:		if (ent2->r.absmin[2] > ent->r.absmax[2])
;675:			continue;
;676:		if (ent2->r.absmax[0] < ent->r.absmin[0])
;677:			continue;
;678:		if (ent2->r.absmax[1] < ent->r.absmin[1])
;679:			continue;
;680:		if (ent2->r.absmax[2] < ent->r.absmin[2])
;681:			continue;
;682:		return qtrue;
;683:	}
;684:	return qfalse;
;685:}
;686:#endif
;687:
;688:void BotTestSolid(vec3_t origin);
;689:
;690:/*
;691:==============
;692:SendPendingPredictableEvents
;693:==============
;694:*/
;695:void SendPendingPredictableEvents( playerState_t *ps ) {
line 701
;696:	gentity_t *t;
;697:	int event, seq;
;698:	int extEvent, number;
;699:
;700:	// if there are still events pending
;701:	if ( ps->entityEventSequence < ps->eventSequence ) {
ADDRLP4 20
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 20
INDIRP4
CNSTI4 464
ADDP4
INDIRI4
ADDRLP4 20
INDIRP4
CNSTI4 108
ADDP4
INDIRI4
GEI4 $256
line 704
;702:		// create a temporary entity for this event which is sent to everyone
;703:		// except the client who generated the event
;704:		seq = ps->entityEventSequence & (MAX_PS_EVENTS-1);
ADDRLP4 8
ADDRFP4 0
INDIRP4
CNSTI4 464
ADDP4
INDIRI4
CNSTI4 1
BANDI4
ASGNI4
line 705
;705:		event = ps->events[ seq ] | ( ( ps->entityEventSequence & 3 ) << 8 );
ADDRLP4 24
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 4
ADDRLP4 8
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 24
INDIRP4
CNSTI4 112
ADDP4
ADDP4
INDIRI4
ADDRLP4 24
INDIRP4
CNSTI4 464
ADDP4
INDIRI4
CNSTI4 3
BANDI4
CNSTI4 8
LSHI4
BORI4
ASGNI4
line 707
;706:		// set external event to zero before calling BG_PlayerStateToEntityState
;707:		extEvent = ps->externalEvent;
ADDRLP4 12
ADDRFP4 0
INDIRP4
CNSTI4 128
ADDP4
INDIRI4
ASGNI4
line 708
;708:		ps->externalEvent = 0;
ADDRFP4 0
INDIRP4
CNSTI4 128
ADDP4
CNSTI4 0
ASGNI4
line 710
;709:		// create temporary entity for event
;710:		t = G_TempEntity( ps->origin, event );
ADDRFP4 0
INDIRP4
CNSTI4 20
ADDP4
ARGP4
ADDRLP4 4
INDIRI4
ARGI4
ADDRLP4 28
ADDRGP4 G_TempEntity
CALLP4
ASGNP4
ADDRLP4 0
ADDRLP4 28
INDIRP4
ASGNP4
line 711
;711:		number = t->s.number;
ADDRLP4 16
ADDRLP4 0
INDIRP4
INDIRI4
ASGNI4
line 712
;712:		BG_PlayerStateToEntityState( ps, &t->s, qtrue );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 0
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 BG_PlayerStateToEntityState
CALLV
pop
line 713
;713:		t->s.number = number;
ADDRLP4 0
INDIRP4
ADDRLP4 16
INDIRI4
ASGNI4
line 714
;714:		t->s.eType = ET_EVENTS + event;
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
ADDRLP4 4
INDIRI4
CNSTI4 13
ADDI4
ASGNI4
line 715
;715:		t->s.eFlags |= EF_PLAYER_EVENT;
ADDRLP4 32
ADDRLP4 0
INDIRP4
CNSTI4 8
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
CNSTI4 16
BORI4
ASGNI4
line 716
;716:		t->s.otherEntityNum = ps->clientNum;
ADDRLP4 0
INDIRP4
CNSTI4 140
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 140
ADDP4
INDIRI4
ASGNI4
line 718
;717:		// send to everyone except the client who generated the event
;718:		t->r.svFlags |= SVF_NOTSINGLECLIENT;
ADDRLP4 36
ADDRLP4 0
INDIRP4
CNSTI4 424
ADDP4
ASGNP4
ADDRLP4 36
INDIRP4
ADDRLP4 36
INDIRP4
INDIRI4
CNSTI4 2048
BORI4
ASGNI4
line 719
;719:		t->r.singleClient = ps->clientNum;
ADDRLP4 0
INDIRP4
CNSTI4 428
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 140
ADDP4
INDIRI4
ASGNI4
line 721
;720:		// set back external event
;721:		ps->externalEvent = extEvent;
ADDRFP4 0
INDIRP4
CNSTI4 128
ADDP4
ADDRLP4 12
INDIRI4
ASGNI4
line 722
;722:	}
LABELV $256
line 723
;723:}
LABELV $255
endproc SendPendingPredictableEvents 40 12
export ClientThink_real
proc ClientThink_real 288 12
line 736
;724:
;725:/*
;726:==============
;727:ClientThink
;728:
;729:This will be called once for each client frame, which will
;730:usually be a couple times for each server frame on fast clients.
;731:
;732:If "g_synchronousClients 1" is set, this will be called exactly
;733:once for each server frame, which makes for smooth demo recording.
;734:==============
;735:*/
;736:void ClientThink_real( gentity_t *ent ) {
line 743
;737:	gclient_t	*client;
;738:	pmove_t		pm;
;739:	int			oldEventSequence;
;740:	int			msec;
;741:	usercmd_t	*ucmd;
;742:
;743:	client = ent->client;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 746
;744:
;745:	// don't think if the client is not yet connected (and thus not yet spawned in)
;746:	if (client->pers.connected != CON_CONNECTED) {
ADDRLP4 0
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
EQI4 $259
line 747
;747:		return;
ADDRGP4 $258
JUMPV
LABELV $259
line 750
;748:	}
;749:	// mark the time, so the connection sprite can be removed
;750:	ucmd = &ent->client->pers.cmd;
ADDRLP4 228
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 472
ADDP4
ASGNP4
line 753
;751:
;752:	// sanity check the command time to prevent speedup cheating
;753:	if ( ucmd->serverTime > level.time + 200 ) {
ADDRLP4 228
INDIRP4
INDIRI4
ADDRGP4 level+32
INDIRI4
CNSTI4 200
ADDI4
LEI4 $261
line 754
;754:		ucmd->serverTime = level.time + 200;
ADDRLP4 228
INDIRP4
ADDRGP4 level+32
INDIRI4
CNSTI4 200
ADDI4
ASGNI4
line 756
;755://		G_Printf("serverTime <<<<<\n" );
;756:	} else
ADDRGP4 $262
JUMPV
LABELV $261
line 757
;757:	if ( ucmd->serverTime < level.time - 1000 ) {
ADDRLP4 228
INDIRP4
INDIRI4
ADDRGP4 level+32
INDIRI4
CNSTI4 1000
SUBI4
GEI4 $265
line 758
;758:		ucmd->serverTime = level.time - 1000;
ADDRLP4 228
INDIRP4
ADDRGP4 level+32
INDIRI4
CNSTI4 1000
SUBI4
ASGNI4
line 760
;759://		G_Printf("serverTime >>>>>\n" );
;760:	}
LABELV $265
LABELV $262
line 763
;761:
;762:	// unlagged
;763:	client->frameOffset = trap_Milliseconds() - level.frameStartTime;
ADDRLP4 240
ADDRGP4 trap_Milliseconds
CALLI4
ASGNI4
ADDRLP4 0
INDIRP4
CNSTI4 1560
ADDP4
ADDRLP4 240
INDIRI4
ADDRGP4 level+11800
INDIRI4
SUBI4
ASGNI4
line 764
;764:	client->lastCmdTime = ucmd->serverTime;
ADDRLP4 0
INDIRP4
CNSTI4 672
ADDP4
ADDRLP4 228
INDIRP4
INDIRI4
ASGNI4
line 765
;765:	client->lastUpdateFrame = level.framenum;
ADDRLP4 0
INDIRP4
CNSTI4 1564
ADDP4
ADDRGP4 level+28
INDIRI4
ASGNI4
line 767
;766:
;767:	msec = ucmd->serverTime - client->ps.commandTime;
ADDRLP4 232
ADDRLP4 228
INDIRP4
INDIRI4
ADDRLP4 0
INDIRP4
INDIRI4
SUBI4
ASGNI4
line 770
;768:	// following others may result in bad times, but we still want
;769:	// to check for follow toggles
;770:	if ( msec < 1 && client->sess.spectatorState != SPECTATOR_FOLLOW ) {
ADDRLP4 232
INDIRI4
CNSTI4 1
GEI4 $271
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 2
EQI4 $271
line 771
;771:		return;
ADDRGP4 $258
JUMPV
LABELV $271
line 773
;772:	}
;773:	if ( msec > 200 ) {
ADDRLP4 232
INDIRI4
CNSTI4 200
LEI4 $273
line 774
;774:		msec = 200;
ADDRLP4 232
CNSTI4 200
ASGNI4
line 775
;775:	}
LABELV $273
line 777
;776:
;777:	if ( pmove_msec.integer < 8 ) {
ADDRGP4 pmove_msec+12
INDIRI4
CNSTI4 8
GEI4 $275
line 778
;778:		trap_Cvar_Set( "pmove_msec", "8" );
ADDRGP4 $278
ARGP4
ADDRGP4 $279
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 779
;779:		trap_Cvar_Update( &pmove_msec );
ADDRGP4 pmove_msec
ARGP4
ADDRGP4 trap_Cvar_Update
CALLV
pop
line 780
;780:	} else if ( pmove_msec.integer > 33 ) {
ADDRGP4 $276
JUMPV
LABELV $275
ADDRGP4 pmove_msec+12
INDIRI4
CNSTI4 33
LEI4 $280
line 781
;781:		trap_Cvar_Set( "pmove_msec", "33" );
ADDRGP4 $278
ARGP4
ADDRGP4 $283
ARGP4
ADDRGP4 trap_Cvar_Set
CALLV
pop
line 782
;782:		trap_Cvar_Update( &pmove_msec );
ADDRGP4 pmove_msec
ARGP4
ADDRGP4 trap_Cvar_Update
CALLV
pop
line 783
;783:	}
LABELV $280
LABELV $276
line 785
;784:
;785:	if ( pmove_fixed.integer ) {
ADDRGP4 pmove_fixed+12
INDIRI4
CNSTI4 0
EQI4 $284
line 786
;786:		ucmd->serverTime = ((ucmd->serverTime + pmove_msec.integer-1) / pmove_msec.integer) * pmove_msec.integer;
ADDRLP4 228
INDIRP4
ADDRLP4 228
INDIRP4
INDIRI4
ADDRGP4 pmove_msec+12
INDIRI4
ADDI4
CNSTI4 1
SUBI4
ADDRGP4 pmove_msec+12
INDIRI4
DIVI4
ADDRGP4 pmove_msec+12
INDIRI4
MULI4
ASGNI4
line 789
;787:		//if (ucmd->serverTime - client->ps.commandTime <= 0)
;788:		//	return;
;789:	}
LABELV $284
line 794
;790:
;791:	//
;792:	// check for exiting intermission
;793:	//
;794:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $290
line 795
;795:		ClientIntermissionThink( client );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ClientIntermissionThink
CALLV
pop
line 796
;796:		return;
ADDRGP4 $258
JUMPV
LABELV $290
line 800
;797:	}
;798:
;799:	// spectators don't do much
;800:	if ( client->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRLP4 0
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $293
line 801
;801:		if ( client->sess.spectatorState == SPECTATOR_SCOREBOARD ) {
ADDRLP4 0
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 3
NEI4 $295
line 802
;802:			return;
ADDRGP4 $258
JUMPV
LABELV $295
line 804
;803:		}
;804:		SpectatorThink( ent, ucmd );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 228
INDIRP4
ARGP4
ADDRGP4 SpectatorThink
CALLV
pop
line 805
;805:		return;
ADDRGP4 $258
JUMPV
LABELV $293
line 809
;806:	}
;807:
;808:	// check for inactivity timer, but never drop the local client of a non-dedicated server
;809:	if ( !ClientInactivityTimer( client ) ) {
ADDRLP4 0
INDIRP4
ARGP4
ADDRLP4 244
ADDRGP4 ClientInactivityTimer
CALLI4
ASGNI4
ADDRLP4 244
INDIRI4
CNSTI4 0
NEI4 $297
line 810
;810:		return;
ADDRGP4 $258
JUMPV
LABELV $297
line 814
;811:	}
;812:
;813:	// clear the rewards if time
;814:	if ( level.time > client->rewardTime ) {
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 764
ADDP4
INDIRI4
LEI4 $299
line 815
;815:		client->ps.eFlags &= ~EF_AWARDS;
ADDRLP4 248
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 248
INDIRP4
ADDRLP4 248
INDIRP4
INDIRI4
CNSTI4 -231497
BANDI4
ASGNI4
line 816
;816:	}
LABELV $299
line 818
;817:
;818:	if ( client->noclip ) {
ADDRLP4 0
INDIRP4
CNSTI4 668
ADDP4
INDIRI4
CNSTI4 0
EQI4 $302
line 819
;819:		client->ps.pm_type = PM_NOCLIP;
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 1
ASGNI4
line 820
;820:	} else if ( client->ps.stats[STAT_HEALTH] <= 0 ) {
ADDRGP4 $303
JUMPV
LABELV $302
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
INDIRI4
CNSTI4 0
GTI4 $304
line 821
;821:		client->ps.pm_type = PM_DEAD;
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 3
ASGNI4
line 822
;822:	} else {
ADDRGP4 $305
JUMPV
LABELV $304
line 823
;823:		client->ps.pm_type = PM_NORMAL;
ADDRLP4 0
INDIRP4
CNSTI4 4
ADDP4
CNSTI4 0
ASGNI4
line 824
;824:	}
LABELV $305
LABELV $303
line 826
;825:
;826:	client->ps.gravity = g_gravity.value;
ADDRLP4 0
INDIRP4
CNSTI4 48
ADDP4
ADDRGP4 g_gravity+8
INDIRF4
CVFI4 4
ASGNI4
line 829
;827:
;828:	// set speed
;829:	client->ps.speed = g_speed.value;
ADDRLP4 0
INDIRP4
CNSTI4 52
ADDP4
ADDRGP4 g_speed+8
INDIRF4
CVFI4 4
ASGNI4
line 837
;830:
;831:#ifdef MISSIONPACK
;832:	if( bg_itemlist[client->ps.stats[STAT_PERSISTANT_POWERUP]].giTag == PW_SCOUT ) {
;833:		client->ps.speed *= 1.5;
;834:	}
;835:	else
;836:#endif
;837:	if ( client->ps.powerups[PW_HASTE] ) {
ADDRLP4 0
INDIRP4
CNSTI4 324
ADDP4
INDIRI4
CNSTI4 0
EQI4 $308
line 838
;838:		client->ps.speed *= 1.3;
ADDRLP4 248
ADDRLP4 0
INDIRP4
CNSTI4 52
ADDP4
ASGNP4
ADDRLP4 248
INDIRP4
ADDRLP4 248
INDIRP4
INDIRI4
CVIF4 4
CNSTF4 1067869798
MULF4
CVFI4 4
ASGNI4
line 839
;839:	}
LABELV $308
line 842
;840:
;841:	// Let go of the hook if we aren't firing
;842:	if ( client->ps.weapon == WP_GRAPPLING_HOOK &&
ADDRLP4 0
INDIRP4
CNSTI4 144
ADDP4
INDIRI4
CNSTI4 10
NEI4 $310
ADDRLP4 0
INDIRP4
CNSTI4 780
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
EQU4 $310
ADDRLP4 228
INDIRP4
CNSTI4 16
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
NEI4 $310
line 843
;843:		client->hook && !( ucmd->buttons & BUTTON_ATTACK ) ) {
line 844
;844:		Weapon_HookFree(client->hook);
ADDRLP4 0
INDIRP4
CNSTI4 780
ADDP4
INDIRP4
ARGP4
ADDRGP4 Weapon_HookFree
CALLV
pop
line 845
;845:	}
LABELV $310
line 848
;846:
;847:	// set up for pmove
;848:	oldEventSequence = client->ps.eventSequence;
ADDRLP4 236
ADDRLP4 0
INDIRP4
CNSTI4 108
ADDP4
INDIRI4
ASGNI4
line 850
;849:
;850:	memset (&pm, 0, sizeof(pm));
ADDRLP4 4
ARGP4
CNSTI4 0
ARGI4
CNSTI4 224
ARGI4
ADDRGP4 memset
CALLP4
pop
line 854
;851:
;852:	// check for the hit-scan gauntlet, don't let the action
;853:	// go through as an attack unless it actually hits something
;854:	if ( client->ps.weapon == WP_GAUNTLET && !( ucmd->buttons & BUTTON_TALK ) &&
ADDRLP4 0
INDIRP4
CNSTI4 144
ADDP4
INDIRI4
CNSTI4 1
NEI4 $312
ADDRLP4 228
INDIRP4
CNSTI4 16
ADDP4
INDIRI4
CNSTI4 2
BANDI4
CNSTI4 0
NEI4 $312
ADDRLP4 228
INDIRP4
CNSTI4 16
ADDP4
INDIRI4
CNSTI4 1
BANDI4
CNSTI4 0
EQI4 $312
ADDRLP4 0
INDIRP4
CNSTI4 44
ADDP4
INDIRI4
CNSTI4 0
GTI4 $312
line 855
;855:		( ucmd->buttons & BUTTON_ATTACK ) && client->ps.weaponTime <= 0 ) {
line 856
;856:		pm.gauntletHit = CheckGauntletAttack( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 260
ADDRGP4 CheckGauntletAttack
CALLI4
ASGNI4
ADDRLP4 4+36
ADDRLP4 260
INDIRI4
ASGNI4
line 857
;857:	}
LABELV $312
line 859
;858:
;859:	if ( ent->flags & FL_FORCE_GESTURE ) {
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
INDIRI4
CNSTI4 32768
BANDI4
CNSTI4 0
EQI4 $315
line 860
;860:		ent->flags &= ~FL_FORCE_GESTURE;
ADDRLP4 260
ADDRFP4 0
INDIRP4
CNSTI4 536
ADDP4
ASGNP4
ADDRLP4 260
INDIRP4
ADDRLP4 260
INDIRP4
INDIRI4
CNSTI4 -32769
BANDI4
ASGNI4
line 861
;861:		ent->client->pers.cmd.buttons |= BUTTON_GESTURE;
ADDRLP4 264
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 488
ADDP4
ASGNP4
ADDRLP4 264
INDIRP4
ADDRLP4 264
INDIRP4
INDIRI4
CNSTI4 8
BORI4
ASGNI4
line 862
;862:	}
LABELV $315
line 891
;863:
;864:#ifdef MISSIONPACK
;865:	// check for invulnerability expansion before doing the Pmove
;866:	if (client->ps.powerups[PW_INVULNERABILITY] ) {
;867:		if ( !(client->ps.pm_flags & PMF_INVULEXPAND) ) {
;868:			vec3_t mins = { -42, -42, -42 };
;869:			vec3_t maxs = { 42, 42, 42 };
;870:			vec3_t oldmins, oldmaxs;
;871:
;872:			VectorCopy (ent->r.mins, oldmins);
;873:			VectorCopy (ent->r.maxs, oldmaxs);
;874:			// expand
;875:			VectorCopy (mins, ent->r.mins);
;876:			VectorCopy (maxs, ent->r.maxs);
;877:			trap_LinkEntity(ent);
;878:			// check if this would get anyone stuck in this player
;879:			if ( !StuckInOtherClient(ent) ) {
;880:				// set flag so the expanded size will be set in PM_CheckDuck
;881:				client->ps.pm_flags |= PMF_INVULEXPAND;
;882:			}
;883:			// set back
;884:			VectorCopy (oldmins, ent->r.mins);
;885:			VectorCopy (oldmaxs, ent->r.maxs);
;886:			trap_LinkEntity(ent);
;887:		}
;888:	}
;889:#endif
;890:
;891:	pm.ps = &client->ps;
ADDRLP4 4
ADDRLP4 0
INDIRP4
ASGNP4
line 892
;892:	pm.cmd = *ucmd;
ADDRLP4 4+4
ADDRLP4 228
INDIRP4
INDIRB
ASGNB 24
line 893
;893:	if ( pm.ps->pm_type == PM_DEAD ) {
ADDRLP4 4
INDIRP4
CNSTI4 4
ADDP4
INDIRI4
CNSTI4 3
NEI4 $318
line 894
;894:		pm.tracemask = MASK_PLAYERSOLID & ~CONTENTS_BODY;
ADDRLP4 4+28
CNSTI4 65537
ASGNI4
line 895
;895:	}
ADDRGP4 $319
JUMPV
LABELV $318
line 896
;896:	else if ( ent->r.svFlags & SVF_BOT ) {
ADDRFP4 0
INDIRP4
CNSTI4 424
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
EQI4 $321
line 897
;897:		pm.tracemask = MASK_PLAYERSOLID | CONTENTS_BOTCLIP;
ADDRLP4 4+28
CNSTI4 37814273
ASGNI4
line 898
;898:	}
ADDRGP4 $322
JUMPV
LABELV $321
line 899
;899:	else {
line 900
;900:		pm.tracemask = MASK_PLAYERSOLID;
ADDRLP4 4+28
CNSTI4 33619969
ASGNI4
line 901
;901:	}
LABELV $322
LABELV $319
line 902
;902:	pm.trace = trap_Trace;
ADDRLP4 4+216
ADDRGP4 trap_Trace
ASGNP4
line 903
;903:	pm.pointcontents = trap_PointContents;
ADDRLP4 4+220
ADDRGP4 trap_PointContents
ASGNP4
line 904
;904:	pm.debugLevel = g_debugMove.integer;
ADDRLP4 4+32
ADDRGP4 g_debugMove+12
INDIRI4
ASGNI4
line 906
;905:
;906:	pm.pmove_fixed = pmove_fixed.integer;
ADDRLP4 4+208
ADDRGP4 pmove_fixed+12
INDIRI4
ASGNI4
line 907
;907:	pm.pmove_msec = pmove_msec.integer;
ADDRLP4 4+212
ADDRGP4 pmove_msec+12
INDIRI4
ASGNI4
line 909
;908:
;909:	VectorCopy( client->ps.origin, client->oldOrigin );
ADDRLP4 0
INDIRP4
CNSTI4 688
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 20
ADDP4
INDIRB
ASGNB 12
line 926
;910:
;911:#ifdef MISSIONPACK
;912:		if (level.intermissionQueued != 0 && g_singlePlayer.integer) {
;913:			if ( level.time - level.intermissionQueued >= 1000  ) {
;914:				pm.cmd.buttons = 0;
;915:				pm.cmd.forwardmove = 0;
;916:				pm.cmd.rightmove = 0;
;917:				pm.cmd.upmove = 0;
;918:				if ( level.time - level.intermissionQueued >= 2000 && level.time - level.intermissionQueued <= 2500 ) {
;919:					trap_SendConsoleCommand( EXEC_APPEND, "centerview\n");
;920:				}
;921:				ent->client->ps.pm_type = PM_SPINTERMISSION;
;922:			}
;923:		}
;924:		Pmove (&pm);
;925:#else
;926:		Pmove (&pm);
ADDRLP4 4
ARGP4
ADDRGP4 Pmove
CALLV
pop
line 930
;927:#endif
;928:
;929:	// save results of pmove
;930:	if ( ent->client->ps.eventSequence != oldEventSequence ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 108
ADDP4
INDIRI4
ADDRLP4 236
INDIRI4
EQI4 $333
line 931
;931:		ent->eventTime = level.time;
ADDRFP4 0
INDIRP4
CNSTI4 552
ADDP4
ADDRGP4 level+32
INDIRI4
ASGNI4
line 932
;932:	}
LABELV $333
line 934
;933:
;934:	BG_PlayerStateToEntityState( &ent->client->ps, &ent->s, qtrue );
ADDRLP4 264
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 264
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ARGP4
ADDRLP4 264
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 BG_PlayerStateToEntityState
CALLV
pop
line 936
;935:
;936:	SendPendingPredictableEvents( &ent->client->ps );
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ARGP4
ADDRGP4 SendPendingPredictableEvents
CALLV
pop
line 938
;937:
;938:	if ( !( ent->client->ps.eFlags & EF_FIRING ) ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
INDIRI4
CNSTI4 256
BANDI4
CNSTI4 0
NEI4 $336
line 939
;939:		client->fireHeld = qfalse;		// for grapple
ADDRLP4 0
INDIRP4
CNSTI4 776
ADDP4
CNSTI4 0
ASGNI4
line 940
;940:	}
LABELV $336
line 943
;941:
;942:	// use the snapped origin for linking so it matches client predicted versions
;943:	VectorCopy( ent->s.pos.trBase, ent->r.currentOrigin );
ADDRLP4 268
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 268
INDIRP4
CNSTI4 488
ADDP4
ADDRLP4 268
INDIRP4
CNSTI4 24
ADDP4
INDIRB
ASGNB 12
line 945
;944:
;945:	VectorCopy (pm.mins, ent->r.mins);
ADDRFP4 0
INDIRP4
CNSTI4 436
ADDP4
ADDRLP4 4+176
INDIRB
ASGNB 12
line 946
;946:	VectorCopy (pm.maxs, ent->r.maxs);
ADDRFP4 0
INDIRP4
CNSTI4 448
ADDP4
ADDRLP4 4+188
INDIRB
ASGNB 12
line 948
;947:
;948:	ent->waterlevel = pm.waterlevel;
ADDRFP4 0
INDIRP4
CNSTI4 788
ADDP4
ADDRLP4 4+204
INDIRI4
ASGNI4
line 949
;949:	ent->watertype = pm.watertype;
ADDRFP4 0
INDIRP4
CNSTI4 784
ADDP4
ADDRLP4 4+200
INDIRI4
ASGNI4
line 952
;950:
;951:	// execute client events
;952:	ClientEvents( ent, oldEventSequence );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 236
INDIRI4
ARGI4
ADDRGP4 ClientEvents
CALLV
pop
line 955
;953:
;954:	// link entity now, after any personal teleporters have been used
;955:	trap_LinkEntity (ent);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 trap_LinkEntity
CALLV
pop
line 956
;956:	if ( !ent->client->noclip ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 668
ADDP4
INDIRI4
CNSTI4 0
NEI4 $342
line 957
;957:		G_TouchTriggers( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 G_TouchTriggers
CALLV
pop
line 958
;958:	}
LABELV $342
line 961
;959:
;960:	// NOTE: now copy the exact origin over otherwise clients can be snapped into solid
;961:	VectorCopy( ent->client->ps.origin, ent->r.currentOrigin );
ADDRLP4 272
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 272
INDIRP4
CNSTI4 488
ADDP4
ADDRLP4 272
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 20
ADDP4
INDIRB
ASGNB 12
line 964
;962:
;963:	//test for solid areas in the AAS file
;964:	BotTestAAS(ent->r.currentOrigin);
ADDRFP4 0
INDIRP4
CNSTI4 488
ADDP4
ARGP4
ADDRGP4 BotTestAAS
CALLV
pop
line 967
;965:
;966:	// touch other objects
;967:	ClientImpacts( ent, &pm );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 4
ARGP4
ADDRGP4 ClientImpacts
CALLV
pop
line 970
;968:
;969:	// save results of triggers and client events
;970:	if (ent->client->ps.eventSequence != oldEventSequence) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 108
ADDP4
INDIRI4
ADDRLP4 236
INDIRI4
EQI4 $344
line 971
;971:		ent->eventTime = level.time;
ADDRFP4 0
INDIRP4
CNSTI4 552
ADDP4
ADDRGP4 level+32
INDIRI4
ASGNI4
line 972
;972:	}
LABELV $344
line 975
;973:
;974:	// swap and latch button actions
;975:	client->oldbuttons = client->buttons;
ADDRLP4 0
INDIRP4
CNSTI4 680
ADDP4
ADDRLP4 0
INDIRP4
CNSTI4 676
ADDP4
INDIRI4
ASGNI4
line 976
;976:	client->buttons = ucmd->buttons;
ADDRLP4 0
INDIRP4
CNSTI4 676
ADDP4
ADDRLP4 228
INDIRP4
CNSTI4 16
ADDP4
INDIRI4
ASGNI4
line 977
;977:	client->latched_buttons |= client->buttons & ~client->oldbuttons;
ADDRLP4 284
ADDRLP4 0
INDIRP4
CNSTI4 684
ADDP4
ASGNP4
ADDRLP4 284
INDIRP4
ADDRLP4 284
INDIRP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 676
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 680
ADDP4
INDIRI4
BCOMI4
BANDI4
BORI4
ASGNI4
line 980
;978:
;979:	// check for respawning
;980:	if ( client->ps.stats[STAT_HEALTH] <= 0 ) {
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
INDIRI4
CNSTI4 0
GTI4 $347
line 982
;981:		// wait for the attack button to be pressed
;982:		if ( level.time > client->respawnTime ) {
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 752
ADDP4
INDIRI4
LEI4 $258
line 984
;983:			// forcerespawn is to prevent users from waiting out powerups
;984:			if ( g_forcerespawn.integer > 0 && 
ADDRGP4 g_forcerespawn+12
INDIRI4
CNSTI4 0
LEI4 $352
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 752
ADDP4
INDIRI4
SUBI4
ADDRGP4 g_forcerespawn+12
INDIRI4
CNSTI4 1000
MULI4
LEI4 $352
line 985
;985:				( level.time - client->respawnTime ) > g_forcerespawn.integer * 1000 ) {
line 986
;986:				respawn( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 respawn
CALLV
pop
line 987
;987:				return;
ADDRGP4 $258
JUMPV
LABELV $352
line 991
;988:			}
;989:		
;990:			// pressing attack or use is the normal respawn method
;991:			if ( ucmd->buttons & ( BUTTON_ATTACK | BUTTON_USE_HOLDABLE ) ) {
ADDRLP4 228
INDIRP4
CNSTI4 16
ADDP4
INDIRI4
CNSTI4 5
BANDI4
CNSTI4 0
EQI4 $258
line 992
;992:				respawn( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 respawn
CALLV
pop
line 993
;993:			}
line 994
;994:		}
line 995
;995:		return;
ADDRGP4 $258
JUMPV
LABELV $347
line 999
;996:	}
;997:
;998:	// perform once-a-second actions
;999:	ClientTimerActions( ent, msec );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 232
INDIRI4
ARGI4
ADDRGP4 ClientTimerActions
CALLV
pop
line 1000
;1000:}
LABELV $258
endproc ClientThink_real 288 12
export ClientThink
proc ClientThink 4 8
line 1010
;1001:
;1002:
;1003:/*
;1004:==================
;1005:ClientThink
;1006:
;1007:A new command has arrived from the client
;1008:==================
;1009:*/
;1010:void ClientThink( int clientNum ) {
line 1013
;1011:	gentity_t *ent;
;1012:
;1013:	ent = g_entities + clientNum;
ADDRLP4 0
ADDRFP4 0
INDIRI4
CNSTI4 816
MULI4
ADDRGP4 g_entities
ADDP4
ASGNP4
line 1014
;1014:	trap_GetUsercmd( clientNum, &ent->client->pers.cmd );
ADDRFP4 0
INDIRI4
ARGI4
ADDRLP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 472
ADDP4
ARGP4
ADDRGP4 trap_GetUsercmd
CALLV
pop
line 1022
;1015:
;1016:	// mark the time we got info, so we can display the
;1017:	// phone jack if they don't get any for a while
;1018:#if 0 // unlagged
;1019:	ent->client->lastCmdTime = level.time;
;1020:#endif
;1021:
;1022:	if ( !(ent->r.svFlags & SVF_BOT) && !g_synchronousClients.integer ) {
ADDRLP4 0
INDIRP4
CNSTI4 424
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $360
ADDRGP4 g_synchronousClients+12
INDIRI4
CNSTI4 0
NEI4 $360
line 1023
;1023:		ClientThink_real( ent );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 ClientThink_real
CALLV
pop
line 1024
;1024:	}
LABELV $360
line 1025
;1025:}
LABELV $359
endproc ClientThink 4 8
export G_RunClient
proc G_RunClient 0 4
line 1028
;1026:
;1027:
;1028:void G_RunClient( gentity_t *ent ) {
line 1029
;1029:	if ( !(ent->r.svFlags & SVF_BOT) && !g_synchronousClients.integer ) {
ADDRFP4 0
INDIRP4
CNSTI4 424
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $364
ADDRGP4 g_synchronousClients+12
INDIRI4
CNSTI4 0
NEI4 $364
line 1030
;1030:		return;
ADDRGP4 $363
JUMPV
LABELV $364
line 1032
;1031:	}
;1032:	ent->client->pers.cmd.serverTime = level.time;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 472
ADDP4
ADDRGP4 level+32
INDIRI4
ASGNI4
line 1033
;1033:	ClientThink_real( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 ClientThink_real
CALLV
pop
line 1034
;1034:}
LABELV $363
endproc G_RunClient 0 4
export SpectatorClientEndFrame
proc SpectatorClientEndFrame 20 4
line 1043
;1035:
;1036:
;1037:/*
;1038:==================
;1039:SpectatorClientEndFrame
;1040:
;1041:==================
;1042:*/
;1043:void SpectatorClientEndFrame( gentity_t *ent ) {
line 1047
;1044:	gclient_t	*cl;
;1045:
;1046:	// if we are doing a chase cam or a remote view, grab the latest info
;1047:	if ( ent->client->sess.spectatorState == SPECTATOR_FOLLOW ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 2
NEI4 $369
line 1050
;1048:		int		clientNum, flags;
;1049:
;1050:		clientNum = ent->client->sess.spectatorClient;
ADDRLP4 4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 648
ADDP4
INDIRI4
ASGNI4
line 1053
;1051:
;1052:		// team follow1 and team follow2 go to whatever clients are playing
;1053:		if ( clientNum == -1 ) {
ADDRLP4 4
INDIRI4
CNSTI4 -1
NEI4 $371
line 1054
;1054:			clientNum = level.follow1;
ADDRLP4 4
ADDRGP4 level+344
INDIRI4
ASGNI4
line 1055
;1055:		} else if ( clientNum == -2 ) {
ADDRGP4 $372
JUMPV
LABELV $371
ADDRLP4 4
INDIRI4
CNSTI4 -2
NEI4 $374
line 1056
;1056:			clientNum = level.follow2;
ADDRLP4 4
ADDRGP4 level+348
INDIRI4
ASGNI4
line 1057
;1057:		}
LABELV $374
LABELV $372
line 1058
;1058:		if ( (unsigned)clientNum < MAX_CLIENTS ) {
ADDRLP4 4
INDIRI4
CVIU4 4
CNSTU4 64
GEU4 $377
line 1059
;1059:			cl = &level.clients[ clientNum ];
ADDRLP4 0
ADDRLP4 4
INDIRI4
CNSTI4 1580
MULI4
ADDRGP4 level
INDIRP4
ADDP4
ASGNP4
line 1060
;1060:			if ( cl->pers.connected == CON_CONNECTED && cl->sess.sessionTeam != TEAM_SPECTATOR ) {
ADDRLP4 12
ADDRLP4 0
INDIRP4
ASGNP4
ADDRLP4 12
INDIRP4
CNSTI4 468
ADDP4
INDIRI4
CNSTI4 2
NEI4 $379
ADDRLP4 12
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
EQI4 $379
line 1061
;1061:				flags = (cl->ps.eFlags & ~(EF_VOTED | EF_TEAMVOTED)) | (ent->client->ps.eFlags & (EF_VOTED | EF_TEAMVOTED));
ADDRLP4 8
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
INDIRI4
CNSTI4 -540673
BANDI4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
INDIRI4
CNSTI4 540672
BANDI4
BORI4
ASGNI4
line 1062
;1062:				ent->client->ps = cl->ps;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ADDRLP4 0
INDIRP4
INDIRB
ASGNB 468
line 1063
;1063:				ent->client->ps.pm_flags |= PMF_FOLLOW;
ADDRLP4 16
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 12
ADDP4
ASGNP4
ADDRLP4 16
INDIRP4
ADDRLP4 16
INDIRP4
INDIRI4
CNSTI4 4096
BORI4
ASGNI4
line 1064
;1064:				ent->client->ps.eFlags = flags;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 104
ADDP4
ADDRLP4 8
INDIRI4
ASGNI4
line 1065
;1065:				return;
ADDRGP4 $368
JUMPV
LABELV $379
line 1066
;1066:			} else {
line 1068
;1067:				// drop them to free spectators unless they are dedicated camera followers
;1068:				if ( ent->client->sess.spectatorClient >= 0 ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 648
ADDP4
INDIRI4
CNSTI4 0
LTI4 $381
line 1069
;1069:					ent->client->sess.spectatorState = SPECTATOR_FREE;
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 644
ADDP4
CNSTI4 1
ASGNI4
line 1070
;1070:					ClientBegin( ent->client - level.clients );
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
ARGI4
ADDRGP4 ClientBegin
CALLV
pop
line 1071
;1071:				}
LABELV $381
line 1072
;1072:			}
line 1073
;1073:		}
LABELV $377
line 1074
;1074:	}
LABELV $369
line 1076
;1075:
;1076:	if ( ent->client->sess.spectatorState == SPECTATOR_SCOREBOARD ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 644
ADDP4
INDIRI4
CNSTI4 3
NEI4 $383
line 1077
;1077:		ent->client->ps.pm_flags |= PMF_SCOREBOARD;
ADDRLP4 4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 12
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 8192
BORI4
ASGNI4
line 1078
;1078:	} else {
ADDRGP4 $384
JUMPV
LABELV $383
line 1079
;1079:		ent->client->ps.pm_flags &= ~PMF_SCOREBOARD;
ADDRLP4 4
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 12
ADDP4
ASGNP4
ADDRLP4 4
INDIRP4
ADDRLP4 4
INDIRP4
INDIRI4
CNSTI4 -8193
BANDI4
ASGNI4
line 1080
;1080:	}
LABELV $384
line 1081
;1081:}
LABELV $368
endproc SpectatorClientEndFrame 20 4
bss
align 4
LABELV $386
skip 816
export ClientEndFrame
code
proc ClientEndFrame 40 12
line 1093
;1082:
;1083:
;1084:/*
;1085:==============
;1086:ClientEndFrame
;1087:
;1088:Called at the end of each server frame for each connected client
;1089:A fast client will have multiple ClientThink for each ClientEdFrame,
;1090:while a slow client may have multiple ClientEndFrame between ClientThink.
;1091:==============
;1092:*/
;1093:void ClientEndFrame( gentity_t *ent ) {
line 1100
;1094:	static gentity_t sent;
;1095:	int			i;
;1096:	gclient_t	*client;
;1097:	// unlagged
;1098:	int			frames;
;1099:
;1100:	if ( !ent->client )
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CVPU4 4
CNSTU4 0
NEU4 $387
line 1101
;1101:		return;
ADDRGP4 $385
JUMPV
LABELV $387
line 1103
;1102:
;1103:	ent->r.svFlags &= ~svf_self_portal2;
ADDRLP4 12
ADDRFP4 0
INDIRP4
CNSTI4 424
ADDP4
ASGNP4
ADDRLP4 12
INDIRP4
ADDRLP4 12
INDIRP4
INDIRI4
ADDRGP4 svf_self_portal2
INDIRI4
BCOMI4
BANDI4
ASGNI4
line 1105
;1104:
;1105:	if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
CNSTI4 636
ADDP4
INDIRI4
CNSTI4 3
NEI4 $389
line 1106
;1106:		SpectatorClientEndFrame( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 SpectatorClientEndFrame
CALLV
pop
line 1107
;1107:		return;
ADDRGP4 $385
JUMPV
LABELV $389
line 1110
;1108:	}
;1109:
;1110:	client = ent->client;
ADDRLP4 0
ADDRFP4 0
INDIRP4
CNSTI4 516
ADDP4
INDIRP4
ASGNP4
line 1113
;1111:
;1112:	// turn off any expired powerups
;1113:	for ( i = 0 ; i < MAX_POWERUPS ; i++ ) {
ADDRLP4 4
CNSTI4 0
ASGNI4
LABELV $391
line 1114
;1114:		if ( client->ps.powerups[ i ] < client->pers.cmd.serverTime ) {
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
INDIRP4
CNSTI4 312
ADDP4
ADDP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 472
ADDP4
INDIRI4
GEI4 $395
line 1115
;1115:			client->ps.powerups[ i ] = 0;
ADDRLP4 4
INDIRI4
CNSTI4 2
LSHI4
ADDRLP4 0
INDIRP4
CNSTI4 312
ADDP4
ADDP4
CNSTI4 0
ASGNI4
line 1116
;1116:		}
LABELV $395
line 1117
;1117:	}
LABELV $392
line 1113
ADDRLP4 4
ADDRLP4 4
INDIRI4
CNSTI4 1
ADDI4
ASGNI4
ADDRLP4 4
INDIRI4
CNSTI4 16
LTI4 $391
line 1150
;1118:
;1119:#ifdef MISSIONPACK
;1120:	// set powerup for player animation
;1121:	if( bg_itemlist[ent->client->ps.stats[STAT_PERSISTANT_POWERUP]].giTag == PW_GUARD ) {
;1122:		ent->client->ps.powerups[PW_GUARD] = level.time;
;1123:	}
;1124:	if( bg_itemlist[ent->client->ps.stats[STAT_PERSISTANT_POWERUP]].giTag == PW_SCOUT ) {
;1125:		ent->client->ps.powerups[PW_SCOUT] = level.time;
;1126:	}
;1127:	if( bg_itemlist[ent->client->ps.stats[STAT_PERSISTANT_POWERUP]].giTag == PW_DOUBLER ) {
;1128:		ent->client->ps.powerups[PW_DOUBLER] = level.time;
;1129:	}
;1130:	if( bg_itemlist[ent->client->ps.stats[STAT_PERSISTANT_POWERUP]].giTag == PW_AMMOREGEN ) {
;1131:		ent->client->ps.powerups[PW_AMMOREGEN] = level.time;
;1132:	}
;1133:	if ( ent->client->invulnerabilityTime > level.time ) {
;1134:		ent->client->ps.powerups[PW_INVULNERABILITY] = level.time;
;1135:	}
;1136:#endif
;1137:
;1138:	// save network bandwidth
;1139:#if 0
;1140:	if ( !g_synchronousClients->integer && ent->client->ps.pm_type == PM_NORMAL ) {
;1141:		// FIXME: this must change eventually for non-sync demo recording
;1142:		VectorClear( ent->client->ps.viewangles );
;1143:	}
;1144:#endif
;1145:
;1146:	//
;1147:	// If the end of unit layout is displayed, don't give
;1148:	// the player any normal movement attributes
;1149:	//
;1150:	if ( level.intermissiontime ) {
ADDRGP4 level+7604
INDIRI4
CNSTI4 0
EQI4 $397
line 1151
;1151:		client->ps.commandTime = client->pers.cmd.serverTime;
ADDRLP4 0
INDIRP4
ADDRLP4 0
INDIRP4
CNSTI4 472
ADDP4
INDIRI4
ASGNI4
line 1152
;1152:		return;
ADDRGP4 $385
JUMPV
LABELV $397
line 1156
;1153:	}
;1154:
;1155:	// burn from lava, etc
;1156:	P_WorldEffects (ent);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 P_WorldEffects
CALLV
pop
line 1159
;1157:
;1158:	// apply all the damage taken this frame
;1159:	P_DamageFeedback (ent);
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 P_DamageFeedback
CALLV
pop
line 1161
;1160:
;1161:	client->ps.stats[STAT_HEALTH] = ent->health;	// FIXME: get rid of ent->health...
ADDRLP4 0
INDIRP4
CNSTI4 184
ADDP4
ADDRFP4 0
INDIRP4
CNSTI4 732
ADDP4
INDIRI4
ASGNI4
line 1163
;1162:
;1163:	G_SetClientSound( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 G_SetClientSound
CALLV
pop
line 1166
;1164:
;1165:	// set the latest info
;1166:	BG_PlayerStateToEntityState( &client->ps, &ent->s, qtrue );
ADDRLP4 0
INDIRP4
ARGP4
ADDRFP4 0
INDIRP4
ARGP4
CNSTI4 1
ARGI4
ADDRGP4 BG_PlayerStateToEntityState
CALLV
pop
line 1168
;1167:
;1168:	SendPendingPredictableEvents( &client->ps );
ADDRLP4 0
INDIRP4
ARGP4
ADDRGP4 SendPendingPredictableEvents
CALLV
pop
line 1170
;1169:
;1170:	client->ps.eFlags &= ~EF_CONNECTION;
ADDRLP4 16
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 16
INDIRP4
ADDRLP4 16
INDIRP4
INDIRI4
CNSTI4 -8193
BANDI4
ASGNI4
line 1171
;1171:	ent->s.eFlags &= ~EF_CONNECTION;
ADDRLP4 20
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
ASGNP4
ADDRLP4 20
INDIRP4
ADDRLP4 20
INDIRP4
INDIRI4
CNSTI4 -8193
BANDI4
ASGNI4
line 1173
;1172:
;1173:	frames = level.framenum - client->lastUpdateFrame - 1;
ADDRLP4 8
ADDRGP4 level+28
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 1564
ADDP4
INDIRI4
SUBI4
CNSTI4 1
SUBI4
ASGNI4
line 1176
;1174:
;1175:	// PVS prediction
;1176:	if ( g_predictPVS.integer && svf_self_portal2 ) {
ADDRGP4 g_predictPVS+12
INDIRI4
CNSTI4 0
EQI4 $401
ADDRGP4 svf_self_portal2
INDIRI4
CNSTI4 0
EQI4 $401
line 1178
;1177:		int lag;
;1178:		sent.s = ent->s;
ADDRGP4 $386
ADDRFP4 0
INDIRP4
INDIRB
ASGNB 208
line 1179
;1179:		sent.r = ent->r;
ADDRGP4 $386+208
ADDRFP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRB
ASGNB 308
line 1180
;1180:		sent.clipmask = ent->clipmask;
ADDRGP4 $386+572
ADDRFP4 0
INDIRP4
CNSTI4 572
ADDP4
INDIRI4
ASGNI4
line 1183
;1181:		//VectorCopy( client->ps.origin, sent.s.pos.trBase );
;1182:		//VectorCopy( client->ps.velocity, sent.s.pos.trDelta );
;1183:		lag = level.time - client->ps.commandTime + 50;
ADDRLP4 24
ADDRGP4 level+32
INDIRI4
ADDRLP4 0
INDIRP4
INDIRI4
SUBI4
CNSTI4 50
ADDI4
ASGNI4
line 1184
;1184:		if ( lag > 500 )
ADDRLP4 24
INDIRI4
CNSTI4 500
LEI4 $407
line 1185
;1185:			lag = 500;
ADDRLP4 24
CNSTI4 500
ASGNI4
LABELV $407
line 1186
;1186:		G_PredictPlayerMove( &sent, (float)lag * 0.001f );
ADDRGP4 $386
ARGP4
ADDRLP4 24
INDIRI4
CVIF4 4
CNSTF4 981668463
MULF4
ARGF4
ADDRGP4 G_PredictPlayerMove
CALLV
pop
line 1187
;1187:		VectorCopy( sent.s.pos.trBase, ent->r.unused.origin2 );
ADDRFP4 0
INDIRP4
CNSTI4 312
ADDP4
ADDRGP4 $386+12+12
INDIRB
ASGNB 12
line 1188
;1188:		ent->r.unused.origin2[2] += client->ps.viewheight;
ADDRLP4 28
ADDRFP4 0
INDIRP4
CNSTI4 320
ADDP4
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRF4
ADDRLP4 0
INDIRP4
CNSTI4 164
ADDP4
INDIRI4
CVIF4 4
ADDF4
ASGNF4
line 1189
;1189:		ent->r.svFlags |= svf_self_portal2;
ADDRLP4 32
ADDRFP4 0
INDIRP4
CNSTI4 424
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
ADDRGP4 svf_self_portal2
INDIRI4
BORI4
ASGNI4
line 1190
;1190:	}
LABELV $401
line 1192
;1191:
;1192:	if ( frames > 2 ) {
ADDRLP4 8
INDIRI4
CNSTI4 2
LEI4 $411
line 1194
;1193:		// limit lagged player prediction to 2 server frames
;1194:		frames = 2;
ADDRLP4 8
CNSTI4 2
ASGNI4
line 1196
;1195:		// and add the EF_CONNECTION flag if we haven't gotten commands recently
;1196:		if ( !( ent->r.svFlags & SVF_BOT ) ) {
ADDRFP4 0
INDIRP4
CNSTI4 424
ADDP4
INDIRI4
CNSTI4 8
BANDI4
CNSTI4 0
NEI4 $413
line 1197
;1197:			client->ps.eFlags |= EF_CONNECTION;
ADDRLP4 24
ADDRLP4 0
INDIRP4
CNSTI4 104
ADDP4
ASGNP4
ADDRLP4 24
INDIRP4
ADDRLP4 24
INDIRP4
INDIRI4
CNSTI4 8192
BORI4
ASGNI4
line 1198
;1198:			ent->s.eFlags |= EF_CONNECTION;
ADDRLP4 28
ADDRFP4 0
INDIRP4
CNSTI4 8
ADDP4
ASGNP4
ADDRLP4 28
INDIRP4
ADDRLP4 28
INDIRP4
INDIRI4
CNSTI4 8192
BORI4
ASGNI4
line 1199
;1199:		}
LABELV $413
line 1200
;1200:	}
LABELV $411
line 1202
;1201:
;1202:	if ( frames > 0 && g_smoothClients.integer ) {
ADDRLP4 8
INDIRI4
CNSTI4 0
LEI4 $415
ADDRGP4 g_smoothClients+12
INDIRI4
CNSTI4 0
EQI4 $415
line 1203
;1203:		G_PredictPlayerMove( ent, (float)frames / sv_fps.value );
ADDRFP4 0
INDIRP4
ARGP4
ADDRLP4 8
INDIRI4
CVIF4 4
ADDRGP4 sv_fps+8
INDIRF4
DIVF4
ARGF4
ADDRGP4 G_PredictPlayerMove
CALLV
pop
line 1204
;1204:		SnapVector( ent->s.pos.trBase );
ADDRLP4 24
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 24
INDIRP4
CNSTI4 24
ADDP4
ADDRLP4 24
INDIRP4
CNSTI4 24
ADDP4
INDIRF4
CVFI4 4
CVIF4 4
ASGNF4
ADDRLP4 28
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 28
INDIRP4
CNSTI4 28
ADDP4
ADDRLP4 28
INDIRP4
CNSTI4 28
ADDP4
INDIRF4
CVFI4 4
CVIF4 4
ASGNF4
ADDRLP4 32
ADDRFP4 0
INDIRP4
ASGNP4
ADDRLP4 32
INDIRP4
CNSTI4 32
ADDP4
ADDRLP4 32
INDIRP4
CNSTI4 32
ADDP4
INDIRF4
CVFI4 4
CVIF4 4
ASGNF4
line 1205
;1205:	}
LABELV $415
line 1208
;1206:
;1207:	// unlagged
;1208:	G_StoreHistory( ent );
ADDRFP4 0
INDIRP4
ARGP4
ADDRGP4 G_StoreHistory
CALLV
pop
line 1211
;1209:
;1210:	// hitsounds
;1211:	if ( client->damage.enemy && client->damage.amount ) {
ADDRLP4 0
INDIRP4
CNSTI4 1572
ADDP4
INDIRI4
CNSTI4 0
EQI4 $419
ADDRLP4 0
INDIRP4
CNSTI4 1576
ADDP4
INDIRI4
CNSTI4 0
EQI4 $419
line 1212
;1212:		client->ps.persistant[PERS_HITS] += client->damage.enemy;
ADDRLP4 32
ADDRLP4 0
INDIRP4
CNSTI4 252
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 1572
ADDP4
INDIRI4
ADDI4
ASGNI4
line 1213
;1213:		client->damage.enemy = 0;
ADDRLP4 0
INDIRP4
CNSTI4 1572
ADDP4
CNSTI4 0
ASGNI4
line 1215
;1214:		// scale damage by max.health
;1215:		i = client->damage.amount * 100 / client->ps.stats[STAT_MAX_HEALTH];
ADDRLP4 4
ADDRLP4 0
INDIRP4
CNSTI4 1576
ADDP4
INDIRI4
CNSTI4 100
MULI4
ADDRLP4 0
INDIRP4
CNSTI4 208
ADDP4
INDIRI4
DIVI4
ASGNI4
line 1217
;1216:		// avoid high-byte setup
;1217:		if ( i > 255 )
ADDRLP4 4
INDIRI4
CNSTI4 255
LEI4 $421
line 1218
;1218:			i = 255;
ADDRLP4 4
CNSTI4 255
ASGNI4
LABELV $421
line 1219
;1219:		client->ps.persistant[PERS_ATTACKEE_ARMOR] = i;
ADDRLP4 0
INDIRP4
CNSTI4 276
ADDP4
ADDRLP4 4
INDIRI4
ASGNI4
line 1220
;1220:		client->damage.amount = 0;
ADDRLP4 0
INDIRP4
CNSTI4 1576
ADDP4
CNSTI4 0
ASGNI4
line 1221
;1221:	} else if ( client->damage.team ) {
ADDRGP4 $420
JUMPV
LABELV $419
ADDRLP4 0
INDIRP4
CNSTI4 1568
ADDP4
INDIRI4
CNSTI4 0
EQI4 $423
line 1222
;1222:		client->ps.persistant[PERS_HITS] -= client->damage.team;
ADDRLP4 32
ADDRLP4 0
INDIRP4
CNSTI4 252
ADDP4
ASGNP4
ADDRLP4 32
INDIRP4
ADDRLP4 32
INDIRP4
INDIRI4
ADDRLP4 0
INDIRP4
CNSTI4 1568
ADDP4
INDIRI4
SUBI4
ASGNI4
line 1223
;1223:		client->damage.team = 0;
ADDRLP4 0
INDIRP4
CNSTI4 1568
ADDP4
CNSTI4 0
ASGNI4
line 1224
;1224:	}
LABELV $423
LABELV $420
line 1229
;1225:
;1226:	// set the bit for the reachability area the client is currently in
;1227://	i = trap_AAS_PointReachabilityAreaIndex( ent->client->ps.origin );
;1228://	ent->client->areabits[i >> 3] |= 1 << (i & 7);
;1229:}
LABELV $385
endproc ClientEndFrame 40 12
import BotTestSolid
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
LABELV $283
byte 1 51
byte 1 51
byte 1 0
align 1
LABELV $279
byte 1 56
byte 1 0
align 1
LABELV $278
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
LABELV $200
byte 1 99
byte 1 112
byte 1 32
byte 1 34
byte 1 84
byte 1 101
byte 1 110
byte 1 32
byte 1 115
byte 1 101
byte 1 99
byte 1 111
byte 1 110
byte 1 100
byte 1 115
byte 1 32
byte 1 117
byte 1 110
byte 1 116
byte 1 105
byte 1 108
byte 1 32
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
byte 1 32
byte 1 100
byte 1 114
byte 1 111
byte 1 112
byte 1 33
byte 1 10
byte 1 34
byte 1 0
align 1
LABELV $196
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

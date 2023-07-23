LoROM

;//[2019PHOSPHOTiDYL][Xx:Yy:Zz END TIME]
;==============================================================================================================================;
;------------------------------------------------------------------------------------------------------------------------------;
;Originally $8BFF80
!0000	= $8BF770	;//[$0080 bytez]
;--------------------------------------------------------------;
;//[HOUR=0DEC+0DEE/MINUTE=0DF0+0DF2/SECOND=0DF8+0DFA]
ORG $8BF064 : LDA #$0094			;//[X]
ORG $8BF073 : LDA #$009C			;//[x]
ORG $8BF07C : LDA #$00A4			;//[:]
ORG $8BF08B : LDA #$00AC			;//[Y]
ORG $8BF09A : LDA #$00B4			;//[y]
ORG $8BF416 : JSR EndingTime			;//[STA $0DF2]
ORG $8BF41F : JMP DrawTime00			;//[JSR $938A]
ORG $8BF425 : LDY #$EF0F			;//[LDY #$EF09]
ORG $8BF42E : LDY #$EF15 : JMP DrawTime01	;//[LDY #$EF0F : JSR $938A]
ORG $8BF437 : LDY #EndTimeS00			;//[LDY #$EF15]
ORG $8BF440 : LDY #EndTimeS01 : JMP DrawTime02	;//[LDY #$EF1B : JSR $938A]
ORG $8BF71B : JSL SuitCheck			;//[SEP #$20 : STZ $69]
;--------------------------------------------------------------;
ORG !0000	;//[$0080 bytez][Xx:Yy:Zz]
DrawTime00:
	JSR $938A : LDY #$EF09 : JSR $938A : PLY : RTS
DrawTime01:
	JSR $938A : LDY #$EF1B : JSR $938A : PLY : RTS
DrawTime02:
	JSR $938A : LDY #EndTimeS02 : JSR $938A : PLY : RTS

EndTimeS00:
	dw ETS00,$F3B9,$ECD1
EndTimeS01:
	dw ETS01,$F3B9,$EC81
EndTimeS02:
	dw ETS02,$F3B9,$EC81

ETS00:
	LDA #$00BC : STA $1A7D,y : JMP $F051	;//[:]
ETS01:
	LDA $0DF8 : JSR $F0A3 : LDA #$00C4 : STA $1A7D,y : JMP $F051	;//[Z]
ETS02:
	LDA $0DFA : JSR $F0A3 : LDA #$00CC : STA $1A7D,y : JMP $F051	;//[z]

EndingTime:
	STA $0DF2 : LDA $09DC : STA $4204 : SEP #$20 : LDA #$0A : STA $4206
	NOP : NOP : NOP : NOP : NOP : NOP : NOP
	REP #$20 : LDA $4214 : STA $0DF8 : LDA $4216 : STA $0DFA : RTS
;--------------------------------------------------------------;
;//[CLEAR TIME xx:yy:zz]
ORG $8CB49B : dw $0002	;//[C]
	dw $01B0 : db $00 : dw $3132
	dw $01B0 : db $F8 : dw $3122
ORG $8CB4A7 : dw $0004	;//[CL]
	dw $01B8 : db $00 : dw $313B
	dw $01B8 : db $F8 : dw $312B
	dw $01B0 : db $00 : dw $3132
	dw $01B0 : db $F8 : dw $3122
ORG $8CB4BD : dw $0006	;//[CLE]
	dw $01C0 : db $00 : dw $3134
	dw $01C0 : db $F8 : dw $3124
	dw $01B8 : db $00 : dw $313B
	dw $01B8 : db $F8 : dw $312B
	dw $01B0 : db $00 : dw $3132
	dw $01B0 : db $F8 : dw $3122
ORG $8CB4DD : dw $0008	;//[CLEA]
	dw $01C8 : db $00 : dw $3130
	dw $01C8 : db $F8 : dw $3120
	dw $01C0 : db $00 : dw $3134
	dw $01C0 : db $F8 : dw $3124
	dw $01B8 : db $00 : dw $313B
	dw $01B8 : db $F8 : dw $312B
	dw $01B0 : db $00 : dw $3132
	dw $01B0 : db $F8 : dw $3122
ORG $8CB507 : dw $000A	;//[CLEAR]
	dw $01D0 : db $00 : dw $3151
	dw $01D0 : db $F8 : dw $3141
	dw $01C8 : db $00 : dw $3130
	dw $01C8 : db $F8 : dw $3120
	dw $01C0 : db $00 : dw $3134
	dw $01C0 : db $F8 : dw $3124
	dw $01B8 : db $00 : dw $313B
	dw $01B8 : db $F8 : dw $312B
	dw $01B0 : db $00 : dw $3132
	dw $01B0 : db $F8 : dw $3122
ORG $8CB53B : dw $000C	;//[CLEAR T]
	dw $01E0 : db $00 : dw $3153
	dw $01E0 : db $F8 : dw $3143
	dw $01D0 : db $00 : dw $3151
	dw $01D0 : db $F8 : dw $3141
	dw $01C8 : db $00 : dw $3130
	dw $01C8 : db $F8 : dw $3120
	dw $01C0 : db $00 : dw $3134
	dw $01C0 : db $F8 : dw $3124
	dw $01B8 : db $00 : dw $313B
	dw $01B8 : db $F8 : dw $312B
	dw $01B0 : db $00 : dw $3132
	dw $01B0 : db $F8 : dw $3122
ORG $8CB579 : dw $000E	;//[CLEAR TI]
	dw $01E8 : db $00 : dw $3138
	dw $01E8 : db $F8 : dw $3128
	dw $01E0 : db $00 : dw $3153
	dw $01E0 : db $F8 : dw $3143
	dw $01D0 : db $00 : dw $3151
	dw $01D0 : db $F8 : dw $3141
	dw $01C8 : db $00 : dw $3130
	dw $01C8 : db $F8 : dw $3120
	dw $01C0 : db $00 : dw $3134
	dw $01C0 : db $F8 : dw $3124
	dw $01B8 : db $00 : dw $313B
	dw $01B8 : db $F8 : dw $312B
	dw $01B0 : db $00 : dw $3132
	dw $01B0 : db $F8 : dw $3122
ORG $8CB5C1 : dw $0010	;//[CLEAR TIM]
	dw $01F0 : db $00 : dw $313C
	dw $01F0 : db $F8 : dw $312C
	dw $01E8 : db $00 : dw $3138
	dw $01E8 : db $F8 : dw $3128
	dw $01E0 : db $00 : dw $3153
	dw $01E0 : db $F8 : dw $3143
	dw $01D0 : db $00 : dw $3151
	dw $01D0 : db $F8 : dw $3141
	dw $01C8 : db $00 : dw $3130
	dw $01C8 : db $F8 : dw $3120
	dw $01C0 : db $00 : dw $3134
	dw $01C0 : db $F8 : dw $3124
	dw $01B8 : db $00 : dw $313B
	dw $01B8 : db $F8 : dw $312B
	dw $01B0 : db $00 : dw $3132
	dw $01B0 : db $F8 : dw $3122
ORG $8CB613 : dw $0012	;//[CLEAR TIME]
	dw $01F8 : db $00 : dw $3134
	dw $01F8 : db $F8 : dw $3124
	dw $01F0 : db $00 : dw $313C
	dw $01F0 : db $F8 : dw $312C
	dw $01E8 : db $00 : dw $3138
	dw $01E8 : db $F8 : dw $3128
	dw $01E0 : db $00 : dw $3153
	dw $01E0 : db $F8 : dw $3143
	dw $01D0 : db $00 : dw $3151
	dw $01D0 : db $F8 : dw $3141
	dw $01C8 : db $00 : dw $3130
	dw $01C8 : db $F8 : dw $3120
	dw $01C0 : db $00 : dw $3134
	dw $01C0 : db $F8 : dw $3124
	dw $01B8 : db $00 : dw $313B
	dw $01B8 : db $F8 : dw $312B
	dw $01B0 : db $00 : dw $3132
	dw $01B0 : db $F8 : dw $3122
;------------------------------------------------------------------------------------------------------------------------------;
;==============================================================================================================================;
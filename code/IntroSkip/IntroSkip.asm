;-------------------------------------
; 	Introuction Sequence Skip
;	     by samsamcmoi
;	Disassembly by ShadowOne333
;-------------------------------------
lorom
; Intro Skip hijack
org $8BA367	; 0x05A367
	jsr IntroSkip	; JSR $F760

;-------------------------------------
; Freespace for SkipIntro : 5F760 - 5FAA4
;org $8BF760	; Originally 0x05F760
;-------------------------------------
; Changed to $8BFA00 for compatibility with Redux
org $8BFA00	; 0x05FA00
IntroSkip:
	lda $09E2
	beq +	; $03
	jmp l_8BF811
+
	ldx #$0010
-
	lda $1F51
	cmp.l l_8BF8C1,x	; DF $8BF8C1
	beq +	; $06
	dex 
	dex 
	bmi ++	; $1B
	bra -	; $F1
+
	stz $1F68
	ldx #$0000
-
	txa 
	cmp #$0032
	bpl +	; $0B
	lda #$3C29
	sta $7E3646,x
	inx 
	inx 
	bra -	; $EF
+
	bra l_8BF811	; $7E
++
	ldx #$000E
-
	lda $1F51
	cmp.l l_8BF8B3,x	; DF $8BF8B3
	beq +	; $06
	dex 
	dex 
	bmi l_8BF811	; $6E
	bra -	; $F1
+
	lda $1F68
	bne l_8BF815	; $6B

	ldx #$0000
-
	txa 
	cmp #$0032
	bpl +	; $0B
	lda #$3C29
	sta $7E3646,x
	inx 
	inx 
	bra -	; $EF
+
	lda $8F
	bit #$0040
	bne +	; $1E
	bit #$0080
	bne +	; $19
	bit #$8000
	bne +	; $14
	bit #$4000
	bne +	; $0F
	bit #$0010
	bne +	; $0A
	bit #$0020
	bne +	; $05
	bit #$1000
	beq l_8BF811	; $2E
+
	lda #$0020
	sta $1F68
--
	bra l_8BF852	; $4B
l_8BF7EB:
	ldx #$0004
-
	lda.l l_8BF88D,x
	sta $7EC022,x
	dex 
	dex 
	bmi +	; $02
	bra -	; $F2
+
	ldx #$0000
-
	txa 
	cmp #$0032
	bpl l_8BF811	; $0C
	lda.l l_8BF857,x
	sta $7E3646,X
	inx 
	inx 
	bra -	; $EE

l_8BF811:	; $F811
	lda $1B9F
	rts 
l_8BF815:
	rep #$30
	lda $1F68
	cmp #$0002
	bmi +	; $05
	dec $1F68
	bra --	; $C5
+
	lda $8F
	bit #$1000
	beq --	; $BE
	stz $1F68
	lda #$B72F
	sta $1F51
	bra l_8BF811	; $DB
l_8BF852:
	ldx $0330
	lda #$00C0
	sta $D0,x
	lda #l_8BF8D1
	sta $D2,x
	lda #$8B8B
	sta $D4,x
	lda #$5300
	sta $D5,x
	txa 
	clc 
	adc #$0007
	sta $0330
	bra l_8BF7EB	; $94
l_8BF857:	; "PRESS START TO SKIP INTRO" message
	dw $300F,$3011,$3004,$3012,$3012,$302F,$3012,$3013
	dw $3000,$3011,$3013,$302F,$3013,$300E,$302F,$3012
	dw $300A,$3008,$300F,$302F,$3008,$300D,$3013,$3011
	dw $300E,$3025,$302F
l_8BF88D:	; Palette data... ?
	dw $7FFF,$0000,$294A,$0000,$03E0,$6318,$0340,$3BE0
	dw $03E0,$6318,$0280,$2680,$03E0,$6318,$0200,$1580
	dw $03E0,$6318,$0160
l_8BF8B3:
	dw $A391,$AEB8,$AF6C,$B0F2,$B123,$B1DA,$A390
l_8BF8C1:
	dw $B250,$B35F,$B370,$B2D2,$B381,$B392,$B3F4,$B458
l_8BF8D1:
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00,$2D00

l_8BF991:
	lda $09A2
	bit #$0020
	bne +	; $0F
	bit #$0001
	bne ++	; $05
	ldx #$941E
	bra +++	; $08
++
	ldx #$953E
	bra +++	; $03
+
	ldx #$981E
+++
	lda #$9B00
	sta $13
	stx $12
	ldx #$001E
-
	lda [$12]	; A7 12
	sta $7EC040,X
	sta $7EC1C0,X
	dec $12
	dec $12
	dex 
	dex 
	bpl -	; $EE
	sep #$20
	stz $69
	rtl 

	ldy #$E7A5
	jsr l_8BFA46
	jsr l_8BFA61
	lda #l_8BF9DF	; $F9DF
	sta $1F51
	stz $0D9C
	rts 
l_8BF9DF:
	dec $1A49
	beq +	; $01
	rts
+
	ldy #$EEA5
	jsr l_8BFA46
	jsr l_8BFA61
	lda #l_8BF9F8	; F9F8
	sta $1F51
	stz $0D9C
	rts 
l_8BF9F8:
	dec $1A49
	beq +	; $01
	rts
+
	ldy #$F5A5
	jsr l_8BFA46
	jsr l_8BFA61
	lda #l_8BFA11	; $FA11
	sta $1F51
	stz $0D9C
	rts
l_8BFA11:
	dec $1A49
	beq +	; $01
	rts
+
	bra +	; $16
	jsr l_8BFA46
	jsr l_8BFA61
	lda #l_8BFA29	; $FA29
	sta $1F51
	stz $0D9C
	rts
l_8BFA29:
	dec $1A49
	beq +	; $01
	rts
+
	ldx #$0000
	lda #$004F
-
	sta $7E3000,x
	inx
	inx
	
	cpx #$06E0
	bmi -	; $F5
	lda #$007F
	jmp $E1DD
l_8BFA46:
	phb	; 8B
	pea $E400	; F4 00 E4
	; This could possibly be a cpx #$ABAB
	plb	; AB
	plb	; AB
l_8BFA4C:
	ldx #$0000
-
	lda $0000,y
	sta $7E3000,x
	inx 
	inx 
	iny 
	iny 
	cpx #$06E0
	bmi -	; $F0
	plb 
	rts
l_8BFA61:
	jsr $8806
	sep #$20
	lda #$01
	sta $69
	stz $6B
	stz $6F
	stz $72
	rep #$20

	lda #$01A0
	sta $1A49
	rts

l_8BFA79:
	dw $003C,$0000,$0008,$8862,$0008,$886E,$0008,$8884
	dw $0008,$88A4,$0008,$F450,$0008,$F47F,$0008,$F4B8
	dw $0008,$F4FB,$002D,$F548,$9CE1,$9438


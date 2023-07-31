;; Revamped Item Circles code for Super Metroid
;; Original code by Scyzer, rewrite by Sylandro
;; Modifications for compatibility with DC's Map patch by ShadowOne333

LoRom

;!Ball = #$000C	; Change if another sprite is desired
;!Circle = #$000C
;!Dot = #$000D
!Ball = $000C	; Change if another sprite is desired
!Circle = $000C
!Dot = #$000D


org $82C3B4 : DW $20B7 ; Circle sprite
org $82C3BB : DW $20AA ; Dot sprite
org $82B8AA : JSR CheckItemIcons

org $82FBC0
	EndItems: 
		PLA : PLY : PLX
		LDA $0000,X	; Moved
		RTS

	CheckItemIcons:
		PHX : PHY
		LDA $079F : ASL A : TAY : LDA ItemAreaTable,Y : TAX : PHX ;region
	-	LDA $0000,X : BMI EndItems
				LDA $0004,X : AND #$00FF : STA $04 : ASL #3 : SEC : SBC $B1 : STA $00	; X
				LDA $0005,X : AND #$00FF : STA $06 : ASL #3 : SEC : SBC $B3 : STA $02	; Y
				STX $0A
						LDA $04 : AND #$0020 : ASL #2 : STA $08
						LDA $04 : AND #$001F : LSR #3 : CLC : ADC $08 : STA $08
						LDA $06 : ASL #2 : CLC : ADC $08 : TAY
						LDA $04 : AND #$0007 : TAX
						SEP #$20 : LDA $07F7,Y : AND MapBitTable,X : REP #$20 : BNE +	; Sprite
							BRA +++
				+	LDX $0A
				LDA #$0E00 : STA $03
				LDA $0002,X : BMI +	; Item 2
					PHX : JSL $80818E : LDA $7ED870,X : PLX : BIT $05E7 : BEQ icon
			+	LDA $0000,X	; Item 1
					PHX : JSL $80818E : LDA $7ED870,X : PLX : BIT $05E7 : BEQ icon
						LDA !Dot : BRA ++
					icon:	LDA $0006,X	; Icon
				++	LDY $02 : LDX $00 : JSL $81891F
	+++	PLX : INX #8 : PHX : JMP -

	MapBitTable: 
		DB $80,$40,$20,$10,$08,$04,$02,$01

	ItemAreaTable: 
		DW CrateriaItems,BrinstarItems,NorfairItems,WreckedShipItems,MaridiaItems,TourianItems,CeresItems,DebugItems

	CrateriaItems:
		DW $0000,$FFFF : DB $21,$02 : DW !Circle
		DW $0001,$FFFF : DB $26,$06 : DW !Circle
		DW $0002,$FFFF : DB $27,$01 : DW !Circle
		DW $0003,$FFFF : DB $26,$03 : DW !Circle
		DW $0004,$FFFF : DB $24,$05 : DW !Circle
		DW $0005,$FFFF : DB $11,$03 : DW !Circle
		DW $0006,$FFFF : DB $14,$13 : DW !Circle
		DW $0007,$FFFF : DB $19,$07 : DW !Ball ;BOMBS
		DW $0008,$FFFF : DB $0C,$07 : DW !Circle
		DW $0009,$000A : DB $0B,$04 : DW !Circle
		DW $000B,$FFFF : DB $18,$0A : DW !Circle
		DW $000C,$FFFF : DB $10,$08 : DW !Circle
		;DW $00FC,$FFFF : DB $17,$08 : DW !Circle ; Extra Missile Tank for Project Base 0.7.3 (Missile Station)
		DW $FFFF

	BrinstarItems:
		DW $000D,$FFFF : DB $0C,$08 : DW !Circle
		DW $000E,$FFFF : DB $18,$0A : DW !Circle
		DW $000F,$FFFF : DB $0B,$05 : DW !Circle
		DW $0010,$FFFF : DB $0A,$04 : DW !Circle
		DW $0011,$FFFF : DB $0D,$05 : DW !Circle
		DW $0012,$0013 : DB $0E,$05 : DW !Circle
		DW $0015,$FFFF : DB $11,$08 : DW !Circle
		DW $0016,$FFFF : DB $11,$0B : DW !Circle
		DW $0017,$FFFF : DB $11,$0C : DW !Ball ;CHARGE BEAM
		DW $0018,$FFFF : DB $0F,$09 : DW !Circle
		DW $0019,$FFFF : DB $16,$0C : DW !Circle
		DW $001A,$FFFF : DB $19,$0B : DW !Ball ;MORPH BALL
		DW $001B,$FFFF : DB $17,$0B : DW !Circle
		DW $001C,$FFFF : DB $20,$0B : DW !Circle
		DW $001D,$FFFF : DB $1F,$0B : DW !Circle
		DW $001E,$FFFF : DB $06,$0B : DW !Circle
		DW $001F,$FFFF : DB $05,$0B : DW !Circle
		DW $0021,$FFFF : DB $08,$0E : DW !Circle
		DW $0022,$FFFF : DB $1C,$0C : DW !Circle
		DW $0023,$FFFF : DB $15,$09 : DW !Circle
		DW $0024,$0025 : DB $1D,$09 : DW !Circle
		DW $0026,$FFFF : DB $17,$10 : DW !Ball ;XRAY SCOPE
		DW $0027,$FFFF : DB $23,$09 : DW !Circle
		DW $0028,$FFFF : DB $23,$0C : DW !Circle
		DW $0029,$FFFF : DB $22,$0C : DW !Circle
		DW $002A,$FFFF : DB $26,$12 : DW !Ball ;SPAZER BEAM
		DW $002B,$FFFF : DB $2B,$14 : DW !Circle
		DW $002C,$FFFF : DB $2F,$13 : DW !Circle
		DW $0030,$FFFF : DB $39,$14 : DW !Ball ;VARIA SUIT
		;DW $00FF,$FFFF : DB $05,$05 : DW !Circle ; Extra Missile Tank for Project Base 0.7.3 (Missile Station)
		DW $FFFF

	NorfairItems:
		DW $0031,$FFFF : DB $10,$05 : DW !Circle
		DW $0032,$FFFF : DB $05,$03 : DW !Ball	; ICE BEAM
		DW $0033,$FFFF : DB $02,$05 : DW !Circle
		DW $0034,$FFFF : DB $13,$0B : DW !Circle
		DW $0035,$FFFF : DB $07,$07 : DW !Ball	; HIJUMP BOOTS	
		DW $0036,$FFFF : DB $0B,$07 : DW !Circle
		DW $0037,$FFFF : DB $08,$06 : DW !Circle
		DW $0038,$FFFF : DB $09,$06 : DW !Circle
		DW $0039,$FFFF : DB $09,$0B : DW !Circle
		DW $003A,$FFFF : DB $0E,$10 : DW !Circle
		DW $003B,$FFFF : DB $08,$10 : DW !Circle
		DW $003C,$FFFF : DB $03,$11 : DW !Ball	; GRAPPLING BEAM
		DW $003D,$003E : DB $12,$03 : DW !Circle
		DW $003F,$FFFF : DB $15,$03 : DW !Circle
		DW $0040,$FFFF : DB $17,$06 : DW !Circle
		DW $0041,$FFFF : DB $24,$03 : DW !Circle
		DW $0042,$FFFF : DB $25,$03 : DW !Ball	; SPEED BOOSTER
		DW $0043,$FFFF : DB $1A,$05 : DW !Circle
		DW $0044,$FFFF : DB $1D,$05 : DW !Ball	; WAVE BEAM
		DW $0046,$FFFF : DB $12,$10 : DW !Circle
		DW $0047,$FFFF : DB $13,$10 : DW !Circle
		DW $0049,$FFFF : DB $1C,$0B : DW !Circle
		DW $004A,$FFFF : DB $23,$06 : DW !Circle
		DW $004B,$FFFF : DB $25,$07 : DW !Circle
		DW $004C,$FFFF : DB $20,$0F : DW !Circle
		DW $004D,$FFFF : DB $1D,$06 : DW !Circle
		DW $004E,$FFFF : DB $16,$12 : DW !Circle
		DW $004F,$FFFF : DB $14,$11 : DW !Ball	; SCREW ATTACK
		DW $0050,$FFFF : DB $25,$0C : DW !Circle
		DW $FFFF

	WreckedShipItems:		
		DW $0080,$FFFF : DB $0C,$11 : DW !Circle
		DW $0081,$FFFF : DB $0F,$0C : DW !Circle
		DW $0082,$FFFF : DB $0D,$0E : DW !Circle
		DW $0083,$FFFF : DB $15,$0B : DW !Circle
		DW $0084,$FFFF : DB $12,$0E : DW !Circle
		DW $0085,$FFFF : DB $0F,$12 : DW !Circle
		DW $0086,$FFFF : DB $15,$12 : DW !Circle
		DW $0087,$FFFF : DB $0A,$0E : DW !Ball ;GRAVITY SUIT
		;DW $00FE,$FFFF : DB $0C,$14 : DW !Circle ; Extra Missile Tank for Project Base 0.7.3 (Missile Station)
		DW $FFFF

	MaridiaItems:
		DW $0088,$FFFF : DB $0A,$0D : DW !Circle
		DW $0089,$FFFF : DB $0B,$0C : DW !Circle
		DW $008A,$FFFF : DB $12,$0D : DW !Circle
		DW $008B,$FFFF : DB $13,$0E : DW !Circle
		DW $008C,$008D : DB $0C,$07 : DW !Circle ; Super Missile and Missile tank are in the same position
		DW $008E,$FFFF : DB $14,$07 : DW !Circle
		DW $008F,$FFFF : DB $1C,$03 : DW !Ball ;PLASMA BEAM
		DW $0090,$0091 : DB $14,$0F : DW !Circle ; Reserve and Missile Tank are in the same position
		DW $0092,$FFFF : DB $17,$0F : DW !Circle
		DW $0093,$FFFF : DB $18,$10 : DW !Circle
		DW $0094,$FFFF : DB $18,$0A : DW !Circle
		DW $0095,$FFFF : DB $19,$0A : DW !Circle
		DW $0096,$FFFF : DB $21,$11 : DW !Ball ;SPRING BALL
		DW $0097,$FFFF : DB $2A,$08 : DW !Circle
		DW $0098,$FFFF : DB $1D,$09 : DW !Circle
		DW $009A,$FFFF : DB $26,$0B : DW !Ball ;SPACE JUMP
		;DW $00FD,$FFFF : DB $11,$12 :DW !Circle ; Extra Missile Tank for Project Base 0.7.3 (Missile Station)
		DW $FFFF

	TourianItems:
		DW $FFFF

	CeresItems:
		DW $FFFF

	DebugItems:
		DW $FFFF

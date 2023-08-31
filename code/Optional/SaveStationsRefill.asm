lorom

; Save Stations will refill everything on Samus' arsenal, including Energy Tanks, Reserve Tanks, Missile Tanks, Super Missile Tanks and Power Bomb Tanks.

org $80FFDC	; 0x007FDC
	INX : BIT #$7617
	
org $84853E	; 0x02053E
	TYA
	STA $1D27,X
	JSR $B00E
	JSR l_A1F400
	JSR l_A1F40D
	ASL
	BNE l_848553
	JMP $8CF1
l_848553:
	LDA #$0001
	STA $7EDE1C,X
	PLA
	RTS

org $84AFED	; 0x022FED
	STX $3E : STA $49 : STA $08
	
org $A1F400	; 0x10F400
l_A1F400:
	STZ $0A6A
	LDA #$0001
	JSR $80914D
	INY #2
	RTL
l_A1F40D:
	PHX : PHY
	LDY #$0000
	LDA #$0005
	STA $12
	LDX #$09C2
	JSR l_F43E
	LDX #$09D4
	JSR l_F456
	LDA #$0002
	STA $12
	LDX #$09C6
	JSR l_F43E
	LDX #$09CA
	JSR l_F43E
	LDX #$09CE
	JSR l_F43E
	TYA : PLY : PLX
	RTL
l_F43E:
	LDA $0000,X
	CMP $0002,X
	BEQ $0F
	INY : CLC
	ADC $12
	CMP $0002,X
	BCC $03
	LDA $0002,X
	STA $0000,X
	RTS
l_F456:
	LDA $0002,X
	CMP $0000,X
	BEQ $0F
	INY : CLC
	ADC $12
	CMP $0000,X
	BCC $03
	LDA $0000,X
	STA $0002,X
	RTS


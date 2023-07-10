LoROM

org $828F68
	JSR EquipTime

;//[Free space ($8D bytes)]
org $82FB32
EquipTime:
	LDX #$0000
	LDA #$0CA3		;//this is whatever tile from 1B0000 you wana use for spacing
	STA $7E39F0		;//after hours
	STA $7E39F6		;//after minutes

	LDA $09E0		;//<game time hours>
	STA $4204	
	SEP #$20
	LDA #$0A
	STA $4206	
	PHA : PLA : PHA : PLA
	REP #$20
	LDA $4216	
	CLC
	ADC #$0804		;//magic number	
	STA $7E39EE		;//second digit
	LDA $4214	
	CLC
	ADC #$0804
	STA $7E39EC		;//first digit

	LDA $09DE		;//<game time minutes>
	STA $4204	
	SEP #$20
	LDA #$0A
	STA $4206	
	PHA : PLA : PHA : PLA
	REP #$20
	LDA $4216
	CLC
	ADC #$0804		;//magic number
	STA $7E39F4		;//second digit
	LDA $4214	
	CLC
	ADC #$0804		;//magic number
	STA $7E39F2		;//first digit			

	LDA $09DC		;//<game time seconds>
	STA $4204
	SEP #$20
	LDA #$0A
	STA $4206
	PHA : PLA : PHA : PLA
	REP #$20
	LDA $4216
	CLC
	ADC #$0804		;//magic number
	STA $7E39FA		;//second digit
	LDA $4214
	CLC
	ADC #$0804		;//magic number
	STA $7E39F8		;//first digit
	JSR $B20C		;//vanilla jump to suits equip screen
	RTS

;//[pointers to enabled items tilemap in ram (dw $yyxx)]
org $82C076
RAM_SUITSMISC_TILEMAP:
	dw $3AAA		;//variasuit
	dw $3AEA		;//gravitysuit
	dw $3BAA		;//morphroll
	dw $3BEA		;//morphbombs
	dw $3C2A		;//springball
	dw $3C6A		;//screwattack
RAM_BOOTS_TILEMAP:
	dw $3D2A		;//hijump
	dw $3D6A		;//spacejump
	dw $3DAA		;//speedbooster

;//[equip screen cursor positions x/y]
org $82C1B2
CURSOR_XY_SUITSMISC:
	dw $00CC,$0054		;//variasuit
	dw $00CC,$005C		;//gravitysuit
	dw $00CC,$0074		;//morphroll
	dw $00CC,$007C		;//morphbombs
	dw $00CC,$0084		;//springball
	dw $00CC,$008C		;//screwattack
CURSOR_XY_BOOTS:
	dw $00CC,$00A4		;//hijump
	dw $00CC,$00AC		;//spacejump
	dw $00CC,$00B4		;//speedbooster

;//[right side of equip screen]
org $B6E9A8
	dw $3941,$3942,$3942,$3943,$0C93,$0C94,$0CA4,$7943,$3942,$3942,$7941,$0000
org $B6E9E8
	dw $3940,$2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801,$7940,$0000
org $B6EA28
	dw $B941,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$F941,$0000
org $B6EA68
	dw $3941,$3942,$3942,$3943,$28F6,$28F7,$28F8,$7943,$3942,$3942,$7941,$0000
org $B6EAA8
	dw $3940,$0CFF,$0D00,$0D01,$0D02,$0D03,$0D04,$0D05,$0CD4,$0CD4,$7940,$0000
org $B6EAE8
	dw $7954,$0CFF,$0CD0,$0CD1,$0CD2,$0CD3,$0D03,$0D04,$0D05,$0CD4,$7940,$0000
org $B6EB28
	dw $B941,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$F941,$0000
org $B6EB68
	dw $3941,$3942,$3942,$3943,$29B0,$29B1,$29B2,$7943,$3942,$3942,$7941,$0000
org $B6EBA8
	dw $3940,$09FF,$0920,$0921,$0922,$0923,$0917,$0918,$090F,$091F,$7940,$0000
org $B6EBE8
	dw $7954,$08FF,$08D5,$08D6,$08D7,$08D4,$08D4,$08D4,$08D4,$08D4,$7940,$0800
org $B6EC28
	dw $3940,$08FF,$0910,$0911,$0912,$0913,$0914,$0915,$0916,$08D4,$7940,$0800
org $B6EC68
	dw $3940,$08FF,$08E0,$08E1,$08E2,$08E3,$08E4,$08E5,$08E6,$08D4,$7940,$0800
org $B6ECA8
	dw $B941,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$F941,$0800
org $B6ECE8
	dw $3941,$3942,$3942,$3943,$2CA0,$2CA1,$2CA2,$7943,$3942,$3942,$7941,$0800
org $B6ED28
	dw $3940,$0CFF,$0D30,$0D31,$0D32,$0D33,$0D34,$0D35,$0D36,$0CD4,$7940,$0000
org $B6ED68
	dw $3940,$0CFF,$0CF0,$0CF1,$0CF2,$0CF3,$0CF4,$0CF5,$0CD4,$0CD4,$7940,$0000
org $B6EDA8
	dw $F954,$0CFF,$0D24,$0D25,$0D26,$0D27,$0D28,$0D29,$0D2A,$0D2B,$7940,$0000
org $B6EDE8
	dw $B941,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$F941,$0000
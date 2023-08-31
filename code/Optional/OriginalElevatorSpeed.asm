lorom

; Restore the original elevator speed values from vanilla Super Metroid
org $A39581	; 0x119581
	LDA $0000
	STA $0799
	LDA $0F80,X
	CLC
	ADC #$8000
	STA $0F80,X
	LDA $0F7E,X
	ADC #$0001
	STA $0F7E,X

org $A395AF	; 0x1195AF
	SBC #$0001

org $A395D1	; 0x1195D1
	ADC #$0001

org $A395EB	; 0x1195EB
	SBC #$0001

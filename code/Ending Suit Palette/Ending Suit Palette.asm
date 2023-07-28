;ASM by Scyzer - ending suit palette matches equipped suit palette

LoROM
org $8BF71B : JSL SuitCheck

org $8BF900
SuitCheck: ;Assume mx:%00 
	LDA $09A2 : BIT #$0020 : BNE .G : BIT #$0001 : BNE .V
	.P	LDX #$941E : BRA .D
	.V	LDX #$953E : BRA .D
	.G	LDX #$981E
	.D	LDA #$9B00 : STA $13 : STX $12
	LDX #$001E
	-	LDA [$12] : STA $7EC040,X : STA $7EC1C0,X
		DEC $12 : DEC $12 : DEX #2 : BPL -
	SEP #$20 : STZ $69 : RTL
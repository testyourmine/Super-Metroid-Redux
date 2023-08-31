lorom

; Spazer + Plasma combination, so both beams can now be combined on the Pause Menu. This optional patch has some graphical glitches!

org $82AFD6	; 0x012FD6
	BEQ $01

org $8488C5	; 0x0208C5
	BEQ $0F

org $90AC96	; 0x082C96
	AND #$0F1F

org $90ACA6	; 0x082CA6
	LDA #$FF40,Y

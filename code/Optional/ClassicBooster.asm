lorom

; Modify the Speed Booster to have the same trigger values/timings as vanilla Super Metroid

org $908592	; 0x080592
	ADC #$0100
org $90D0CE	; 0x0850CE
	DEC $09C2
org $90D0FD	; 0x0850FD
	DEC $09C2
org $90D129	; 0x085129
	DEC $09C2
org $91F66F	; 0x08F66F
	JSL $91DE53	; Jump to routine 0x08DE53

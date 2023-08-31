lorom

; Restore the cooldown timings required for shooting from vanilla Super Metroid
org $90C254	; 0x084254
	db $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
	db $0F,$0F,$0C,$0F,$00,$00,$00,$00

org $90C283	; 0x084283
	db $19,$19,$19,$19,$19,$19,$19,$19
	db $19,$19,$19,$19

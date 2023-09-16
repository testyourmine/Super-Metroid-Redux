lorom

; Restore the cooldown timings required for shooting from vanilla Super Metroid

;----------------------------------------------------------;
;		Projectile cooldowns
;----------------------------------------------------------;
; Uncharged 
org $90C254	; 0x084254
	db $0F	; Power
	db $0F	; Wave
	db $0F	; Ice
	db $0F	; Ice+Wave
	db $0F	; Spazer
	db $0F	; Spazer+Wave
	db $0F	; Spazer+Ice
	db $0F	; Spazer+Wave+Ice
	db $0F	; Plasma
	db $0F	; Plasma+Wave
	db $0C	; Plasma+Ice
	db $0F	; Plasma+Wave+Ice
	db $00,$00,$00,$00	; Unused

;----------------------------------------------------------;
;		Beam Auto-fire cooldowns
; (Follows same order as above)
;----------------------------------------------------------;
org $90C283	; 0x084283
	db $19,$19,$19,$19,$19,$19,$19,$19
	db $19,$19,$19,$19

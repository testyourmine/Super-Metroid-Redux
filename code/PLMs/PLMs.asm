;----------------------------------------------------------;
; 			PLM populations
;----------------------------------------------------------;

;----------------------------------------------------------;
; Room $9AD9, state $9AE6: PLM
org $8F84AC	; 0x0784AC
	dw $EEE3	; $EF37

; Room $DC65, state $DC91: PLM
org $8FC827	; 0x07C827
	dw $08A4	; 90A4
	skip 12
	dw $08A6	; 90A6

;----------------------------------------------------------;
; 	Room headers, scroll data, door lists
;----------------------------------------------------------;

; Room $DC19: Header
org $8FDC26	; 0x07DC26
	db $01	; $14

; Room $DC19, state $DC45: Header
org $8FDC49	; 0x07DC49
	db $1E,$05	; $00,$00

; Room $DC65: Header
org $8FDC72	; 0x07DC72
	db $01	; $14

; Room $DCB1: Header
org $8FDCBE	; 0x07DCBE
	db $01	; $14

; Room $DCB1, state $DCC3: Header
org $8FDCDB	; 0x07DCDB
	dw $E9A0	; $C91E
	skip 4
	db $1E,$05	; $00,$00

; Room $DCB1, state $DCDD: Header
org $8FDCEF	; 0x07DCEF
	dw $E9A8	; $0000





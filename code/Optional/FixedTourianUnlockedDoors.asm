; Code by Nodever2, full code by ShadowOne333

; After applying this code, we need to manually modify the gray door at the entrance of the Super Metroid room with SMILE RF (room DC21 I think), and change its Main PLM from 0CA6 to 08A6.
; That way, the door will use the newly set flag (which is a reused Torizo boss flag since Tourian doesn't have one) to check whether or not to unlock the door.
; The changes have instead been done all through ASM for this file by ShadowOne333

lorom

org $A9F29A	; 0x14F29A
    JSR SetEvent
    
org $A9FC00	; 0x14FC00
SetEvent:
    LDA #$0004 : JSL $8081A6	; Set area Torizo bit
    LDA #$0007	; Vanilla code replaced by hijack
    RTS

; SMILE RF changes to Room DC21, modifying its main PLM from 0CA6 to 08A6
org $80FFDC	; 0x007FDC
	dw $5353,$ACAC

; Changes to two-byte pointers
org $8FC828	; 0x07C828
	db $08
org $8FC836	; 0x07C836
	db $08
org $8FDC26	; 0x07DC26
	db $01
org $8FDC49	; 0x07DC49
	dw $051E
org $8FDC72	; 0x07DC72
	db $01
org $8FDCBE	; 0x07DCBE
	db $01
org $8FDCDB	; 0x07DCDB
	dw l_E9A0,$D930,$0DCD,$051E
org $8FDCEF	; 0x07DCEF
	dw l_E9A8	; $A8,$E9
org $8FE9A0	; 0x07E9A0
l_E9A0:
	LDA #$0001 : JSL $8081FA : RTS
l_E9A8:
	STZ $0F78 : STZ $0FB8 : RTS

; Other changes not yet known? There's a lot of modifications from 0x26DFDF - 0x026D8FB and 0x26D948 - 0x26DB57. Probably room data itself.
org $CDD7DF	; 0x26D7DF
org $CDD948	; 0x26D948


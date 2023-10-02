; Code by Nodever2, full code by ShadowOne333

; After applying this code, we need to manually modify the gray door at the entrance of the Super Metroid room with SMILE RF (room DC21 I think), and change its Main PLM from 0CA6 to 08A6.
; That way, the door will use the newly set flag (which is a reused Torizo boss flag since Tourian doesn't have one) to check whether or not to unlock the door.
; The changes have instead been done all through ASM for this file by ShadowOne333

;----------------------------------------------------------;
; Hijack Queue song 2 music track 
org $A9F29A	; 0x14F29A
    JSR SetEvent

; Free/Unused space
org $A9FC00	; 0x14FC00
SetEvent:
    LDA #$0004 : JSL $8081A6	; Set area Torizo bit
    LDA #$0007	; Vanilla code replaced by hijack
    RTS
    
;----------------------------------------------------------;
; SMILE RF changes to Rooms 
; Room $DC21, modifying its main PLM from 0CA6 to 08A6.
;----------------------------------------------------------;

; Room $DC65, State $DC91 PLM change
org $8FC823	; 0x07C823
	dw $C842 : db $1E,$06 : dw $08A4	; Originally dw $90A4
	dw $C848 : db $01,$06 : dw $0CA5
	dw $0000	; Room terminator

; Room $DCB1, State $DCDD PLM change
org $8FC836	; 0x07C836
	dw $C842 : db $3E,$06 : dw $08A6	; Originally dw $90A6
	dw $0000	; Room terminator

; Room $DC19 header change
org $8FDC19	; 0x07DC19
	db $05,$05,$13,$0F,$02,$01,$70,$A0,$00
	dw $DC5F,$E612 : db $01 : dw $DC45,$E5E6
	; Originally	db $14

; Room $DC19, State $DC45 header change
org $8FDC45	; 0x07DC45
	dl $CDD5EB
	db $0D,$1E,$05	; Originally db $0D,$00,$00

; Room $DC65 header change
org $8FDC65	; 0x07DC65
	db $06,$05,$11,$0F,$02,$01,$70,$A0,$00
	dw $DCAB,$E612 : db $01 : dw $DC91,$E5E6
	; Originally	db $14

; Room $DCB1 header change
org $8FDCB1	; 0x07DCB1
	db $07,$05,$0D,$0F,$04,$01,$70,$A0,$00
	dw $DCF7,$E612 : db $01 : dw $DCDD,$E5E6
	; Originally	db $14

; Room $DCB1, State $DCC3 header change
org $8FDCC3	; 0x07DCC3
	dl $CDD930
	db $0D,$00,$00
	dw $A074,$E26E,$90EC,$C1C1,$DCFB,$0000,$0000,$C831,$E41E
	dw l_E9A0	; Originally dw $C91E

; Room $DCB1, State $DCDD header change
org $8FDCDD	; 0x07DCDD
	dl $CDD930
	db $0D,$1E,$05	; Originally db $0D,$00,$00
	dw $A074,$E26E,$90EC,$C1C1,$DCFB,$0000,$0000,$C831,$E41E
	dw l_E9A8	; Originally dw $C91E

; Free/Unused space
org $8FE9A0	; 0x07E9A0
; Jump to Mark Event [A]
l_E9A0:
	LDA #$0001 : JSL $8081FA : RTS
l_E9A8:
	STZ $0F78 : STZ $0FB8 : RTS

; Other changes not yet known? There's a lot of modifications from 0x26DFDF - 0x026D8FB and 0x26D948 - 0x26DB57. Probably room data itself.
org $CDD7DF	; 0x26D7DF
org $CDD948	; 0x26D948


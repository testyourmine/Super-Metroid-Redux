;----------------------------------------------------------;
; 		Animation delay table
;----------------------------------------------------------;

; A4h: Facing right - landing from normal jump
; E6h: Facing right - landing from normal jump - firing
org $91B22D	; 0x08B22D
	db $0A,$0A,$F8,$01

; A5h: Facing left  - landing from normal jump
; E7h: Facing left  - landing from normal jump - firing
	db $0A,$0A,$F8,$02

; A6h: Facing right - landing from spin jump
	db $03,$0A,$0A,$F8,$01

; A7h: Facing left  - landing from spin jump
	db $03,$0A,$0A,$F8,$02


org $91B298	; 0x08B298
; 1: Facing right - normal
; 2: Facing left  - normal
	db $30,$17,$10,$06,$F6
	db $04,$08,$0C,$10,$FE,$04

; 27h: Facing right - crouching
; 28h: Facing left  - crouching
	db $30,$17,$10,$06,$F6
	db $04,$08,$0C,$10,$FE,$04


org $91B326	; 0x08B326
; 4Dh: Facing right - normal jump - not aiming - not moving - gun not extended
; 4Eh: Facing left  - normal jump - not aiming - not moving - gun not extended
; C7h: Facing right - vertical shinespark windup
; C8h: Facing left  - vertical shinespark windup
	db $04,$0A,$0A,$0A,$0A
	db $50,$FE,$01
	skip 12

; 15h: Facing right - normal jump - aiming up
; 16h: Facing left  - normal jump - aiming up
	db $01
	db $10,$FE,$01

; 17h: Facing right - normal jump - aiming down
; 18h: Facing left  - normal jump - aiming down
	db $01
	db $10,$FE,$01

; 51h: Facing right - normal jump - not aiming - moving forward
; 52h: Facing left  - normal jump - not aiming - moving forward
	db $20
	db $03,$FE,$01

; 13h: Facing right - normal jump - not aiming - not moving - gun extended
; 14h: Facing left  - normal jump - not aiming - not moving - gun extended
; 69h: Facing right - normal jump - aiming up-right
; 6Ah: Facing left  - normal jump - aiming up-left
; 6Bh: Facing right - normal jump - aiming down-right
; 6Ch: Facing left  - normal jump - aiming down-left
	db $20
	db $10,$FE,$01

; 29h: Facing right - falling
; 2Ah: Facing left  - falling
	db $01,$01
	db $01,$FE,$01,$08
	db $10,$FE,$01


org $91B35C	; 0x08B35C
; 2Bh: Facing right - falling - aiming up
; 2Ch: Facing left  - falling - aiming up
	db $01
	db $50,$10,$FE


org $91B384	; 0x08B384
; 19h: Facing right - spin jump
; 1Ah: Facing left  - spin jump
	db $01
	db $02,$01,$02,$01,$02,$01,$02,$01,$FE


org $91B3BB	; 0x08B3BB
; 25h: Facing right - turning - standing
	db $02,$01,$01,$F8,$02
; 26h: Facing left  - turning - standing
	db $02,$01,$01,$F8,$01
; 2Fh: Facing right - turning - jumping
	db $01,$01,$01,$F8,$52
; 30h: Facing left  - turning - jumping
	db $01,$01,$01,$F8,$51
; 43h: Facing right - turning - crouching
	db $01,$01,$01,$F8,$28
; 44h: Facing left  - turning - crouching
	db $01,$01,$01,$F8,$27
; 87h: Facing right - turning - falling
	db $01,$01,$01,$F8,$2A
; 88h: Facing left - turning - falling
	db $01,$01,$01,$F8,$29
; 8Bh: Facing right - turning - standing - aiming up
	db $01,$01,$01,$F8,$04
; 8Ch: Facing left  - turning - standing - aiming up
	db $01,$01,$01,$F8,$03
; 8Dh: Facing right - turning - standing - aiming down-right
	db $01,$01,$01,$F8,$08
; 8Eh: Facing right - turning - standing - aiming down-left
	db $01,$01,$01,$F8,$07
; 8Fh: Facing right - turning - in air - aiming up
	db $01,$01,$01,$F8,$16
; 90h: Facing left - turning - in air - aiming up
	db $01,$01,$01,$F8,$15
; 91h: Facing right - turning - in air - aiming down/down-right
	db $01,$01,$01,$F8,$18
; 92h: Facing right - turning - in air - aiming down/down-left
	db $01,$01,$01,$F8,$17
; 93h: Facing right - turning - falling - aiming up
	db $01,$01,$01,$F8,$2C
; 94h: Facing left  - turning - falling - aiming up
	db $01,$01,$01,$F8,$2B
; 95h: Facing right - turning - falling - aiming down/down-right
	db $01,$01,$01,$F8,$2E
; 96h: Facing left  - turning - falling - aiming down/down-left
	db $01,$01,$01,$F8,$2D
; 97h: Facing right - turning - crouching - aiming up
	db $01,$01,$01,$F8,$86
; 98h: Facing left - turning - crouching - aiming up
	db $01,$01,$01,$F8,$85
; 99h: Facing right - turning - crouching - aiming down/down-righ
	db $01,$01,$01,$F8,$74
; 9Ah: Facing left  - turning - crouching - aiming down/down-left
	db $01,$01,$01,$F8,$73
; 9Ch: Facing right - turning - standing - aiming up-right
	db $01,$01,$01,$F8,$06
; 9Dh: Facing left  - turning - standing - aiming up-left
	db $01,$01,$01,$F8,$05
; 9Eh: Facing right - turning - in air - aiming up-right
	db $01,$01,$01,$F8,$6A
; 9Fh: Facing left  - turning - in air - aiming up-left
	db $01,$01,$01,$F8,$69
; A0h: Facing right - turning - falling - aiming up-right
	db $01,$01,$01,$F8,$6E
; A1h: Facing left  - turning - falling - aiming up-left
	db $01,$01,$01,$F8,$6D
; A2h: Facing right - turning - crouching - aiming up-right
	db $01,$01,$01,$F8,$72
; A3h: Facing left  - turning - crouching - aiming up-left
	db $01,$01,$01,$F8,$71
; BFh: Facing right - moonwalking - turn/jump left
	db $01,$01,$01,$F8,$1A
; C0h: Facing left  - moonwalking - turn/jump right
	db $01,$01,$01,$F8,$19
; C1h: Facing right - moonwalking - turn/jump left  - aiming up-right
	db $01,$01,$01,$F8,$1A
; C2h: Facing left  - moonwalking - turn/jump right - aiming up-left
	db $01,$01,$01,$F8,$19
; C3h: Facing right - moonwalking - turn/jump left  - aiming down-right
	db $01,$01,$01,$F8,$1A
; C4h: Facing left  - moonwalking - turn/jump right - aiming down-left
	db $01,$01,$01,$F8,$19
; C6h: Unused
	db $01,$01,$01,$FD,$BA


org $91B491	; 0x08B491
; 83h: Facing right - wall jump
; 84h: Facing left  - wall jump
	db $05,$05,$FB
	db $01,$02,$01,$02,$01,$02,$01,$02,$FE,$08	; Normal
	db $01,$01,$01,$01,$01,$01,$01,$01,$FE,$08	; Space Jump


;----------------------------------------------------------;
;		Pose Definitions
;----------------------------------------------------------;

org $91BA11	;  0x08BA11
	db $08,$12,$FF,$FF,$00,$00,$07,$00 ; 7Dh: Facing right - morph ball - spring ball - falling
	db $04,$12,$FF,$FF,$00,$00,$07,$00 ; 7Eh: Facing left  - morph ball - spring ball - falling








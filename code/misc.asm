lorom

;Changes size of area maps
org $818131 : db $49,$47,$4B,$11,$41,$14,$07

; Change the default button mappings on new save file creation
org $81B324
	LDA.W #$0080
	STA.W $09B6	; Jump button 	= B
	LDA.W #$8000
	STA.W $09B4	; Run button 	= A
	LDA.W #$0040
	STA.W $09B8	; X-Ray scope 	= X
	LDA.W #$4000
	STA.W $09B2	; Shoot button 	= Y
	LDA.W #$2000
	STA.W $09BA	; Item Switch 	= Select
	LDA.W #$0010
	STA.W $09BC	; Aim button 	= R
	LDA.W #$0020
	STA.W $09BE	; Brandish	= L
	STZ.W $09DA	;\
	STZ.W $09DC	;|
	STZ.W $09DE	;} In-game timer = 0:0:0.0
	STZ.W $09E0	;/
	STZ.W $09E2	; Disable japanese text
	STZ.W $09EA	; Disable HUD auto-cancel
	LDA.W #$0001	;\
	STA.W $09E4	; $09E4 = 1, Enables Autorun by default (Moonwalk)

; Changes to Demo room data
org $828774
	dw $9D19,$8DAE,$0001,$02D0,$03A0,$007B,$002A,$021D,$8925,
	   $A3AE,$9096,$0000,$0200,$0000,$008B,$0048,$011B,$8924,
	   $9BC8,$8CD6,$0004,$0000,$0100,$005B,$FFCD,$013E,$8924,
	   $9E52,$8DEA,$0003,$0220,$01D0,$007B,$0016,$0080,$8924,
	   $A815,$92BE,$0000,$0600,$0200,$008B,$005A,$0100,$8924,
	   $A6A1,$A384,$0001,$0000,$0000,$008B,$FFB8,$023D,$891A,
	   $FFFF
					   
	dw $A0D2,$8E0E,$0006,$0110,$0000,$006B,$0009,$017F,$8924,
	   $A253,$8F0A,$0001,$0000,$0400,$008B,$FFDC,$0143,$8924,
	   $91F8,$896A,$0000,$0220,$0400,$00BB,$001F,$017C,$8924,
	   $ACB3,$97CE,$0000,$0000,$0100,$008B,$FFA7,$0297,$8924,
	   $948C,$8ADE,$0000,$0200,$0000,$008B,$0048,$02C5,$8924,
	   $93FE,$8AEA,$0001,$0000,$0400,$008B,$FFAC,$019E,$8924,
	   $FFFF
					   
	dw $ADAD,$962A,$0000,$01E0,$0000,$008B,$FFF5,$01C0,$8924,
	   $91F8,$896A,$0001,$0300,$0400,$00B0,$0000,$00C7,$8925,
	   $A253,$8F0A,$0001,$0000,$01C0,$008B,$FFE8,$01AA,$8924,
	   $9D19,$8DAE,$0001,$0200,$0200,$008B,$FFB7,$03C0,$8924,
	   $A59F,$91B6,$0001,$0000,$0100,$008B,$FFBF,$013F,$892B,
	   $A66A,$91F2,$0001,$0000,$0000,$008B,$FFB1,$0197,$8932,
	   $FFFF
					   
	dw $91F8,$890A,$0000,$0600,$0200,$0080,$0030,$0100,$8925,
	   $A59F,$91B6,$0001,$0000,$0100,$008B,$FFB7,$04E1,$8924,
	   $91F8,$890A,$0000,$0600,$0200,$007B,$0020,$0185,$8925,
	   $DD58,$AAC8,$0002,$0300,$0000,$008B,$004C,$0174,$8924,
	   $91F8,$890A,$0000,$0600,$0200,$008B,$0004,$0200,$8925,
	   $FFFF

; Map scrolling modifications
org $829297 : DEC $B1
org $8292C6 : INC $B1
org $8292D3 : DEC $B3
org $8292E0 : INC $B3
; Map data changes (Brinstar)
org $8298D7 : db $40
org $8298EF : db $00

; Door transition change
; If door direction is ???? (down originally)
org $82E3F1 : CMP #$0003	; Originally CMP #$0002

; Game options - Controller settings - Change Default bindings
org $82F22C
	LDA.W #$0040
	STA.W $09B8 
	LDA.W #$0080
	STA.W $09B6 
	LDA.W #$8000
	STA.W $09B4 
	LDA.W #$4000
	STA.W $09B2 
	LDA.W #$2000
	STA.W $09BA 
	LDA.W #$0010
	STA.W $09BC 
	LDA.W #$0020
	STA.W $09BE 
; Free/Unused space
org $82FF8E
	db $11,$0C,$00,$97,$00,$FF,$FF,$2A
	db $08,$0C,$00,$98,$00,$FF,$FF,$1D
	db $09,$0C,$00,$9A,$00,$FF,$FF,$26
	db $0B,$0C,$00,$FF,$FF,$FF,$FF,$FF 
; Quicksand surface inside reaction constants
org $84B48B 
	;     ___________ Without Gravity Suit
	;    |	   ______ With Gravity Suit
	;	  |
	dw $0000,$0001	; Distance to move Samus vertically * 100h in air
	dw $0120,$0100	; Distance to move Samus vertically * 100h on ground
	dw $0600,$0600	; Samus max vertical velocity * 100h

; Setup - PLM $B727 (inside reaction, special air, BTS Maridia 85h. Sand falls - fast)
org $84B4B6
	LDA.W #$0000	;\
	STA.W $0B5A 	;|
	LDA.W #$0000	;} Extra Samus Y displacement = 1.C000h 
	STA.W $0B5C 	;/

; Instruction list - PLM $BAF4 (bomb torizo grey door)
org $84BA54 : dw $002A	; Originally $0028

; Instruction list - PLM $BAF4 (bomb torizo grey door)
org $84BABF
	dw $0001,$A6E3	; 0004,A6E3
	dw $0001,$A6EF	; 0004,A6EF
	dw $0001,$A6FB	; 0004,A6FB

; Instruction list - PLM $EF07 (varia suit)
; Pick up equipment 1 and display message box 7
org $84E2CA : dw $0000	; 0001

; Instruction list - PLM $EF0B (gravity suit)
; Pick up equipment 20h and display message box 1Ah
org $84E2FF : dW $0000	; 0020

; Instruction list - PLM $EF5B (varia suit, chozo orb)
; Pick up equipment 1 and display message box 7
org $84E727 : dw $0000	; 0001

; Instruction list - PLM $EF5F (gravity suit, chozo orb)
; Pick up equipment 20h and display message box 1Ah
org $84E769 : dw $0000	; 0020

; Instruction list - PLM $EFAF (varia suit, shot block)
; Pick up equipment 1 and display message box 7
org $84EC31 : dw $0000	; 0001

; Instruction list - PLM $EFB3 (gravity suit, shot block)
; Pick up equipment 20h and display message box 1Ah
org $84EC79 : dw $0000	; 0020

; Free/Unused space
org $84F030
	STA.W $09D4
	STA.W $09D6
	RTS        

;----------------------------------------------------------;
; 			X-ray changes
;----------------------------------------------------------;
; X-ray angular width RAM address load
org $888788 : LDA $0084
; X-ray angular width = A.0000h, changed to 1A.0000h
org $888799 : LDA #$001A
; X-ray angle -= 1
org $8887F7 : SBC #$0002
; X-ray angle += 1
org $888819 : ADC #$0002
; X-ray angle += 1
org $88884F : ADC #$0002
; X-ray angle -= 1
org $88887A : SBC #$0002

; Menu palettes changes
org $8EE446 : dw $7C00

org $8EE454 : dw $03E0,$03BF

org $8EE466 : dw $7C00

org $8EE46C : dw $0156,$001F

org $8EE474 : dw $03E0,$03BF

; Free/Unused space
; Used for Fixed Tourian Unlocked Doors code
org $8FE9A0 
	LDA #$0001
	JSL $8081FA
	RTS

org $8FE9A8 
	STZ $0F78
	STZ $0FB8
	RTS

; Handle speed booster animation delays
org $90854D : AND #$000F	; AND #$00FF
org $908592 : ADC #$0200	; ADC #$0100

; Samus jumping movement
org $909005 : AND #$0000	; AND #$00FF

; Samus movement
org $909774 : AND #$000F	; AND #$00FF

;----------------------------------------------------------;
;		Samus physics constants
;----------------------------------------------------------;
; Samus animation delay in water
org $909E93 : dw $0004	; 0003
; Space jump minimum Y velocity in air (2) and water (2) * 100h
org $909E97 : dw $0100 : dw $0800 : dw $0100 : dw $0800 : dw $000A
; Initial Y speed in water when jumping
org $909EBD : dw $0003
; Initial Y speed in lava/acid when jumping with Hi-Jump
org $909EC9 : dw $0004
; Initial Y speed in water when wall-jumping
org $909ED3 : dw $0002
; Initial Y speed in water when jumping with Hi-Jump
org $909EDF : dw $0002
; Initial Y speed in water and lava/acid during bomb jump
org $909EF7 : dw $0001,$0002
; X acceleration during diagonal bomb jump
org $909F27 : dw $6000,$0004
; Samus X speed table - normal, Max X speed for Spring ball in air
org $90A031 : dw $0002
; Samus X speed table - in water, X subacceleration when running
org $90A09B : dw $1000,$0001,$C000,$0001

org $90A0A7 : dw $C700

org $90A0B3 : dw $FF00

org $90A0BF : dw $0600

org $90A0EF : dw $F000

org $90A15B : dw $0800

org $90A167 : dw $F000

org $90A173 : dw $F000
; Samus movement - spin jumping, bypass LDA $195E
org $90A445 : NOP #3
;----------------------------------------------------------;
; HUD selection handler - nothing / power bombs, Branch charge
org $90B85F : CMP #$002C	; CMP #$003C
;----------------------------------------------------------;
;		Projectile cooldowns
;----------------------------------------------------------;
; Uncharged ($0F for all and $0C only for Plasma+Ice)
org $90C254 : db $0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C
; Missile and Super missiles
org $90C27B : db $08,$0A	; 0A,14
; Beam auto-fire cooldowns ($19)
org $90C283 : db $0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C
; Beam speed modifications
org $90C2D1
	dw $0400,$01AB,$0400,$01AB
	dw $0400,$01AB,$0400,$01AB
	dw $0400,$02AB,$0400,$02AB
	dw $0400,$02AB,$0400,$02AB
	dw $0600,$04AB,$0600,$04AB
	dw $0600,$04AB,$0600,$04AB

;----------------------------------------------------------;
; Projectile pre-instruction - ice SBA - main
org $90CF33 : LDA #$0060	; LDA #$0020
org $90CF70 : LDA #$0001	; LDA #$0002
; Shinespark
org $90D036 : LDA #$003A	; LDA #$001E
; Decrement Samus' health on Shinespark usage
org $90D0CE : LDA $09C2		; DEC $09C2, vertical
org $90D0FD : LDA $09C2		; DEC $09C2, diagonal
org $90D129 : LDA $09C2		; DEC $09C2, horizontal

; Shinespark timer
org $90D34C : JSR.W $FA7A ;Ending Shinespark

org $90FA7A : LDA.W #$0001 : STA.W $05D5
			  LDA.W $0AAF : RTS

; Nop added for leftover byte from the original LDA $0AC0
org $90D396 : BRA $27 : NOP

; Bomb spread data
org $90D8CF
	dw $0011,$0011,$0011,$0011,$0011 	; Timers
	dw $8200,$8480,$0000,$01F0,$0480	; X speeds
	dw $0001,$0002,$0000,$0001,$0002 	; Y subspeeds

; Release Samus from Draygon
org $90E2E9 : LDA #$0050	; LDA #$0001
org $90E2F1 : LDA #$004F	; LDA #$0002

;----------------------------------------------------------;
; Free/Unused space
; Is this probably used for ControlFreak+PB?
org $90F640
	CMP.W #$0003 : BEQ CODE_90F658
	CMP.W #$0002 : BEQ CODE_90F658
	CMP.W #$0006 : BEQ CODE_90F658
	CMP.W #$0014 : BEQ CODE_90F658
	JSL.L $9098BC

CODE_90F658: RTL

org $90F670
CODE_90F670:
	LDA.W $0A23      
	AND.W #$00FF     
	CMP.W #$0003     
	BEQ CODE_90F68E  
	CMP.W #$0002     
	BEQ CODE_90F68E  
	CMP.W #$0006     
	BEQ CODE_90F68E  
	CMP.W #$0014     
	BEQ CODE_90F68E  
	JSL.L $9098BC

CODE_90F68E: RTL

org $90F780 : STA.B $12 : STZ.B $14 : JSR.W $9440 : RTL
;----------------------------------------------------------;
; Handle beam charge palettes
org $91D755 : CMP #$002C

; Screw Attack / Speed boost palette handlers
org $91D9FD : BRA $EB
; NOP two STZ instructions to address $0B2C and $0B2E (Samus Y Speed)
org $91EFFA : NOP #6
; NOP the Cancel Speed boosting JSL to $91DE53
org $91F66F : NOP #4

; Samus Block collision reaction - spike block BTS 0 
org $948E92 : NOP #2	; BCC $3A

; Grapple beam function - release from swing.
; Speed if Samus speed < 0
org $9BCB97 : LDA #$0019	; LDA #$0051
; Else if Grapple swing Samus Speed >= 0
org $9BCB9F : LDA #$001A

; Handle enemy projectile collision with Samus
org $A09929 : LDA #$0008	; Change knockback timer from 5 to 8
; Normal touch AI
org $A0A57B : LDA #$0008	; Probably another knockback timer

; Gunship function - landing on Zebes - descending
org $A2A80F : CMP #$02EA	; If [enemy Y position] < 2EAh
;----------------------------------------------------------;
; Elevator AI - elevator status = 1, leaving room
org $A39581
; Elevator direction going down
	STZ.W $0799    
	LDA.W #$0008   
	CMP.W $0998    
	BNE CODE_A39596
	LDA.W $0F7E,X  
	CLC            
	ADC.W #$0001   
	STA.W $0F7E,X  

CODE_A39596:
	INC.W $0F7E,X  
	NOP            
; Elevator directon = up, enemy positions
org $A395AF : SBC #$0002
; Elevator AI - elevator status = 2, door transition
org $A395D1 : ADC #$0002
org $A395EB : SBC #$0002
;----------------------------------------------------------;
; Ceres Ridley cutscene change
org $A6AAD7 : BRA $10	; BNE $10


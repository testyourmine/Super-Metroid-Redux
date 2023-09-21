;----------------------------------------------------------;
;		Spazer + Plasma combination
;----------------------------------------------------------;
; Both beams can now be combined on the Pause Menu
; NOTE: This optional patch has some graphical glitches!
;----------------------------------------------------------;

; Equipment screen changes
org $82AFD6	; 0x012FD6
	BRA $01	; Remove the Spazer+Plasma check with a branch bypass
	NOP

; Bypass clearing Plasma is Spazer is set
org $8488C5	; 0x0208C5
	BRA $0F

; Update beam tiles and palette, Equipped beams
org $90AC96	; 0x082C96
	AND #$0F1F
org $90ACA5	; 0x082CA5
	LDA l_FF40,Y

; Load beam palette
org $90ACC8	; 0x082CC8
	AND #$0F0F
org $90ACD3	; 0x082CD3
	LDA l_FF20,Y
org $90AD07	; 0x082D07
	LDA l_FF20,Y	

; Initialize beam projectile velocities
org $90B1B3	; 0x0831B3
	LDA l_FEC0,Y
	STA $16
	BRA $05
	LDA l_FEC2,Y

; Fire uncharged beam
org $90B8DE	; 0x0838DE
	LDA l_FFC0,Y
; Projectile pre-instruction
org $90B962	; 0x083962
	LDA l_FF80,Y

; ; Fire charged beam
org $90B9D8	; 0x0839D8
	LDA l_FFE0,Y
; Projectile pre-instruction
org $90BA2C	; 0x083A2C
	LDA l_FFA0,Y

; Draw flare animation component
; Fire Hyper Beam
org $90BCF9	; 0x083CF9
	LDA #$9018	; Projectile type
; Sound queue
org $90BD04	; 0x083D04
	LDA l_FFE0,X

; Projectile reflection
org $90BE26	; 0x083E26
	LDA l_FFA0,Y


; Projectile cooldowns:
; Uncharged
org $90C260	; 0x084260
	db $0F,$0F,$0F,$0F
; Charged
org $90C270	; 0x084270
	db $1E,$1E,$1E,$1E
; Projectile sound FX
org $90C28F	; 0x08428F
	db $19,$19,$19,$19

; Beam palette pointer
org $90C3C9	; 0x0843C9
	dw $F800	; Originally $F800
; Beam palette
org $90C3E8	; 0x0843E8
	dw $A01D	; Originally $10AD

; Fire SBA, Related to Power Bombs
org $90CCD6	; 0x084CD6
	SBC l_FF00,X	; Originally SBC $CC21,X
; Execute code at FEA0
org $90CCE1	; 0x084CE1
	JSR (l_FEA0,X)	; Originally JSR ($CCF0,X)

; Unused/Free space
org $90FEA0	; 0x087EA0
l_FEA0:
	dw $CD18,$CD1A,$CD9B,$CD18,$CE14,$CD18,$CD18,$CD18
	dw $CE98,$CD18,$CD18,$CD18,$CD18,$CD18,$CD18,$CD18
l_FEC0:
	dw $0400
l_FEC2:
	dw $02AB,$0400,$02AB,$0400,$02AB,$0400,$02AB
	dw $0400,$02AB,$0400,$02AB,$0400,$02AB,$0400,$02AB
	dw $0400,$02AB,$0400,$02AB,$0400,$02AB,$0400,$02AB
	dw $0400,$02AB,$0400,$02AB,$0400,$02AB,$0400,$02AB
l_FF00:
	dw $0000,$0001,$0001,$0000,$0001,$0000,$0000,$0000
	dw $0001,$0000,$0000,$0000,$0000,$0000,$0000,$0000
l_FF20:
	dw $C3E1,$C421,$C401,$C401,$C461,$C421,$C401,$C401
	dw $C441,$C441,$C401,$C401,$C461,$C421,$C401,$C401
l_FF40:
	dw $F200,$F600,$F400,$F600,$FA00,$FA00,$FA00,$FA00
	dw $F800,$F800,$F800,$F800,$F800,$F800,$F800,$F800
l_FF60:
	dw $F400,$F600,$F400,$F600,$FA00,$FA00,$FA00,$FA00
	dw $F800,$F800,$F800,$F800,$F800,$F800,$F800,$F800
l_FF80:
	dw $AEF3,$B0E4,$AEF3,$B0E4,$AEF3,$B0C3,$AEF3,$B0C3
	dw $AEF3,$B0C3,$AEF3,$B0C3,$AEF3,$B0C3,$AEF3,$B0C3
l_FFA0:
	dw $AEF3,$B0C3,$AEF3,$B0C3,$AEF3,$B0C3,$AEF3,$B0C3
	dw $AEF3,$B0C3,$AEF3,$B0C3,$AEF3,$B0C3,$AEF3,$B0C3
l_FFC0:
	dw $000B,$000D,$000C,$000E,$000F,$0012,$0010,$0011
	dw $0013,$0016,$0014,$0015,$0013,$0016,$0014,$0015
l_FFE0:
	dw $0017,$0019,$0018,$001A,$001B,$001E,$001C,$001D
	dw $001F,$0022,$0020,$0021,$001F,$0022,$0020,$0021

; Initialize projectiles
org $938021	; 0x098021
	LDA l_93C3A1,Y
org $93802C	; 0x09802C
	LDA l_93C3C1,Y
;NOT BEAM branch
org $938038	; 0x098038
	LDA l_93EFEA,Y
; Initialize Power Beam
org $9380AE	; 0x0980AE
	LDA l_93EFEA,Y


; Modify certain projectile data and pointers
org $9383BF	; 0x0983BF
; Hyper Beam damage value
	dw $07D0
; Projectile data pointers
; Uncharged beams
	dw $0008,$01EC,$3208,$F46C,$0801,$6C31
	dw $01F4,$3200,$FC6C,$0001,$6C31,$01FC
; Charged Beams
	dw $32F8,$046C,$F800,$6C31,$0004,$32F0
	dw $0C6C,$F000,$6C31,$0002,$0000,$32FC
; Non-beam projectiles
	dw $F82C,$FC01,$2C31,$0002,$01F8,$34FC
	dw $002C,$FC00,$2C34

;----------------------------------------------------------;
; Implement Beam changes
; Instruction sets
incsrc "SpazerPlasmaMix/InstructionSets.asm"
; Projectile sprite maps
incsrc "SpazerPlasmaMix/ProjectileSpritemaps.asm"

;----------------------------------------------------------;
;		Projectile and map graphics
;----------------------------------------------------------;
; These could probably be added as graphics files instead


; Tiles for Plasma Beam, $9AF800 - 0x0D7800
org $9AF860	; 0x0D7860
	dw $0008,$1C18,$0008,$1C0C,$0008,$1C18,$0008,$1C0C
	dw $001C,$1010,$001C,$0404,$001C,$1010,$001C,$0404

org $9AFA20	; 0x0D7A20
	dw $1C1C,$0E00,$0007,$0003,$0100,$0000
org $9AFA34	; 0x0D7A34
	dw $0005,$0002,$0000,$0000,$0000
org $9AFA46	; 0x0D7A46
	dw $0080,$C000,$E0E0
org $9AFA56	; 0x0D7A56
	dw $0080,$0000,$0000,$0070,$38

;----------------------------------------------------------;
;		Animation data
;----------------------------------------------------------;

; Enemy Power Bomb interaction (?)
org $A0A343	; 0x102343
	LDA $B40019,X	; Originally LDA $B4000F,X

; Normal enemy power bomb AI, but skips death animation
org $A0A5D2	; 0x1025D2
	LDA $B40019,X	; Originally LDA $B4000F,X

; Not beam branch and missile check
org $A0A775	; 0x102775
	LDA $B40015,X	; Originally LDA $B4000B,X

; Missile end branch
org $A0A788	; 0x102788
	LDA $B40018,X	; Originally LDA $B4000E,X
	
; Missile end branch, power bomb check
org $A0A79B	; 0x10279B
	LDA $B40019,X	; Originally LDA $B4000F,X


;----------------------------------------------------------;

; Enemy Header data
; Changes to Vulnerability & Frozen AI pointers
incsrc "SpazerPlasmaMix/EnemyHeaders.asm"
incsrc "SpazerPlasmaMix/EnemyVulns.asm"

;----------------------------------------------------------;
; 		Level Data
;----------------------------------------------------------;

; Room $CD13, Modify Phantoon's data for Spazer+Plasma
org $C4E58C	; 0x22658C
	db $01,$00,$02,$5F,$03,$83,$5F,$23
	db $83,$02,$00,$83,$20,$43,$83,$06
	db $01,$87,$22,$D6,$0A,$03,$01,$83
	db $02,$83,$43,$CC,$0A,$04,$CB,$0E
	db $44,$00,$CB,$44,$0A,$CC,$C9,$0A
	db $02,$02,$87,$01,$C2,$40,$04,$02
	db $83,$FC,$02,$FB,$44,$02,$FC,$CF
	db $06,$01,$02,$87,$C3,$5E,$04,$26
	db $83,$AC,$02,$AD,$50,$02,$AC,$C3
	db $12,$07,$26,$83,$22,$83,$40,$94
	db $0C,$04,$45,$AC,$0A,$43,$0C,$0B
	db $CB,$08,$01,$AC,$0A,$C3,$20,$0A
	db $60,$94,$2C,$D4,$0F,$03,$BB,$02
	db $10,$03,$11,$C2,$06,$01,$0E,$03
	db $CB,$0C,$C4,$20,$06,$9C,$2C,$DC
	db $44,$00,$DB,$02,$43,$44,$00,$CF
	db $06,$C4,$60,$09,$9C,$0C,$DC,$2F
	db $03,$FB,$02,$30,$03,$31,$C2,$06
	db $01,$2E,$03,$CB,$0C,$C3,$80,$C5
	db $A0,$C9,$96,$CB,$AA,$C3,$A0,$C3
	db $E0,$C3,$5C,$02,$BD,$02,$BE,$C4
	db $64,$CB,$0C,$C3,$E0,$84,$62,$00
	db $07,$02,$CC,$02,$CB,$06,$DE,$02
	db $CB,$44,$02,$CC,$02,$CB,$06,$DD
	db $C6,$0A,$83,$7E,$00,$02,$05,$87
	db $05,$DC,$04,$03,$3C,$85,$3C,$81
	db $F8,$3B,$04,$E4,$70,$00,$00,$FF
	db $2E,$00,$00,$FE,$2E,$00,$00,$FD
	db $E4,$6D,$00,$FF,$FF,$FF,$FF,$FF
	db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF



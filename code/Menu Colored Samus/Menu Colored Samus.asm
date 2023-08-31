lorom

;Original code from RealRed
;Disassembled by testyourmine

{
!equippedItems = $09A2
!variaSuit = $0001
!gravitySuit = $0020
!paletteColor = $7EC020

!powerPalette = $F200
!variaPalette = $F220
!gravityPlaette = $F240

org $8291BE
	JSR.W SetPauseButtonPalettes

org $82B5C5
	JSR.W CopyBytes

org $82B5E3
	JSR.W SetPalette

org $82F70F
CopyBytes: 
	JSR.W $A27E : BRA SkipTo

SetPalette: 
	JSR.W $A29D

SkipTo: 
	BRA MenuColoredSamus

SetPauseButtonPalettes: 
	JSR.W $A615

MenuColoredSamus: 
	PHX : PHY : LDX.W #$0004	;Load offset to palette pointer
	LDA.W !equippedItems : BIT.W #!gravitySuit : BNE .get_palette_location	;If wearing Gravity, get the Gravity palette pointer
			   DEX : DEX : BIT.W #!variaSuit : BNE .get_palette_location	;Else If wearing Varia, get the Varia palette pointer
			   DEX : DEX													;Otherwise, get the Power palette pointer

.get_palette_location: 
	LDA.W #$B600 : STA.B $01				;Set the bank to $B6
	LDA.L .suit_palette_ptr,X : STA.B $00	;Load the pointer to the suit palette
	LDY.W #$0000	;Y will be the index for loading the suit palette data
	LDX.W #$0000	;X will be the index for storing the data into BG3 palette

.load_suit_palette: 
	LDA.B [$00],Y : STA.L !paletteColor,X	;Put the suit palette color into the pause menu
	INY : INY : INX : INX	;Increment to next word
	CPX.W #$0020 : BCC .load_suit_palette	;Continue loading the palette until all 20h bytes are loaded
	PLY : PLX : RTS	;Return

.suit_palette_ptr: 
	dw Power,Varia,Gravity
	   
org $B6F200
Power:
	dw $2003,$0BB1,$1EA9,$0145
	dw $2B5D,$3DB3,$292E,$1486
	dw $1A99,$1069,$0152,$0000
	dw $14DB,$2B5D,$7FFF,$0152

Varia:
	dw $2003,$0BB1,$1EA9,$0145
	dw $3F7F,$3DB3,$292E,$1486
	dw $1A1D,$1069,$0152,$0000
	dw $14DB,$2B5D,$7FFF,$14F0

Gravity:
	dw $2003,$0BB1,$1EA9,$0145
	dw $5DFF,$3DB3,$292E,$1486
	dw $6915,$1069,$0152,$0000
	dw $14DB,$2B5D,$7FFF,$38AB
}
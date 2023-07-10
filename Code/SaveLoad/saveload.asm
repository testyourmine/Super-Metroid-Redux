;-------------------------------------
;	Save/Load Hack
; By Scyzer, Disassembly by ShadowOne333
;-------------------------------------
; Completely rewrites the saving and loading routines.
; Maps are fully saved (meaning Kejmap is useless), $100 bytes extra are saved per file, and another $100 bytes globally.
; Uses a bunch of free space in $81, but meh. Who uses that bank anyway?
;-------------------------------------
LoRom
;-------------------------------------
org $819A47	; Fix File Copy for the new SRAM files
	LDA.l SRAMAddressTable,x
	skip 7
; 0x009A52
	LDA.l SRAMAddressTable,x
	skip 11
; 0x009A61
	CPY #$0A00
;-------------------------------------
org $819CAE	; Fix File Clear for the new SRAM files
	LDA.l SRAMAddressTable,x
	skip 12
; 0x009CBE
	CPY #$0A00
;-------------------------------------
; Hijacks for Saving and Loading
org $818000
	JMP SaveGame

org $818085
	JMP LoadGame
;-------------------------------------
org $81EF20
SRAMAddressTable:
	dw $0010,$0A10,$1410
CheckSumAdd: 
	CLC : ADC $14 : INC : STA $14 : RTS
;-------------------------------------
SaveGame:
	PHP : REP #$30 : PHB : PHX : PHY
	PEA $7E7E : PLB : PLB : STZ $14 : AND #$0003 : ASL : STA $12
	LDA $079F : INC : XBA : TAX : LDY #$00FE
SaveMap:
	LDA $07F7,y : STA $CD50,x : DEX : DEX : DEY : DEY : BPL SaveMap		;Saves the current map
	LDY #$005E
SaveItems:
	LDA $09A2,y : STA $D7C0,y : DEY : DEY : BPL SaveItems				;Saves current equipment	
	LDA $078B : STA $D916		;Current save for the area
	LDA $079F : STA $D918		;Current Area
	LDX $12 : LDA.l SRAMAddressTable,x : TAX : LDY #$0000		;How much data to save for items and event bits
SaveSRAMItems:
	LDA $D7C0,y : STA $700000,x : JSR CheckSumAdd : INX : INX : INY : INY : CPY #$0160 : BNE SaveSRAMItems	
	LDY #$06FE		;How much data to save for maps
SaveSRAMMaps:
	LDA $CD52,y : STA $700000,x : INX : INX : DEY : DEY : BPL SaveSRAMMaps	
	PEA $7F7F : PLB : PLB : LDY #$00FE		;How much extra data to save per save
SaveSRAMExtra:
	LDA $FE00,y : STA $700000,x : INX : INX : DEY : DEY : BPL SaveSRAMExtra
	LDY #$00FE : LDX #$1E10					;How much extra data to save globally (affects all saves)
SaveSRAMExtraA:
	LDA $FF00,y : STA $700000,x : INX : INX : DEY : DEY : BPL SaveSRAMExtraA
SaveChecksum:
	LDX $12 : LDA $14 : STA $700000,x : STA $701FF0,x : EOR #$FFFF : STA $700008,x : STA $701FF8,x
EndSaveGame:
	PLY : PLX : PLB : PLP : RTL
;-------------------------------------
LoadGame:
	PHP : REP #$30 : PHB : PHX : PHY
	PEA $7E7E : PLB : PLB : STZ $14 : AND #$0003 : ASL : STA $12
	TAX : LDA.l SRAMAddressTable,x : STA $16 : TAX : LDY #$0000		;How much data to load for items and event bits
LoadSRAMItems:
	LDA $700000,x : STA $D7C0,y : JSR CheckSumAdd : INX : INX : INY : INY : CPY #$0160 : BNE LoadSRAMItems	
	LDY #$06FE		;How much data to load for maps
LoadSRAMMaps:
	LDA $700000,x : STA $CD52,y : INX : INX : DEY : DEY : BPL LoadSRAMMaps
	PEA $7F7F : PLB : PLB : LDY #$00FE		;How much extra data to load per save
LoadSRAMExtra:
	LDA $700000,x : STA $FE00,y : INX : INX : DEY : DEY : BPL LoadSRAMExtra
	LDY #$00FE : LDX #$1E10					;How much extra data to load globally (affects all saves)
LoadSRAMExtraA:
	LDA $700000,x : STA $FF00,y : INX : INX : DEY : DEY : BPL LoadSRAMExtraA
LoadCheckSum:
	LDX $12 : LDA $700000,x : CMP $14 : BNE $0B : EOR #$FFFF : CMP $14 : BNE $02 : BRA LoadSRAM
	LDA $14 : CMP $701FF0,x : BNE SetupClearSRAM : EOR #$FFFF : CMP $701FF8,X : BNE SetupClearSRAM : BRA LoadSRAM
LoadSRAM:
	PEA $7E7E : PLB : PLB : LDY #$005E
LoadItems:
	LDA $D7C0,Y : STA $09A2,y : DEY : DEY : BPL LoadItems		;Loads current equipment	
	LDA $D916 : STA $078B		;Current save for the area
	LDA $D918 : STA $079F		;Current Area
	PLY : PLX : PLB : PLP : CLC : RTL
SetupClearSRAM:
	LDX $16 : LDY #$09FE : LDA #$0000
ClearSRAM:
	STA $700000,x : INX : INX : DEY : DEY : BPL ClearSRAM
	PLY : PLX : PLB : PLP : SEC : RTL
;-------------------------------------


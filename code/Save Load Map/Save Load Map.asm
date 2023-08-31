lorom

;Original code unknown
;Disassembled by testyourmine

{
!exploredTiles = $7ECD50
!compressedTiles = $7ED91C
!areaMapSize = $8131
!mapData = $F800
!exploredTilesAddress = $CD52

{
org $8182E4
MapLoad:
	PHB : PHP : PHK : PLB : REP #$30               
	LDA.W #!mapData : STA.B $00 : LDA.W #$0081 : STA.B $02					;Store pointer to $81F800 map tiles into $00
	LDA.W #!exploredTilesAddress : STA.B $03 : LDA.W #$007E : STA.B $05		;Store explored map tiles RAM address into $03
	LDX.W #$0702 : LDA.W #$0000           

.clear_map: 
	STA.L !exploredTiles,X : DEX : DEX : BNE .clear_map	;Clear map tiles explored
	STZ.B $15 : STZ.B $16	;Set area index to zero

.loop_area: 
	PHX : TAX
	LDA.W !areaMapSize,X : PLX : AND.W #$00FF : STA.B $12	;Store area map size in $12
                                              
.loop_room: 
	LDA.B ($00) : AND.W #$00FF : CLC : ADC.B $15 : TAY			;Put area map room offset in Y
	SEP #$20 : LDA.L !compressedTiles,X : STA.B [$03],Y			;Store compressed map data in explored map tiles
	REP #$20 : INC.B $00 : INX : DEC.B $12 : BNE .loop_room		;Increment index and if there is more rooms then go to next room
	INC.B $16 : LDA.B $16 : CMP.W #$0007 : BMI .loop_area		;If there are still more areaa then go to next area
	PLP : PLB : RTS : NOP #10	;Return
}

{
org $81834B
MapSave:
	PHB : PHP : PHK : PLB : REP #$30               
	STZ.B $19 : STZ.B $1A	;Set the area index to 0
	LDA.W #!mapData : STA.B $00	;Store pointer to $81F800 map tiles into $00
	LDA.W #!exploredTilesAddress : STA.B $03 : LDA.W #$007E : STA.B $05		;Store explored map tiles RAM address into $03
	LDA.W #$0000 : TAX
                                              
.loop_area: 
	PHX : TAX
	LDA.W !areaMapSize,X : PLX : AND.W #$00FF : STA.B $16		;Store area map size in $16
                                              
.loop_room: 
	LDA.B ($00) : AND.W #$00FF : CLC : ADC.B $19 : TAY			;Put area map room offset in Y
	SEP #$20 : LDA.B [$03],Y : STA.L !compressedTiles,X			;Store explored map tiles into compressed map data
	REP #$20 : INC.B $00 : INX : DEC.B $16 : BNE .loop_room		;Increment index and if there are more rooms then go to next room
	INC.B $1A : LDA.B $1A : CMP.W #$0007 : BMI .loop_area		;If there are still more areas then go to next area
	PLP : PLB : RTS : NOP #6	;Return

org $81F800
                       db $07,$0B,$0D,$0E,$0F,$11,$13,$15,$16,$17,$19,$1A,$1D,$1E,$1F,$21
                       db $22,$24,$25,$26,$28,$2A,$2B,$2C,$2E,$2F,$30,$32,$33,$36,$37,$3A
                       db $3B,$3E,$3F,$42,$43,$46,$47,$4A,$4E,$52,$56,$84,$85,$88,$89,$8C
                       db $8D,$90,$91,$94,$95,$96,$97,$98,$99,$9A,$9B,$9C,$9F,$A0,$A3,$A4
                       db $A6,$A7,$A8,$AA,$AB,$AC,$AE,$B2,$B6,$BA,$05,$09,$0A,$0B,$0D,$0E
                       db $0F,$11,$12,$13,$14,$15,$16,$17,$19,$1A,$1B,$1C,$1D,$1E,$1F,$20
                       db $21,$22,$23,$25,$26,$27,$29,$2A,$2B,$2C,$2D,$2E,$2F,$30,$31,$32
                       db $33,$35,$36,$37,$39,$3A,$3B,$42,$43,$47,$90,$94,$98,$9C,$A0,$A4
                       db $A8,$AC,$B0,$B4,$B8,$BC,$C0,$C4,$C8,$CC,$CD,$CE,$CF,$D1,$D2,$D3
                       db $D5,$D9,$05,$08,$09,$0B,$0C,$0D,$0E,$0F,$10,$11,$12,$13,$14,$15
                       db $16,$17,$18,$19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$23,$24,$25
                       db $26,$27,$29,$2A,$2B,$2D,$2E,$2F,$31,$32,$33,$34,$35,$36,$37,$38
                       db $39,$3A,$3B,$3C,$3D,$3E,$3F,$40,$41,$42,$44,$45,$46,$47,$48,$49
                       db $4A,$8C,$98,$9C,$A0,$A4,$A8,$AC,$B0,$B4,$B8,$BC,$C0,$C4,$2D,$2E
                       db $31,$32,$35,$36,$39,$3A,$3D,$3E,$42,$45,$46,$49,$4A,$4E,$51,$52
                       db $07,$0B,$0E,$0F,$12,$13,$15,$16,$17,$19,$1A,$1B,$1D,$1E,$1F,$21
                       db $22,$23,$25,$26,$27,$29,$2A,$2B,$2D,$2E,$2F,$31,$32,$33,$35,$36
                       db $39,$3A,$3B,$3D,$3E,$3F,$41,$42,$43,$45,$46,$47,$49,$4A,$4D,$51
                       db $84,$88,$8C,$90,$94,$98,$9C,$9D,$A0,$A1,$A4,$A5,$A8,$A9,$AC,$AD
                       db $C0,$C4,$26,$2A,$2E,$32,$35,$36,$39,$3A,$3E,$41,$42,$45,$46,$4A
                       db $4D,$4E,$51,$52,$55,$56,$5A,$2D,$31,$35,$39,$3D,$41,$45,$46,$AD
                       db $C0,$C4,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
                       db $26,$2A,$2E,$32,$35,$36,$39,$3A,$3E,$41,$42,$45,$46,$4A,$4D,$4E
                       db $51,$52,$55,$56,$5A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
                       db $2D,$31,$35,$39,$3D,$41,$45,$46,$00,$00,$00,$00,$00,$00,$00,$00
}
}
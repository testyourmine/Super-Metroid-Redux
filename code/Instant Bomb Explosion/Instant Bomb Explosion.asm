lorom

;Original code from Begrimed's Project Base
;Created by Quote58
;Disassembled by testyourmine

{
!input = $8B
!down = $09AC
!yDir = $0B36

org $90BFFE 
	JSR.W InstantExplosion

org $90F750 
InstantExplosion: 
	PHA
	LDA.W !yDir : BNE .restore_timer				;If Samus's y direction isn't changing:
	LDA.B !input : BIT.W !down : BEQ .restore_timer	;If down is being held:
	PLA : LDA.W #$0001 : BRA .exit					;Set bomb timer to one
                                      
.restore_timer: 
	PLA		;Otherwise, restore the original bomb timer
                                      
.exit: STA.W $0C7C,X : RTS	;Store the bomb timer and return
}
lorom

;Original code from Begrimed's Project Base
;Created by Scyer and expanded by Quote58
;Disassembled by testyourmine

{
!pose = $0A1C
!newPose = $0A28
!yDir = $0B36
!endSpark = $05D5



org $A0868F 
	JSR.W Backflip

org $A0FF00
Backflip: 
	PHX				
	LDA.W !newPose : CMP.W #$004F : BEQ .down  ;If Samus's new pose is damage boost left or right
				     CMP.W #$0050 : BEQ .down  ;set Samus to fallin
				  
	LDA.W !pose : CMP.W #$004F : BEQ .lift	;If Samus's pose is damage boost left or right
				  CMP.W #$0050 : BEQ .lift	;increase y direction
                                        
.exit: 
	PLX : LDA.W $1840 : RTS		;Go back to the original function

                            
.down: 
	LDA.W #$0002 : STA.W !yDir		;Set Samus's y direction to down
	LDA.W #$FFFA : JSL.L $90F780	;Move Samus up by 5 and return
	BRA .exit         


.lift: 
	LDX.W !endSpark : INX : STX.W !endSpark		;Increase end spark
	CPX.W #$0000 : BPL .up		;If end spark is lifting, move Samus up
	BRA .exit         

.up: 
	CPX.W #$0025 : BPL .exit		;If Samus is still going up:
	CPX.W #$0010 : BPL .y_up_one	;If Samus's y speed is slowing down
	CPX.W #$0005 : BPL .y_up_two	;Move Samus up by one
	LDA.W #$FFFB : BRA .move_up		;Otherwise, move Samus up by 4
                                        
.y_up_one: 
	LDA.W #$FFFD : BRA .move_up
                                        
.y_up_two: 
	LDA.W #$FFFD     
                                        
.move_up
	JSL.L $90F780 : BRA .exit	;Move Samus up and return
}
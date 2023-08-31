lorom

;Originally from Begrimed's Project Base
;Created by Quote58 and based on Black Falcon's original patch
;Disassembly by testyourmine

{
!angle = $00
!sinValue = $02
!cosValue = $04
!samusXPos = $0AF6
!samusYPos = $0AFA
!flareCounter = $0CD0
!multiplier = $0E32
!trigValue = $0E36
!pickupXPos = $1A4B
!pickupYPos = $1A93
!pickupVar = $1B23

!chargedBeam = $003C

{
org $86EFE2 
	JSL.L TractorBeamPB : NOP #2

org $80CEA0
TractorBeamPB: 
	LDA.W !flareCounter : CMP.W #!chargedBeam : BMI .exit	;If the beam if charged:
	LDA.W !pickupXPos,X : SEC : SBC.W !samusXPos : STA.B $12	;Store the X distance between Samus and the pickup in $12
	LDA.W !pickupYPos,X : SEC : SBC.W !samusYPos : STA.B $14	;Store the Y distance between Samus and the pickup in $14
	JSL.L $A0C0AE : STA.B !angle	;Get the angle of the between the X and Y distance
	LDA.W !flareCounter : SEC : SBC.W #!chargedBeam		;Get the acceleration based on charge time

.get_acceleration: 
	LSR A : CMP.W #$0008 : BMI .move_pickup	;Divide the multiplier until the acceleration
		    CMP.W #$0010 : BPL .get_acceleration	;is no more than 8
	LDA.W #$0008

.move_pickup: 
	STA.W !multiplier	;Store the acceleration
	LDA.B !angle : JSL.L $A0B0C6		;Get the X distance in pixels
	LDA.W !trigValue : STA.B !sinValue
	LDA.B !angle : JSL.L $A0B0B2		;Get the Y distance in Pixels
	LDA.W !trigValue : STA.B !cosValue        
	LDA.W !pickupXPos,X : CLC : ADC.B !sinValue : STA.W !pickupXPos,X	;Move the pickup closer to Samus in the X direction
	LDA.W !pickupYPos,X : CLC : ADC.B !cosValue : STA.W !pickupYPos,X	;Move the pickup closer to Samus in the Y direction

.exit: 
	DEC.W !pickupVar,X : LDA.W !pickupVar,X : RTL	;Restore the original instructions and return
}

;Redux contains two versions of Tractor Beam, but only the Project Base one is used
{
TractorBeamBF: 
org $86F600
	LDA.W !flareCounter : BEQ .exit	;If the beam has charge:
	LDA.W !samusXPos : CMP.W !pickupXPos,X	;Get the X distance between Samus and the pickup
					   BEQ .change_y_pos	;If the pickup is on the same vertical plane, move it vertically
					   BMI .move_left		;Otherwise, move the pickup closer horizontally
					   BPL .move_right
	                   BRA .exit

.change_y_pos: 
	LDA.W !pickupYPos,X : CMP.W !samusYPos
						  BEQ .exit		;If the pickup is on the same horizontal plane, exit
						  BMI .move_up	;Otherwise, move the pickup closer vertically
						  BPL .move_down

.move_left: 
	DEC.W !pickupXPos,X : BRA .change_y_pos	;Move the pickup to the left

.move_right: 
	INC.W !pickupXPos,X : BRA .change_y_pos	;Move the pickup to the right

.move_up: 
	INC.W !pickupYPos,X : BRA .exit		;Move the pickup up

.move_down: 
	DEC.W !pickupYPos,X					;Move the pickup down

.exit: 
	LDA.W !pickupVar,X : RTS			;Restore the original instruction and return
}

}
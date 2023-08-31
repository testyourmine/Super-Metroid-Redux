lorom

;Originally from Kejardon and JAM
;Disassembled by testyourmine

{
!projXPos = $0B64
!projYPos = $0B78
!projXVel = $0BDC
!projYVel = $0BF0
!projDir = $0C04
!projVar = $0C7C


org $90AC60
	BEQ $00	;Don't check projectile counter

org $90AE19 
	BRA $02	;Don't clear Super Missile

org $90AFF1 
	BRA $29	;Don't load projectile index 8

{
org $90B005
PreInstruction: 
	JSR.W $B329	;Accelerate Super Missile
	LDA.W !projDir,X : AND.W #$000F : ASL A : TAX : JSR.W ($B033,X)	;Run block collision based on the direction it was hit from
	JSR.W $B16A : BCC .exit	;Delete Super Missile if it's too offscreen, and if it is deleted then
	JSL.L $90ADB7			;clear the Super Missile

.exit: 
	RTS	;Return
}

{
org $90B2FE
InitalizeSuperMissile: 
	BNE .accelerate				;If Super Missile is initalized or linked, then accelerate Super Missile
	INC A : STA.W !projVar,X	;Otherwise, initalize the Super Missile
	LDA.W #$0100 : STA.B $16 : STX.B $12 : JSR.W $B1F3	;Initalize the Super Missile velocity
	BRA .exit

.accelerate: 
	JSR.W $B329	;Accelerate Super Missile

.exit: 
	PLY : PLX : PLP : RTS	;Return
}

org $90B362 : RTS	;Return without restoring indexes and page

{
org $90B372
LinkVerticalCollisionDetection: 
	BNE .exit	;If a Super Missile wasn't fired then return
	LDA.W !projYVel,X : BPL .adjust_position	;Get the Y speed of the Super Missile
	EOR.W #$FFFF : INC A						;by finding the absolute value of the Y velocity

.adjust_position: 
	AND.W #$FF00 : CMP.W #$0B00 : BMI .exit		;If [Super Missile Y speed / 100h < Bh], return
	XBA : SEC : SBC.W #$000A : STA.B $12		;Otherwise, store [Super Missile Y Speed / 100h - Ah] in $12
	LDA.W !projYPos,X : PHA : BIT.W !projYVel,X : BMI .move_up	;If the Super Missile's Y position is greater than it's Y velocity
	SEC : SBC.B $12 : BRA .check_collision						;then decrease the Super Missile's Y position

.move_up: 
	CLC : ADC.B $12	;Otherwise, increase the Super Missile's Y position

.check_collision: 
	STA.W !projYPos,X : JSL.L $94A4D9	;Adjust the Super Missile's Y position and check the collision
	LDA.W $0C18,X : AND.W #$0F00 : CMP.W #$0800 : PLA : BCS .exit	;If there is a Super Missile explosion, then return
	STA.W !projYPos,X	;Otherwise, restore the Super Missile's Y position

.exit: 
	RTS	;Return
}

{
org $90B412
LinkHorizontalCollisionDetection:
	BNE .exit	;If a Super Missile wasn't fired then return
	LDA.W !projXVel,X : BPL .adjust_position		;Get the X speed of the Super Missile
	EOR.W #$FFFF : INC A							;by finding the absolute value of the X velocity

.adjust_position: 
	AND.W #$FF00 : CMP.W #$0B00 : BMI .exit		;If [Super Missile Y speed / 100h < Bh], return
	XBA : SEC : SBC.W #$000A : STA.B $12		;Otherwise, store [Super Missile Y Speed / 100h - Ah] in $12
	LDA.W !projXPos,X : PHA : BIT.W !projXVel,X : BMI .move_left	;If the Super Missile's X position is greater than it's X velocity
	SEC : SBC.B $12 : BRA .check_collision							;then decrease the Super Missile's Y position

.move_left: 
	CLC : ADC.B $12	;Otherwise, increase the Super Missile's X Position

.check_collision: 
	STA.W !projXPos,X : JSL.L $94A46F	;Adjust the Super Missile's X position and check the collision
	LDA.W $0C18,X : AND.W #$0F00 : CMP.W #$0800 : PLA : BCS .exit	;If there is a Super Missile explosion, then return
	STA.W !projXPos,X	;Otherwise, restore the Super Missile's X position

.exit: 
	RTS	;Return
}
}
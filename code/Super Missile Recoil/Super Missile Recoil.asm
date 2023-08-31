lorom

;Originally from Begrimed's Project Base
;Created by Quote58
;Disassembled by testyourmine

{
!ySpeed = $0B2E
!yDir = $0B36
!projDir = $0C04
!projType = $0C18


org $90BEDE 
	JSR.W Recoil

org $90FAA0 
Recoil: 
	PHA : CMP.W #$8200 : BNE .skip	;If shooting a Super Missile that doesn't interact with Samus:
	LDA.W !yDir : BEQ .skip			;If Samus's y direction is changing:
	LDA.W !projDir,X : CMP.W #$0004 : BEQ .continue	;If the Super Missile is moving down
					   CMP.W #$0005 : BNE .skip		;move Samus upwards

.continue: 
	LDA.W #$0001 : STA.W !yDir		;Set Samus's y direction to up
	LDA.W #$0003 : STA.W !ySpeed	;Set Samus's y speed to 3

.skip: 
	PLA : STA.W !projType,X : RTS	;Restore the projectile type and return
}
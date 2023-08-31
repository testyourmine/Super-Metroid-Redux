lorom

;Originally from Begrimed's Project Base
;Created by Quote58
;Disassembled by testyourmine

{
!input = $8B
!left = $09AE
!right = $09B0
!pose = $0A1C
!poseDir = $0A1E
!moveType = $0A1F
!newPose = $0A28
!moveHandler = $0A58
!inputHandler = $0A60
!contactDamageType = $0A6E
!yDir = $0B36
!runFlag = $0B3C
!runSpeed = $0B42
!speedBoosterTimer = $0B3E

org $948884 
	JSR SparkRestart

org $94B1F0
SparkRestart: 
	LDA.W !pose : CMP.W #$00C9 : BEQ .spark_right	;If Samus is shinesparking to the left, check for left input
				  CMP.W #$00CA : BEQ .spark_left	;If Samus is shinesparking to the right, check for right input
	LDA.W #$0001 : RTS	;Otherwise, continue shinesparking

.spark_right: 
	LDA.B !input : BIT.W !right : BNE .chain_right	;If holding right, set Samus to speed boosting right
	LDA.W #$0001 : RTS	;Otherwise, continue shinesparking

.chain_right: 
	LDA.W #$0009 : STA.W !newPose	;Set Samus's pose to Moving Right, No Aiming
	DEC A : STA.W !poseDir			;Set Samus's pose direction right
	LDA.W #$0001 : STA.W !moveType	;Set Samus's movement type to running

.continue_boosting: 
	LDA.W #$0009 : STA.W !runSpeed	;Set Samus's run speed to full
	LDA.W #$FFFE : STA.B $12 : STZ.B $14 : JSL.L $949763	;Move Samus down by 1
	LDA.W #$0001 : STA.W !contactDamageType : STA.W !runFlag	;Set contact damage to speed boosting and set the running momentum flag
	LDA.W #$0402 : STA.W !speedBoosterTimer : STZ.W !yDir	;Set Samus to speed boosting and set Samus's y direction to not changing
	LDA.W #$A337 : STA.W !moveHandler	;Normal Samus movement
	LDA.W #$E913 : STA.W !inputHandler	;Normal Samus input
	RTS

.spark_left: 
	LDA.B !input : BIT.W !left : BNE .chain_left	;If holding left, set Samus to speed boosting left
	LDA.W #$0001 : RTS	;Otherwise, continue shinesparking

.chain_left: 
	LDA.W #$000A : STA.W !newPose	;Set Samus's pose to Moving Left, No Aiming
	LDA.W #$0004 : STA.W !poseDir	;Set Samus's pose direction left
	LDA.W #$0001 : STA.W !moveType	;Set Samus's movement type to running
	JMP.W .continue_boosting
}
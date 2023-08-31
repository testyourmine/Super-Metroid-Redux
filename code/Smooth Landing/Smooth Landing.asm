lorom

;Originally from Begrimed's Project Base
;Created by Scyzer and optimized by Quote58
;Disassembly by testyourmine

{
!endspark = $05D5
!prevDiffPose = $0A24


org $90A383 
	JMP.W SmoothLanding
CODE_90A386:

org $90FA00 
SmoothLanding: 
	PHP : REP #$30
	LDA.W !endspark : AND.W #$0000 : STA.W !endspark : BNE .clear_speed	;If the flag is set, then 
	LDA.W !prevDiffPose				;Keep Samus's horizontal speed if last unique pose was
	CMP.W #$0013 : BEQ .keep_speed	;Facing Right, Jumping, No Aiming, No Moving, Gun Extended or
	CMP.W #$0014 : BEQ .keep_speed	;Facing Left,  Jumping, No Aiming, No Moving, Gun Extended or
	CMP.W #$0019 : BEQ .keep_speed	;Facing Right, Spin Jumping or
	CMP.W #$001A : BEQ .keep_speed	;Facing Left,  Spin Jumping or
	CMP.W #$001B : BEQ .keep_speed	;Facing Right, Space Jumping or
	CMP.W #$001C : BEQ .keep_speed	;Facing Left,  Space Jumping or
	CMP.W #$0027 : BEQ .keep_speed	;Facing Right, Crouching or
	CMP.W #$0028 : BEQ .keep_speed	;Facing Left,  Crouching or
	CMP.W #$0029 : BEQ .keep_speed	;Facing Right, Falling or
	CMP.W #$002A : BEQ .keep_speed	;Facing Left,  Falling or
	CMP.W #$003D : BEQ .keep_speed	;Facing Right, Unmorphing or
	CMP.W #$003E : BEQ .keep_speed	;Facing Left,  Unmorphing or
	CMP.W #$0051 : BEQ .keep_speed	;Facing Right, Jumping, No Aiming, Moving or
	CMP.W #$0052 : BEQ .keep_speed	;Facing Left,  Jumping, No Aiming, Moving or
	CMP.W #$0067 : BEQ .keep_speed	;Facing Right, Falling, Gun Extended or
	CMP.W #$0068 : BEQ .keep_speed	;Facing Left,  Falling, Gun Extended or
	CMP.W #$0081 : BEQ .keep_speed	;Facing Right, Screw Attacking or
	CMP.W #$0082 : BEQ .keep_speed	;Facing Left,  Screw Attacking or
	CMP.W #$0083 : BEQ .keep_speed	;Facing Right, Wall Jumping or
	CMP.W #$0084 : BEQ .keep_speed	;Facing Left,  Wall Jumping or

.clear_speed: JMP.W CODE_90A386	;Go back to the function, causing Samus to lose her speed

.keep_speed: PLP : RTS	;Return from the function, causing Samus to maintain her speed
}
lorom

;Original code from Begrimed's Project Base
;Created by Scyzer
;Disassembly by testyourmine

{
!input = $8B
!down = $09AC
!samusXPos = $0AF6

org $A09834
	JSR.W SkipBombJump

org $A0F800
SkipBombJump: 
	LDA.B !input : BIT.W !down : BNE .no_bomb_jump	;If holding down, skip the bomb jump
	LDA.W !samusXPos : RTS							;Otherwise, continue the original function

.no_bomb_jump: 
	PLA : PLB	;Returns from both this function and the function it was called
	RTL			;thus skipping over the code for bomb jumping
}
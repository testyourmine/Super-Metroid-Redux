lorom

;Original code from Begrimed's Project Base
;Created by Jathyhs and expanded by Quote58
;Disassembly by testyourmine

{
!screenLayers = $69
!subscreenLayers = $6B
!colorMathRegA = $6F
!colorMathRegB = $72
!thing = $0D9C
!tilemap = $7E3000
!cineFuncTimer = $1A49
!cinematicFunc = $1F51
!specialThanks = $E7A5
!progammingCredits = $EEA5
!testerCredits = $F5A5
!funcProgramCredits = $FC7F
!funcTesterCredits = $FC98
!funcExit = $FCB1
!funcEnd = $FCC9



org $8BFC6C
CustomCredits:
.special_thanks
	LDY.W #!specialThanks : JSR.W .store_tilemap : JSR.W .prepare_end		;Load the Special Thanks credits
	LDA.W #!funcProgramCredits : STA.W !cinematicFunc : STZ.W $0D9C : RTS	;Set the next cinematic function to Programming Credits


.programming_credits
	DEC.W !cineFuncTimer : BEQ .load_program_credits : RTS	;Set up the Programming Credits once the previous function timer is cleared

.load_program_credits: 
	LDY.W #!progammingCredits : JSR.W .store_tilemap : JSR.W .prepare_end	;Load the Programming Credits
	LDA.W #!funcTesterCredits : STA.W !cinematicFunc : STZ.W $0D9C : RTS	;Set the next cinematic function to Tester Credits


.tester_credits
	DEC.W !cineFuncTimer : BEQ .load_tester_credits : RTS	;Set up the Tester Credits once the previous function timer is cleared

.load_tester_credits: 
	LDY.W #!testerCredits : JSR.W .store_tilemap : JSR.W .prepare_end		;Load the Tester Credits
	LDA.W #!funcExit : STA.W !cinematicFunc : STZ.W $0D9C : RTS				;Set the next cinematic function to exiting the credits


.exit
	DEC.W !cineFuncTimer : BEQ .go_to_end_credits : RTS	;End the credits once the previous function timer is cleared


.go_to_end_credits: 
	BRA .end_credits : JSR.W .store_tilemap : JSR.W .prepare_end			;Deprecated code, immediately goes to end credits
	LDA.W #!funcEnd : STA.W !cinematicFunc : STZ.W $0D9C : RTS                   

	DEC.W !cineFuncTimer : BEQ .end_credits : RTS                   


.end_credits: 
	LDX.W #$0000 : LDA.W #$004F		;X is tilemap index and A is 4Fh, which is blank

.blank_tilemap: 
	STA.L !tilemap,X : INX : INX : CPX.W #$06E0 : BMI .blank_tilemap		;Blank out the credits tilemap
	LDA.W #$007F : JMP.W $E1DD	;Restore original instruction and return


.store_tilemap: 
	PHB : PEA.W $E400 : PLB : PLB	;Set the Data Bank to $E4
	LDX.W #$0000          

.load_credits: 
	LDA.W $0000,Y : STA.L !tilemap,X : INX : INX : INY : INY				;Load the credits stored in Y
	CPX.W #$06E0 : BMI .load_credits										;Continue until all the credits have been loaded
	PLB : RTS	;Continues to display the credits by return from the function that loads the Samus ending


.prepare_end: 
	JSR.W $8806 : SEP #$20	;Setup cinematic BG VRAM
	LDA.B #$01 : STA.B !screenLayers : STZ.B !subscreenLayers				;Set Mainscreen Layer to BG1 and disable Subscreen Layers
	STZ.B !colorMathRegA : STZ.B !colorMathRegB : REP #$20					;Disable color math
	LDA.W #$01A0 : STA.W !cineFuncTimer : RTS								;Wait for 1A0h until loading the next credits


	dw $003C,$0000,$0008,$8862	;Unknown data
	dw $0008,$886E,$0008,$8884
	dw $0008,$88A4,$0008,$F450
	dw $0008,$F47F,$0008,$F4B8
	dw $0008,$F4FB,$002D,$F548
	dw $9CE1,$9438
}
lorom

;Original code from Begrimed's Project Base
;Created by Quote58
;Disassembled by testyourmine

{
!newInput = $8F
!vramSize = $D0
!vramAddress = $D2
!vramBank = $D4
!vramDestination = $D5
!vramWritePtr = $0330
!jpFlag = $09E2
!cinematicFunc = $1F51
!skipIntroFlag = $1F68
!paletteColor = $7EC022
!skipIntroText = $7E3646

!funcNothing = $A391
!funcSetupMotherBrain = $AEB8
!funcSetupBabyMetroid = $AF6C
!funcSetupBabyDelivery = $B0F2
!funcSetupBabyExamine = $B123
!funcIntroEnd = $B1DA
!funcLastPage = $A390
!funcFadeToGame = $B250
!funcFadeToScene = $B2D2
!funcPage2 = $B35F
!funcPage3 = $B370
!funcPage4 = $B381
!funcPage5 = $B392
!funcFadeFromGame = $B3F4
!funcFadeFromScene = $B458


org $8BA367
	JSR.W IntroSkip

org $8BFA00
IntroSkip: 
	LDA.W !jpFlag : BEQ .check_function : JMP.W .exit	;If the Japanese text is set, return

.check_function: 
	LDX.W #$0010	;Index and counter for fading cinematic functions

.check_fading: 
	LDA.W !cinematicFunc : CMP.L .Fading_Function,X : BEQ .game_fading	;If a screen fade plays, clear the text
	DEX : DEX : BMI .game_not_fading : BRA .check_fading				;Otherwise, the screen is not fading

.game_fading: 
	STZ.W !skipIntroFlag : LDX.W #$0000		;Can't skip the intro so clear the text

.clear_text_fading: 
	TXA : CMP.W #$0032 : BPL .return			;If cleared 32h text, then return
	LDA.W #$3C29 : STA.L !skipIntroText,X	;Otherwise, clear the text
	INX : INX : BRA .clear_text_fading

.return: 
	BRA .exit

.game_not_fading: 
	LDX.W #$000E	;Index and counter for non-fading cinematic functions

.check_cutscene: 
	LDA.W !cinematicFunc : CMP.L .Cutscene_Function,X : BEQ .check_skip	;If a cutscene is playing, return
	DEX : DEX : BMI .exit : BRA .check_cutscene						;Otherwise, check if the intro can be skipped

.check_skip: 
	LDA.W !skipIntroFlag : BNE .final	;If the intro can be skipped, draw the text
	LDX.W #$0000						;Otherwise clear the text

.clear_text: 
	TXA : CMP.W #$0032 : BPL .check_input	;If cleared 32h text, then check for input
	LDA.W #$3C29 : STA.L !skipIntroText,X	;Otherwise, clear the text
	INX : INX : BRA .clear_text         

.check_input: 
	LDA.B !newInput						;Draw the skip intro text if:
	BIT.W #$0040 : BNE .pressed_input	;A face button was pressed or
	BIT.W #$0080 : BNE .pressed_input
	BIT.W #$8000 : BNE .pressed_input
	BIT.W #$4000 : BNE .pressed_input
	BIT.W #$0010 : BNE .pressed_input	;A should button was pressed or
	BIT.W #$0020 : BNE .pressed_input
	BIT.W #$1000						;The start button was pressed
	BEQ .exit							;Otherwise, don't draw the text and return

.pressed_input: 
	LDA.W #$0020 : STA.W !skipIntroFlag	;Set the skip intro flag to true

.draw_text: 
	BRA .clear_layer_1	;Write $2D00 over VRAM first

.palette_start: 
	LDX.W #$0004	;Put the palette index in X

.load_palette: 
	LDA.L .Color_Palette,X : STA.L !paletteColor,X	;Load the first three palette entries
	DEX : DEX : BMI .start_text : BRA .load_palette	;Then load the text

.start_text: 
	LDX.W #$0000	;Put the text index in X

.load_text: 
	TXA : CMP.W #$0032 : BPL .exit						;If done drawing text, exit
	LDA.L .Skip_Intro_Text,X : STA.L !skipIntroText,X	;Otherwise, continue drawing text
	INX : INX : BRA .load_text          

.exit: 
	LDA.W $1B9F : RTS	;Restore original instruction and return

.final: 
	REP #$30
	LDA.W !skipIntroFlag : CMP.W #$0002 : BMI .skip	;If the flag is 
	DEC.W !skipIntroFlag : BRA .draw_text			;Otherwise

.skip: 
	LDA.B !newInput : BIT.W #$1000 : BEQ .draw_text				;Draw the skip intro text if start isn't pressed
	STZ.W !skipIntroFlag : LDA.W #$B72F : STA.W !cinematicFunc	;Otherwise, reset the flag and skip the intro
	BRA .exit	;Return

.clear_layer_1: 
	LDX.W !vramWritePtr														;Put the pointer to the table of VRAM entries in X
	LDA.W #$00C0 : STA.B !vramSize,X										;Write size is C0h
	LDA.W #$FB71 : STA.B !vramAddress,X : LDA.W #$8B8B : STA.B !vramBank,X	;Source address is $8BFB71
	LDA.W #$5300 : STA.B !vramDestination,X									;Write address is $5300 in VRAM
	TXA : CLC : ADC.W #$0007 : STA.W !vramWritePtr : BRA .palette_start		;Increment the write pointer to the next entry

.Skip_Intro_Text: 
	dw $300F,$3011,$3004,$3012,$3012	;PRESS
	dw $302F
	dw $3012,$3013,$3000,$3011,$3013	;START
	dw $302F
	dw $3013,$300E						;TO
	dw $302F
	dw $3012,$300A,$3008,$300F			;SKIP
	dw $302F
	dw $3008,$300D,$3013,$3011,$300E	;INTRO
	dw $3025,$302F

.Color_Palette: 
	dw $7FFF,$0000,$294A
	dw $0000
	dw $03E0,$6318,$0340,$3BE0
	dw $03E0,$6318,$0280,$2680
	dw $03E0,$6318,$0200,$1580
	dw $03E0,$6318,$0160

.Cutscene_Function: 
	dw !funcNothing
	dw !funcSetupMotherBrain
	dw !funcSetupBabyMetroid
	dw !funcSetupBabyDelivery
	dw !funcSetupBabyExamine
	dw !funcIntroEnd
	dw !funcLastPage

.Fading_Function: 
	dw !funcFadeToGame
	dw !funcPage2
	dw !funcPage3
	dw !funcFadeToScene
	dw !funcPage4
	dw !funcPage5
	dw !funcFadeFromGame
	dw !funcFadeFromScene

	dw $2D00,$2D00,$2D00,$2D00		;The source address of $8BFB71 that is loaded when clearing layer 1
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
	dw $2D00,$2D00,$2D00,$2D00
}
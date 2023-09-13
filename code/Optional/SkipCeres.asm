lorom

; Skip the entirety of the Ceres Station section of the game (intro) and start the game straight into Zebes with Samus landing her ship

; Game State 2 (Game options menu= - [$0DE2] = 4 (Start game)
; Modify "If Debug mode enabled" and "If not pressing L: go to BRANCH_DEBUG" codes
org $82EEB7	; 0x016EB7
	STZ $079F	; Originally LDA $05D1
	STZ $078B	; Originally BEQ $07
	BRA l_EEC1	; Originally LDA $8B
	NOP #2		; Originally BIT #$0020
l_EEC1:
	BRA $33		; Originally BEQ $33

lorom

; Skip the entirety of the Ceres Station section of the game (intro) and start the game straight into Zebes with Samus landing her ship

org $82EEB7	; 0x016EB7
	STZ $079F
	STZ $078B
	BRA l_EEC1
	NOP #2
l_EEC1:
	BRA $33

lorom

;Door stuff
!S = $0008	;Door scroll speed, must be $0002, $0004 (default) or $0008
!F = $0006	;Screen fade speed, higher = slower ($000C default)

;Don't touch these values
!X = $0100/!S	;Horizontal loop counter, X times S should equal $100
!Y = $00E0/!S+1	;Vertical loop counter, Y times S should equal $E0 ($100-$20 due to the HUD)
!C = $0010/!S+1	;Vertical counter for drawing tile rows "behind" HUD (prior to scrolling)

org $80AE9D
	dw !S
org $80AEA7
	dw !S
org $80AEB6
	dw !X
org $80AEE1
	dw !S
org $80AEEB
	dw !S
org $80AEFA
	dw !X
org $80AF45
	dw !Y
org $80AF64
	dw !S
org $80AF6E
	dw !S
org $80AF7D
	dw !Y
org $80AFE6
	dw !S
org $80AFF0
	dw !S
org $80AFF6
	dw !C
org $80B02A
	dw !Y
org $82D962
	dw !F

org $82DE50
	BPL $0F
	LDA $0791
	ROR A
	ROR A
	BCS $05
	LDA #$00C8
	BRA $03
	LDA #$0180

;Uncomment one of the three following lines
;	LSR A		;Uncomment only if S equals $0002
;	NOP		;Uncomment only if S equals $0004
	ASL A		;Uncomment only if S equals $0008
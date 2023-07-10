lorom

;|///////////////////////////////////////////////|
;|/// Morphball Animation Improvement Part II ///|
;|///		          by		  		      ///|
;|///		      Black Falcon	      		  ///|
;|///////////////////////////////////////////////|

;This lill' code forces the morphball animation to play only if you're 
;actually moving.
;MERRY CHRISTMAS, EVERYONE!!! :D


;header		;uncomment if your rom has a header



!underwater = #$0007
!gravity = #$0003
!jumppeak = #$0005
!item = #$0020		;gravity suit



org $908526

	JSR SPEED

org $90831E
	JSR SPEED

org $908022

	JSR BLAH


org $90F640

BLAH:


	PHA
	LDA $0A1F	;movement type
	AND #$00FF
	CMP #$0004
	BEQ BALLGROUND
	CMP #$0011
	BEQ BALLGROUND
	BRA NORMAL

BALLGROUND:
	LDA $09A2
	BIT !item
	BNE GRAVITY

	LDA $195E
	BMI GRAVITY
	CMP $0AFA
	BPL GRAVITY

	LDA $0B48	;hor. momentum, spx/f
	BRA CHING
GRAVITY:
	LDA $0B48	;hor. momentum, px/f
CHING:
	BNE NORMAL
	PLA
 	LDA #$0001
	BRA BLOCK
NORMAL:
	PLA
BLOCK:
EDITED:
	STA $0A94	;frames till next animation frame
	RTS

SPEED:

	PHA
	LDA $0A1F
	AND #$00FF
	CMP #$0004
	BEQ GROUNDBALL
	CMP #$0008
	BEQ AIRBALL
	CMP #$0011
	BEQ GROUNDBALL
	CMP #$0012
	BEQ AIRBALL		;SPRINGAIR
	CMP #$0013
	BEQ AIRBALL
	BRA NORMAL 
GROUNDBALL:
	PLA
	LDA $09A2
	BIT !item
	BNE GRAVITY1

	LDA $195E
	BMI GRAVITY1
	CMP $0AFA
	BPL GRAVITY1

	LDA !underwater
	BRA CHANG
GRAVITY1:
	LDA !gravity
CHANG:
	
	SEC
	SBC $0B42	;horizontal speed in px/f
	BMI $04
	BEQ $02
	BPL EDITED
	LDA #$0001
	BRA EDITED

AIRBALL:
	PLA
	LDA $0B2E	;vertical speed in px/f
	BNE $05
	LDA !jumppeak
	BRA EDITED
	EOR #$FFFF
	AND #$000F
	LSR
	LSR
	BPL EDITED
	LDA #$0001
	BRA EDITED
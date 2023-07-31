;Changes how the end percentage in calculated. Made by Sadiztyk Fish   :P

;Allows tanks with multiple values (eg. missile tanks worth either 3 or 5)
;Allows an uneven or random number of items (up to 255 separate item pickups)
;Adds a single decimal point value, to give more accurate results to random item ammounts

!CollectedItems = $7ED86E

!TotalItems = #$64	;TOTAL number if items in the game. This includes ALL items: missiles, upgrades, etc

LOROM

org $828F6B
	JSR ItemPercent

;//[Free space ($C7 bytes)]
org $82FA6A
ItemPercent:
	PHP
	PHB
	REP #$30
	PHX
	PHY
	SEP #$20
	STZ $12
	LDA !CollectedItems				;Load number of collected items in the game
	STA $4202
	LDA #$64					;Load #100 decimal
	STA $4203
	NOP : NOP : NOP : NOP : NOP : NOP : NOP
	REP #$20
	LDA $4216					;Load number of (collected items * 100)
	STA $4204					;Store to devisor A
	SEP #$20
	LDA !TotalItems					;Load total number of game items
	STA $4206					;Store to devisor B
	NOP : NOP : NOP : NOP : NOP : NOP : NOP
	REP #$20
	LDA $4214					;Load ((collected items * 100)/Total items) ie Item percent
	STA $4204
	LDA $4216					;Load remainder
	PHA
	SEP #$20
	LDA #$0A
	STA $4206
	NOP : NOP : NOP : NOP : NOP : NOP : NOP		;Calculate percentage / 10
	REP #$20
	LDA $4214					;Load tenths of percentage / 10 (eg, if 78, load 7, if 53, load 5)
	STA $4204					;Store value to devisor A
	LDA $4216					;Load remainder of percentage / 10 (eg, if 78, load 8, if 53, load 3)
	STA $16						;Store to $16. oneths of percentage. if 78, = 8, if 100, = 0
	SEP #$20
	LDA #$0A
	STA $4206					
	NOP : NOP : NOP : NOP : NOP : NOP : NOP		;Divide percentage by 10 again
	REP #$20
	LDA $4214					;If 100%, this will be 1
	STA $12						;Store to $12. Contains 100th of percentage. WIll only be 1 if 100% achieved
	LDA $4216					;Load remainder, which will be 0 if 100% achieved
	STA $14						;Store to $14
	PLA
	SEP #$20
	STA $4204
	LDA #$0A
	STA $4206					
	NOP : NOP : NOP : NOP : NOP : NOP : NOP		;Divide remainder by 10
	REP #$20
	LDA $4214					;load value
	STA $18					


;//[basic drawing]
	LDX #$0000
	LDA #$0CDA		;//decimal icon
	STA $7E39CE
	LDA #$0C02		;//percent icon
	STA $7E39D2
	LDA $12 : JSR DrawDigit
	LDA $14 : JSR DrawDigit
	LDA $16 : JSR DrawDigit
	INX : INX
	LDA $18 : JSR DrawDigit
	PLY
	PLX
	PLB
	PLP
	JSR $8F70		;//vanilla
	RTS
DrawDigit:
	CLC : ADC #$0804
	STA $7E39C8,x
	INX : INX
	RTS

;//[just the 'items' box]
org $B6E980
	dw $0000,$1D5C,$3941,$3942,$3943,$0C9E,$0C9F,$0CAF,$7943,$3942,$3942,$7941
org $B6E9C0
	dw $0000,$1D5C,$3940,$2801,$2801,$2801,$2801,$2801,$2801,$2801,$2801,$7940
org $B6EA00
	dw $0000,$1D5C,$B941,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$B942,$F941
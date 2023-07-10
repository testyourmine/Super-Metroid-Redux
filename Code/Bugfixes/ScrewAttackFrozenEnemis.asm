; Copyright 2015 Adam <https://github.com/n00btube>
; MIT license.
; There _could_ be newer versions available on GitHub.

lorom

; main hijack point: intercepts where Samus *has* collided with a platform
; enemy, either because it's a platform, or because it's frozen.
org $A0AA24
	JMP attack_check ; overwrite an LDA that overwrites the collision overlap

; extra implementation, can be anywhere in bank $A0 free space
; beware if you expand this, I only left like 7 bytes of room up there.
org $A0FFD0
attack_check:
	LDA $0A6E        ; Samus/enemy collision damage type
	BEQ platform     ; zero: nothing special
	CMP #$0004       ; speedrun/shinespark/screw attack?
	BCS platform     ; no, some unknown value, do not mess with it

	LDA $0B02
	CMP #$0003       ; downward collision type?
	BEQ landing      ; just land on it, kthx

	LDX $18A6        ; load enemy index
	LDA $0F86,X      ; get property bits
	BIT #$8000       ; platform type?
	BNE platform     ; platform enemy, do not unfreeze

	STZ $0F9E,X      ; unfreeze enemy, normal AI/collision applies later
	JMP $AABF        ; platform miss (check next enemy)
platform:
	LDA $0B02        ; collision direction, what we overwrote to hijack
landing:
	JMP $AA27        ; resume after hijack (needs $0B02 loaded into A)

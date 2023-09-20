;----------------------------------------------------------;
;		Instruction lists
;----------------------------------------------------------;
; Instruction list - door $C842 (grey door facing left)
org $84BE59	; 0x023E59
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84BEB0	; 0x023EB0
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C848 (grey door facing right)
org $84BEC2	; 0x023EC2
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84BF19	; 0x023F19
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C84E (grey door facing up)
org $84BF2B	; 0x023F2B
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84BF82	; 0x023F82
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C854 (grey door facing down)
org $84BF94	; 0x023F94
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84BFEB	; 0x023FEB
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C85A (yellow door facing left)
org $84BFFD	; 0x023FFD
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84C04E	; 0x02404E
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C860 (yellow door facing right)
org $84C060	; 0x024060
	dw $0001 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84C0B1	; 0x0240B1
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C866 (yellow door facing up)
org $84C0C3	; 0x0240C3
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84C110	; 0x024110
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C86C (yellow door facing down)
org $84C122	; 0x024122
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84C173	; 0x024173
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C872 (green door facing left)
org $84C185	; 0x024185
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84C1D2	; 0x0241D2
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C878 (green door facing right)
org $84C1E4	; 0x0241E4
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84C231	; 0x024231
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C87E (green door facing up)
org $84C243	; 0x024243
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84C290	; 0x024290
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C884 (green door facing down)
org $84C2A2	; 0x0242A2
	dw $0008 : skip 2
	dw $0001 : skip 5
	dw $0001 : skip 2
	dw $0001

org $84C2EF	; 0x0242EF
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C88A (red door facing left)
org $84C301	; 0x024301
	dw $0008 : skip 8
	db $15

org $84C32C	; 0x02432C
	db $01 : skip 4
	db $17

org $84C351	; 0x024351
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C890 (red door facing right)
org $84C363	; 0x024363
	dw $0008 : skip 8
	db $15

org $84C38E	; 0x02438E
	db $01 : skip 4
	db $17

org $84C3B3	; 0x0243B3
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C896 (red door facing up)
org $84C3F0	; 0x0243F0
	db $01 : skip 4
	db $17

org $84C415	; 0x024415
	db $01 : skip 3
	db $01 : skip 3
	db $01

; Instruction list - door $C89C (red door facing down)
org $84C427	; 0x024427
	dw $0008

org $84C452	; 0x024452
	db $01 : skip 4
	db $17

org $84C477	; 0x024477
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C8A2 (shot/bombed/grappled reaction, shootable, BTS 40h. Blue door facing left)
org $84C48C	; 0x02448C
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C8A2 (shot/bombed/grappled reaction, shootable, BTS 40h. Blue door facing left)
org $84C49E	; 0x02449E
	dw $0008 : skip 2
	dw $0002 : skip 2
	db $19

; Instruction list - door $C8A8 (shot/bombed/grappled reaction, shootable, BTS 41h. Blue door facing right)
org $84C4BD	; 0x0244BD
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C8A8 (shot/bombed/grappled reaction, shootable, BTS 41h. Blue door facing right)
org $84C4CF	; 0x0244CF
	dw $0008 : skip 2
	dw $0002 : skip 2
	db $19

; Instruction list - closed blue door facing rightt
org $84C4EE	; 0x0244EE
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C8AE (shot/bombed/grappled reaction, shootable, BTS 42h. Blue door facing up)
org $84C500	; 0x024500
	dw $0008 : skip 2
	dw $0002 : skip 2
	db $19

; Instruction list - door $C8B4 (shot/bombed/grappled reaction, shootable, BTS 43h. Blue door facing down)
org $84C51F	; 0x02451F
	dw $0001 : skip 2
	dw $0001 : skip 2
	dw $0001

; Instruction list - door $C8B4 (shot/bombed/grappled reaction, shootable, BTS 43h. Blue door facing down)
org $84C531	; 0x024531
	dw $0008




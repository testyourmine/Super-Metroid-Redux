;----------------------------------------------------------;
; Projectile / Flare spritemaps
;----------------------------------------------------------;
lorom
;----------------------------------------------------------;
; Repurposed unused values
org $93A231	; 0x09A231
	dw $0001, $01FC : db $FC : dw $AC32
	dw $0001, $01FC : db $FC : dw $AC31
	dw $0001, $01FC : db $FC : dw $2C30
	dw $0001, $01FC : db $FC : dw $2C33
;----------------------------------------------------------;
; Power Beam
org $93A277	; 0x09A277
	dw $0024, $01EB : db $17 : dw $AC36
	dw $01E5 : db $11 : dw $AC36
	dw $0013 : db $E7 : dw $6C36
	dw $000D : db $E1 : dw $6C36
	dw $01EB : db $0F : dw $AC35
	dw $01E5 : db $09 : dw $AC35
	dw $01F3 : db $07 : dw $AC35
	dw $01ED : db $01 : dw $AC35
	dw $01FB : db $FF : dw $AC35
	dw $01F5 : db $F9 : dw $AC35
	dw $0003 : db $F7 : dw $AC35
	dw $01FD : db $F1 : dw $AC35
	dw $000B : db $EF : dw $AC35
	dw $0005 : db $E9 : dw $AC35
	dw $0013 : db $EF : dw $6C35
	dw $000D : db $E9 : dw $6C35
	dw $01F3 : db $0F : dw $6C35
	dw $01ED : db $09 : dw $6C35
	dw $01FB : db $07 : dw $6C35
	dw $01F5 : db $01 : dw $6C35
	dw $000B : db $F7 : dw $6C35
	dw $0005 : db $F1 : dw $6C35
	dw $0003 : db $FF : dw $6C35
	dw $01FD : db $F9 : dw $6C35
	dw $01E8 : db $14 : dw $AC36
	dw $0010 : db $E4 : dw $6C36
	dw $01E8 : db $0C : dw $AC35
	dw $01F0 : db $04 : dw $AC35
	dw $01F8 : db $FC : dw $AC35
	dw $0000 : db $F4 : dw $AC35
	dw $0008 : db $EC : dw $AC35
	dw $0010 : db $EC : dw $6C35
	dw $01F0 : db $0C : dw $6C35
	dw $01F8 : db $04 : dw $6C35
	dw $0008 : db $F4 : dw $6C35
	dw $0000 : db $FC : dw $6C35

	dw $0024, $000D : db $17 : dw $EC36
	dw $0013 : db $11 : dw $EC36
	dw $01E5 : db $E7 : dw $2C36
	dw $01EB : db $E1 : dw $2C36
	dw $000D : db $0F : dw $EC35
	dw $0013 : db $09 : dw $EC35
	dw $0005 : db $07 : dw $EC35
	dw $000B : db $01 : dw $EC35
	dw $01FD : db $FF : dw $EC35
	dw $0003 : db $F9 : dw $EC35
	dw $01F5 : db $F7 : dw $EC35
	dw $01FB : db $F1 : dw $EC35
	dw $01ED : db $EF : dw $EC35
	dw $01F3 : db $E9 : dw $EC35
	dw $01E5 : db $EF : dw $2C35
	dw $01EB : db $E9 : dw $2C35

;----------------------------------------------------------;
; Plasma+Ice Beam(?), $93A37F - 0x09A37F
	dw $0005 : db $0F : dw $2C35
	dw $000B : db $09 : dw $2C35
	dw $01FD : db $07 : dw $2C35
	dw $0003 : db $01 : dw $2C35

	dw $01ED : db $F7 : dw $2C35
	dw $01F3 : db $F1 : dw $2C35
	dw $01F5 : db $FF : dw $2C35
	dw $01FB : db $F9 : dw $2C35
	dw $0010 : db $14 : dw $EC36
	dw $01E8 : db $E4 : dw $2C36
	dw $0010 : db $0C : dw $EC35
	dw $0008 : db $04 : dw $EC35
	dw $0000 : db $FC : dw $EC35
	dw $01F8 : db $F4 : dw $EC35
	dw $01F0 : db $EC : dw $EC35
	dw $01E8 : db $EC : dw $2C35
	dw $0008 : db $0C : dw $2C35
	dw $0000 : db $04 : dw $2C35
	dw $01F0 : db $F4 : dw $2C35
	dw $01F8 : db $FC : dw $2C35

	dw $0015, $0014 : db $08 : dw $2C30
	dw $000C : db $08 : dw $2C30
	dw $0004 : db $08 : dw $2C30
	dw $01FC : db $08 : dw $2C30
	dw $01F4 : db $08 : dw $2C30
	dw $01EC : db $08 : dw $2C30
	dw $01E4 : db $08 : dw $2C30
	dw $0014 : db $F0 : dw $2C30
	dw $000C : db $F0 : dw $2C30
	dw $0004 : db $F0 : dw $2C30
	dw $01FC : db $F0 : dw $2C30
	dw $01F4 : db $F0 : dw $2C30
	dw $01EC : db $F0 : dw $2C30
	dw $01E4 : db $F0 : dw $2C30
	dw $0014 : db $FC : dw $2C30
	dw $000C : db $FC : dw $2C30
	dw $0004 : db $FC : dw $2C30
	dw $01FC : db $FC : dw $2C30
	dw $01F4 : db $FC : dw $2C30
	dw $01EC : db $FC : dw $2C30
	dw $01E4 : db $FC : dw $2C30

	dw $0015, $0014 : db $08 : dw $2C34
	dw $000C : db $08 : dw $2C34
	dw $0004 : db $08 : dw $2C34
	dw $01FC : db $08 : dw $2C34
	dw $01F4 : db $08 : dw $2C34
	dw $01EC : db $08 : dw $2C34
	dw $01E4 : db $08 : dw $2C34
	dw $0014 : db $F0 : dw $2C34
	dw $000C : db $F0 : dw $2C34
	dw $0004 : db $F0 : dw $2C34
	dw $01FC : db $F0 : dw $2C34
	dw $01F4 : db $F0 : dw $2C34
	dw $01EC : db $F0 : dw $2C34
	dw $01E4 : db $F0 : dw $2C34
	dw $0014 : db $FC : dw $2C34
	dw $000C : db $FC : dw $2C34
	dw $0004 : db $FC : dw $2C34
	dw $01FC : db $FC : dw $2C34
	dw $01F4 : db $FC : dw $2C34
	dw $01EC : db $FC : dw $2C34
	dw $01E4 : db $FC : dw $2C34

	dw $0015, $0000 : db $14 : dw $2C33
	dw $0000 : db $0C : dw $2C33
	dw $0000 : db $04 : dw $2C33
	dw $0000 : db $FC : dw $2C33
	dw $0000 : db $F4 : dw $2C33
	dw $0000 : db $EC : dw $2C33
	dw $0000 : db $E4 : dw $2C33
	dw $01F8 : db $14 : dw $2C33
	dw $01F8 : db $0C : dw $2C33
	dw $01F8 : db $04 : dw $2C33
	dw $01F8 : db $FC : dw $2C33
	dw $01F8 : db $F4 : dw $2C33
	dw $01F8 : db $EC : dw $2C33
	dw $01F8 : db $E4 : dw $2C33
	dw $01FC : db $14 : dw $2C33
	dw $01FC : db $0C : dw $2C33
	dw $01FC : db $04 : dw $2C33
	dw $01FC : db $FC : dw $2C33
	dw $01FC : db $F4 : dw $2C33
	dw $01FC : db $EC : dw $2C33
	dw $01FC : db $E4 : dw $2C33

	dw $0015, $0000 : db $14 : dw $2C37
	dw $0000 : db $0C : dw $2C37
	dw $0000 : db $04 : dw $2C37
	dw $0000 : db $FC : dw $2C37
	dw $0000 : db $F4 : dw $2C37
	dw $0000 : db $EC : dw $2C37
	dw $0000 : db $E4 : dw $2C37
	dw $01F8 : db $14 : dw $2C37
	dw $01F8 : db $0C : dw $2C37
	dw $01F8 : db $04 : dw $2C37
	dw $01F8 : db $FC : dw $2C37
	dw $01F8 : db $F4 : dw $2C37
	dw $01F8 : db $EC : dw $2C37
	dw $01F8 : db $E4 : dw $2C37
	dw $01FC : db $14 : dw $2C37
	dw $01FC : db $0C : dw $2C37
	dw $01FC : db $04 : dw $2C37
	dw $01FC : db $FC : dw $2C37
	dw $01FC : db $F4 : dw $2C37
	dw $01FC : db $EC : dw $2C37
	dw $01FC : db $E4 : dw $2C37

	dw $0015, $0008 : db $14 : dw $2C33
	dw $0008 : db $0C : dw $2C33
	dw $0008 : db $04 : dw $2C33
	dw $0008 : db $FC : dw $2C33
	dw $0008 : db $F4 : dw $2C33
	dw $0008 : db $EC : dw $2C33
	dw $0008 : db $E4 : dw $2C33
	dw $01F0 : db $14 : dw $2C33
	dw $01F0 : db $0C : dw $2C33
	dw $01F0 : db $04 : dw $2C33
	dw $01F0 : db $FC : dw $2C33
	dw $01F0 : db $F4 : dw $2C33
	dw $01F0 : db $EC : dw $2C33
	dw $01F0 : db $E4 : dw $2C33
	dw $01FC : db $14 : dw $2C33
	dw $01FC : db $0C : dw $2C33
	dw $01FC : db $04 : dw $2C33
	dw $01FC : db $FC : dw $2C33
	dw $01FC : db $F4 : dw $2C33
	dw $01FC : db $EC : dw $2C33
	dw $01FC : db $E4 : dw $2C33

	dw $0015, $0008 : db $14 : dw $2C37
	dw $0008 : db $0C : dw $2C37
	dw $0008 : db $04 : dw $2C37
	dw $0008 : db $FC : dw $2C37
	dw $0008 : db $F4 : dw $2C37
	dw $0008 : db $EC : dw $2C37
	dw $0008 : db $E4 : dw $2C37
	dw $01F0 : db $14 : dw $2C37
	dw $01F0 : db $0C : dw $2C37
	dw $01F0 : db $04 : dw $2C37
	dw $01F0 : db $FC : dw $2C37
	dw $01F0 : db $F4 : dw $2C37
	dw $01F0 : db $EC : dw $2C37
	dw $01F0 : db $E4 : dw $2C37
	dw $01FC : db $14 : dw $2C37
	dw $01FC : db $0C : dw $2C37
	dw $01FC : db $04 : dw $2C37
	dw $01FC : db $FC : dw $2C37
	dw $01FC : db $F4 : dw $2C37
	dw $01FC : db $EC : dw $2C37
	dw $01FC : db $E4 : dw $2C37

	dw $001E, $000B : db $EF : dw $6C32
	dw $0005 : db $E9 : dw $6C32
	dw $0013 : db $EF : dw $6C31
	dw $000D : db $E9 : dw $6C31
	dw $01EB : db $0F : dw $6C32
	dw $01E5 : db $09 : dw $6C32
	dw $01F3 : db $0F : dw $6C31
	dw $01ED : db $09 : dw $6C31
	dw $01F3 : db $07 : dw $6C32
	dw $01ED : db $01 : dw $6C32
	dw $01FB : db $07 : dw $6C31
	dw $01F5 : db $01 : dw $6C31
	dw $0003 : db $F7 : dw $6C32
	dw $01FD : db $F1 : dw $6C32
	dw $000B : db $F7 : dw $6C31
	dw $0005 : db $F1 : dw $6C31
	dw $01FB : db $FF : dw $6C32
	dw $01F5 : db $F9 : dw $6C32
	dw $0003 : db $FF : dw $6C31
	dw $01FD : db $F9 : dw $6C31
	dw $0008 : db $EC : dw $6C32
	dw $0010 : db $EC : dw $6C31
	dw $01E8 : db $0C : dw $6C32
	dw $01F0 : db $0C : dw $6C31
	dw $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $0000 : db $F4 : dw $6C32
	dw $0008 : db $F4 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31

;----------------------------------------------------------;
; Charged Plasma+Wave / Plasma+Ice+Wave
org $93BC0A	; 0x09BC0A
	dw $0015, $0014 : db $00 : dw $2C30
	dw $000C : db $00 : dw $2C30
	dw $0004 : db $00 : dw $2C30
	dw $01FC : db $00 : dw $2C30
	dw $01F4 : db $00 : dw $2C30
	dw $01EC : db $00 : dw $2C30
	dw $01E4 : db $00 : dw $2C30
	dw $0014 : db $F8 : dw $2C30
	dw $000C : db $F8 : dw $2C30
	dw $0004 : db $F8 : dw $2C30
	dw $01FC : db $F8 : dw $2C30
	dw $01F4 : db $F8 : dw $2C30
	dw $01EC : db $F8 : dw $2C30
	dw $01E4 : db $F8 : dw $2C30
	dw $0014 : db $FC : dw $2C30
	dw $000C : db $FC : dw $2C30
	dw $0004 : db $FC : dw $2C30
	dw $01FC : db $FC : dw $2C30
	dw $01F4 : db $FC : dw $2C30
	dw $01EC : db $FC : dw $2C30
	dw $01E4 : db $FC : dw $2C30

	dw $0003, $01F4 : db $FC : dw $2C30
	dw $01FC : db $FC : dw $2C30
	dw $0004 : db $FC : dw $2C30

	dw $0004, $0004 : db $00 : dw $2C32
	dw $01FC : db $00 : dw $2C31
	dw $01FC : db $F8 : dw $2C32
	dw $01F4 : db $F8 : dw $2C31

	dw $0004, $01F4 : db $00 : dw $6C32
	dw $01FC : db $00 : dw $6C31
	dw $01FC : db $F8 : dw $6C32
	dw $0004 : db $F8 : dw $6C31
	
	dw $0004, $01F8 : db $04 : dw $AC36
	dw $01F8 : db $FC : dw $AC35
	dw $0000 : db $F4 : dw $6C36
	dw $0000 : db $FC : dw $6C35
	
	dw $0008, $0100 : db $80 : dw $0016
	dw $01E4 : db $FC : dw $2C30
	dw $000C : db $FC : dw $2C30
	dw $0004 : db $FC : dw $2C30
	dw $01FC : db $FC : dw $2C30
	dw $01F4 : db $FC : dw $2C30
	dw $01EC : db $FC : dw $2C30
; $93BCED - 0x09BCED
	dw $0014 : db $FC : dw $2C30
	dw $0100 : db $80 : dw $000E
	dw $0014 : db $04 : dw $2C30
	dw $0014 : db $F4 : dw $2C30
	dw $000C : db $04 : dw $2C30
	dw $01E4 : db $04 : dw $2C30
	dw $01E4 : db $F4 : dw $2C30
	dw $000C : db $F4 : dw $2C30
	dw $0004 : db $04 : dw $2C30
	dw $01FC : db $04 : dw $2C30
	dw $01F4 : db $04 : dw $2C30
	dw $01EC : db $04 : dw $2C30
	dw $0004 : db $F4 : dw $2C30
	dw $01FC : db $F4 : dw $2C30
	dw $01F4 : db $F4 : dw $2C30
	dw $01EC : db $F4 : dw $2C30

	dw $0016, $0014 : db $FC : dw $2C30
	dw $01E4 : db $FC : dw $2C30
	dw $000C : db $FC : dw $2C30
	dw $0004 : db $FC : dw $2C30
	dw $01FC : db $FC : dw $2C30
	dw $01F4 : db $FC : dw $2C30
	dw $01EC : db $FC : dw $2C30
	dw $0100 : db $80 : dw $000E
	dw $0004 : db $0B : dw $2C30
	dw $01FC : db $0B : dw $2C30
	dw $01F4 : db $0B : dw $2C30
	dw $01EC : db $0B : dw $2C30
	dw $0004 : db $ED : dw $2C30
	dw $01FC : db $ED : dw $2C30
	dw $01F4 : db $ED : dw $2C30
	dw $01EC : db $ED : dw $2C30
	dw $0014 : db $0B : dw $2C30
	dw $0014 : db $ED : dw $2C30
	dw $000C : db $0B : dw $2C30
	dw $01E4 : db $0B : dw $2C30
	dw $01E4 : db $ED : dw $2C30
	dw $000C : db $ED : dw $2C30

	dw $0016, $0014 : db $FC : dw $2C30
	dw $01E4 : db $FC : dw $2C30
	dw $000C : db $FC : dw $2C30
	dw $0004 : db $FC : dw $2C30
	dw $01FC : db $FC : dw $2C30
	dw $01F4 : db $FC : dw $2C30
	dw $01EC : db $FC : dw $2C30
	dw $0100 : db $80 : dw $000E
	dw $0014 : db $0C : dw $2C30
	dw $0014 : db $EC : dw $2C30
	dw $000C : db $0C : dw $2C30
	dw $01E4 : db $0C : dw $2C30
	dw $01E4 : db $EC : dw $2C30
	dw $000C : db $EC : dw $2C30
	dw $0004 : db $0C : dw $2C30
	dw $01FC : db $0C : dw $2C30 
	dw $01F4 : db $0C : dw $2C30
	dw $01EC : db $0C : dw $2C30
	dw $0004 : db $EC : dw $2C30
	dw $01FC : db $EC : dw $2C30
	dw $01F4 : db $EC : dw $2C30
	dw $01EC : db $EC : dw $2C30

	dw $0006, $0008 : db $04 : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F0 : db $F4 : dw $2C31
	dw $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31

	dw $000C, $01F0 : db $00 : dw $2C30
	dw $01F0 : db $FC : dw $2C30
	dw $01F0 : db $F8 : dw $2C30
	dw $0008 : db $00 : dw $2C30
	dw $0008 : db $FC : dw $2C30
	dw $0008 : db $F8 : dw $2C30
	dw $0000 : db $00 : dw $2C30
	dw $01F8 : db $00 : dw $2C30
	dw $0000 : db $FC : dw $2C30
	dw $01F8 : db $FC : dw $2C30
	dw $0000 : db $F8 : dw $2C30
	dw $01F8 : db $F8 : dw $2C30
	dw $000B : db $00 : dw $8001

	dw $001F, $01F0 : db $EC : dw $2C32
	dw $01E8 : db $EC : dw $2C31
	dw $0010 : db $0C : dw $2C32
	dw $0008 : db $0C : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F0 : db $F4 : dw $2C31
	dw $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31
	dw $0100 : db $80 : dw $0014 
	dw $01F6 : db $E6 : dw $2C32
	dw $01EE : db $E6 : dw $2C31
	dw $01EA : db $F2 : dw $2C32
	dw $01E2 : db $F2 : dw $2C31
	dw $000A : db $12 : dw $2C32
	dw $0002 : db $12 : dw $2C31
	dw $0016 : db $06 : dw $2C32
	dw $000E : db $06 : dw $2C31
	dw $000E : db $FE : dw $2C32
	dw $0006 : db $FE : dw $2C31
	dw $01FE : db $EE : dw $2C32
	dw $01F6 : db $EE : dw $2C31
	dw $0006 : db $F6 : dw $2C32
	dw $01FE : db $F6 : dw $2C31
	dw $0002 : db $0A : dw $2C32
	dw $01FA : db $0A : dw $2C31
	dw $01F2 : db $FA : dw $2C32
	dw $01EA : db $FA : dw $2C31
	dw $01FA : db $02 : dw $2C32
	dw $01F2 : db $02 : dw $2C31

	dw $001F, $01E8 : db $EC : dw $2C31
	dw $0010 : db $0C : dw $2C32
	dw $0008 : db $0C : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F0 : db $F4 : dw $2C31
	dw $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31
	dw $01F0 : db $EC : dw $2C32
	dw $0100 : db $80 : dw $0014
	dw $01F9 : db $E3 : dw $2C32 
	dw $01F1 : db $E3 : dw $2C31
	dw $0019 : db $03 : dw $2C32
	dw $0011 : db $03 : dw $2C31
	dw $01E7 : db $F5 : dw $2C32
	dw $01DF : db $F5 : dw $2C31
	dw $0007 : db $15 : dw $2C32
	dw $01FF : db $15 : dw $2C31
	dw $0011 : db $FB : dw $2C32
	dw $0009 : db $FB : dw $2C31
	dw $0001 : db $EB : dw $2C32
	dw $01F9 : db $EB : dw $2C31
	dw $0009 : db $F3 : dw $2C32
	dw $0001 : db $F3 : dw $2C31
	dw $01FF : db $0D : dw $2C32
	dw $01F7 : db $0D : dw $2C31
	dw $01EF : db $FD : dw $2C32
	dw $01E7 : db $FD : dw $2C31
	dw $01F7 : db $05 : dw $2C32
	dw $01EF : db $05 : dw $2C31

	dw $001F, $01F0 : db $EC : dw $2C32
	dw $01E8 : db $EC : dw $2C31
	dw $0010 : db $0C : dw $2C32
	dw $0008 : db $0C : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F0 : db $F4 : dw $2C31
	dw $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31
	dw $0100 : db $80 : dw $0014
	dw $01E5 : db $F7 : dw $2C32
	dw $01DD : db $F7 : dw $2C31
	dw $01FB : db $E1 : dw $2C32
	dw $01F3 : db $E1 : dw $2C31
	dw $0005 : db $17 : dw $2C32
	dw $01FD : db $17 : dw $2C31
	dw $001B : db $01 : dw $2C32
	dw $0013 : db $01 : dw $2C31
	dw $0013 : db $F9 : dw $2C32
	dw $000B : db $F9 : dw $2C31
	dw $0003 : db $E9 : dw $2C32
	dw $01FB : db $E9 : dw $2C31
	dw $000B : db $F1 : dw $2C32
	dw $0003 : db $F1 : dw $2C31
	dw $01FD : db $0F : dw $2C32
	dw $01F5 : db $0F : dw $2C31
	dw $01ED : db $FF : dw $2C32
	dw $01E5 : db $FF : dw $2C31
	dw $01F5 : db $07 : dw $2C32
	dw $01ED : db $07 : dw $2C31

	dw $001F, $01F0 : db $EC : dw $2C32
	dw $01E8 : db $EC : dw $2C31
	dw $0010 : db $0C : dw $2C32
	dw $0008 : db $0C : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F0 : db $F4 : dw $2C31
	dw $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31
	dw $0100 : db $80 : dw $0014
	dw $01E4 : db $F8 : dw $2C32
	dw $01DC : db $F8 : dw $2C31
	dw $01FC : db $E0 : dw $2C32
	dw $01F4 : db $E0 : dw $2C31
	dw $0004 : db $18 : dw $2C32
	dw $01FC : db $18 : dw $2C31
	dw $001C : db $00 : dw $2C32
	dw $0014 : db $00 : dw $2C31
	dw $0014 : db $F8 : dw $2C32
	dw $000C : db $F8 : dw $2C31
	dw $0004 : db $E8 : dw $2C32
	dw $01FC : db $E8 : dw $2C31
	dw $000C : db $F0 : dw $2C32
	dw $0004 : db $F0 : dw $2C31
	dw $01FC : db $10 : dw $2C32
	dw $01F4 : db $10 : dw $2C31
	dw $01EC : db $00 : dw $2C32
	dw $01E4 : db $00 : dw $2C31
	dw $01F4 : db $08 : dw $2C32
	dw $01EC : db $08 : dw $2C31

	dw $0004, $01F8 : db $FC : dw $2C35
	dw $0000 : db $04 : dw $EC36
	dw $0000 : db $FC : dw $EC35
	dw $01F8 : db $F4 : dw $2C36

	dw $0008, $01F8 : db $F4 : dw $EC35
	dw $0000 : db $FC : dw $EC35
	dw $0008 : db $0C : dw $EC36
	dw $01F0 : db $EC : dw $2C36
	dw $0000 : db $04 : dw $2C35
	dw $01F8 : db $FC : dw $2C35
	dw $01F0 : db $F4 : dw $2C35
	dw $0008 : db $04 : dw $EC35

	dw $0002, $01FC : db $00 : dw $EC36
	dw $01FC : db $F8 : dw $2C36

	dw $0001, $01FC : db $FC : dw $6C30

	dw $0015, $0014 : db $00 : dw $2C34
	dw $000C : db $00 : dw $2C34
	dw $0004 : db $00 : dw $2C34
	dw $01FC : db $00 : dw $2C34
	dw $01F4 : db $00 : dw $2C34
	dw $01EC : db $00 : dw $2C34
	dw $01E4 : db $00 : dw $2C34
	dw $0014 : db $F8 : dw $2C34
	dw $000C : db $F8 : dw $2C34
	dw $0004 : db $F8 : dw $2C34
	dw $01FC : db $F8 : dw $2C34
	dw $01F4 : db $F8 : dw $2C34
	dw $01EC : db $F8 : dw $2C34
	dw $01E4 : db $F8 : dw $2C34
	dw $0014 : db $FC : dw $2C34
	dw $000C : db $FC : dw $2C34
	dw $0004 : db $FC : dw $2C34
	dw $01FC : db $FC : dw $2C34
	dw $01F4 : db $FC : dw $2C34
	dw $01EC : db $FC : dw $2C34
	dw $01E4 : db $FC : dw $2C34
	dw $0017 : db $00 : dw $8001

	dw $0007, $01FC : db $0C : dw $2C33
	dw $01FC : db $E4 : dw $2C33
	dw $01FC : db $04 : dw $2C33
	dw $01FC : db $FC : dw $2C33
	dw $01FC : db $EC : dw $2C33
	dw $01FC : db $F4 : dw $2C33
	dw $01FC : db $14 : dw $2C33
	dw $0100 : db $80 : dw $000E
	dw $0004 : db $14 : dw $2C33
	dw $0004 : db $0C : dw $2C33
	dw $01F4 : db $14 : dw $2C33
	dw $01F4 : db $0C : dw $2C33
	dw $01F4 : db $E4 : dw $2C33
	dw $0004 : db $E4 : dw $2C33
	dw $0004 : db $04 : dw $2C33
	dw $0004 : db $FC : dw $2C33
	dw $0004 : db $EC : dw $2C33
	dw $0004 : db $F4 : dw $2C33
	dw $01F4 : db $04 : dw $2C33
	dw $01F4 : db $FC : dw $2C33
	dw $01F4 : db $EC : dw $2C33
	dw $01F4 : db $F4 : dw $2C33

	dw $0016, $01FC : db $14 : dw $2C33
	dw $01FC : db $0C : dw $2C33
	dw $01FC : db $E4 : dw $2C33
	dw $01FC : db $04 : dw $2C33
	dw $01FC : db $FC : dw $2C33
	dw $01FC : db $EC : dw $2C33
	dw $01FC : db $F4 : dw $2C33
	dw $0100 : db $80 : dw $000E
	dw $0009 : db $14 : dw $2C33
	dw $0009 : db $0C : dw $2C33
	dw $01EF : db $14 : dw $2C33
	dw $01EF : db $0C : dw $2C33
	dw $01EF : db $E4 : dw $2C33
	dw $0009 : db $E4 : dw $2C33
	dw $0009 : db $04 : dw $2C33
	dw $0009 : db $FC : dw $2C33
	dw $0009 : db $EC : dw $2C33
	dw $0009 : db $F4 : dw $2C33
	dw $01EF : db $04 : dw $2C33
	dw $01EF : db $FC : dw $2C33
	dw $01EF : db $EC : dw $2C33 
	dw $01EF : db $F4 : dw $2C33

	dw $0016, $01FC : db $14 : dw $2C33
	dw $01FC : db $0C : dw $2C33
	dw $01FC : db $E4 : dw $2C33
	dw $01FC : db $04 : dw $2C33
	dw $01FC : db $FC : dw $2C33
	dw $01FC : db $EC : dw $2C33
	dw $01FC : db $F4 : dw $2C33
	dw $0100 : db $80 : dw $000E
	dw $01ED : db $14 : dw $2C33
	dw $01ED : db $0C : dw $2C33
	dw $000B : db $14 : dw $2C33
	dw $000B : db $0C : dw $2C33
	dw $000B : db $E4 : dw $2C33
	dw $01ED : db $E4 : dw $2C33
	dw $000B : db $04 : dw $2C33
	dw $000B : db $FC : dw $2C33
	dw $000B : db $EC : dw $2C33
	dw $000B : db $F4 : dw $2C33
	dw $01ED : db $04 : dw $2C33
	dw $01ED : db $FC : dw $2C33
	dw $01ED : db $EC : dw $2C33
	dw $01ED : db $F4 : dw $2C33

	dw $0016, $01FC : db $14 : dw $2C33
	dw $01FC : db $0C : dw $2C33
	dw $01FC : db $E4 : dw $2C33
	dw $01FC : db $04 : dw $2C33
	dw $01FC : db $FC : dw $2C33
	dw $01FC : db $EC : dw $2C33
	dw $01FC : db $F4 : dw $2C33
	dw $0100 : db $80 : dw $000E
	dw $01EC : db $14 : dw $2C33
	dw $01EC : db $0C : dw $2C33
	dw $000C : db $14 : dw $2C33
	dw $000C : db $0C : dw $2C33
	dw $000C : db $E4 : dw $2C33
	dw $01EC : db $E4 : dw $2C33
	dw $000C : db $04 : dw $2C33
	dw $000C : db $FC : dw $2C33
	dw $000C : db $EC : dw $2C33
	dw $000C : db $F4 : dw $2C33
	dw $01EC : db $04 : dw $2C33
	dw $01EC : db $FC : dw $2C33
	dw $01EC : db $EC : dw $2C33
	dw $01EC : db $F4 : dw $2C33

	dw $0008, $01F0 : db $04 : dw $AC35
	dw $0000 : db $F4 : dw $AC35
	dw $01F8 : db $FC : dw $AC35
	dw $01F0 : db $0C : dw $AC36
	dw $0008 : db $EC : dw $6C36
	dw $01F8 : db $04 : dw $6C35
	dw $0000 : db $FC : dw $6C35
	dw $0008 : db $F4 : dw $6C35


org $93C3A1	; 0x093C3A1
l_93C3A1:
	dw $8431,$84B5,$849F,$84E1,$8447,$84F7,$845D,$8473
	dw $84CB,$850D,$8523,$8489,$F008,$F01E,$F034,$F04A

org $93C3C1	; 0x093C3C1
l_93C3C1:
	dw $8539,$85D3,$85A7,$85E9,$854F,$85FF,$8565,$857B
	dw $85BD,$862B,$8615,$8591,$F060,$F076,$F08C,$F0A2


	dw $0004, $01FC : db $08 : dw $2C33
	dw $01FC : db $00 : dw $2C33
	dw $01FC : db $F0 : dw $2C33
	dw $01FC : db $F8 : dw $2C33

	dw $0004, $0008 : db $FC : dw $2C30
	dw $01F0 : db $FC : dw $2C30
	dw $0000 : db $FC : dw $2C30
	dw $01F8 : db $FC : dw $2C30

	dw $0003, $01FC : db $04 : dw $2C37
	dw $01FC : db $FC : dw $2C37
	dw $01FC : db $F4 : dw $2C37

	dw $0002, $01FC : db $F8 : dw $6C36
	dw $01FC : db $00 : dw $AC36

	dw $0001, $01FC : db $FC : dw $AC33

	dw $0016, $0014 : db $FC : dw $2C30
	dw $01E4 : db $FC : dw $2C30
	dw $000C : db $FC : dw $2C30
	dw $0004 : db $FC : dw $2C30
	dw $01FC : db $FC : dw $2C30
	dw $01F4 : db $FC : dw $2C30
	dw $01EC : db $FC : dw $2C30
	dw $0100 : db $80 : dw $000E
	dw $0014 : db $09 : dw $2C30
	dw $0014 : db $EF : dw $2C30
	dw $000C : db $09 : dw $2C30
	dw $01E4 : db $09 : dw $2C30
	dw $01E4 : db $EF : dw $2C30
	dw $000C : db $EF : dw $2C30
	dw $0004 : db $09 : dw $2C30
	dw $01FC : db $09 : dw $2C30
	dw $01F4 : db $09 : dw $2C30
	dw $01EC : db $09 : dw $2C30
	dw $0004 : db $EF : dw $2C30
	dw $01FC : db $EF : dw $2C30
	dw $01F4 : db $EF : dw $2C30
	dw $01EC : db $EF : dw $2C30
	dw $0017 : db $00 : dw $8001

	dw $0007, $0014 : db $FC : dw $2C34
	dw $01E4 : db $FC : dw $2C34
	dw $000C : db $FC : dw $2C34
	dw $0004 : db $FC : dw $2C34
	dw $01FC : db $FC : dw $2C34
	dw $01F4 : db $FC : dw $2C34
	dw $01EC : db $FC : dw $2C34
	dw $0100 : db $80 : dw $000E
	dw $0014 : db $04 : dw $2C34
	dw $0014 : db $F4 : dw $2C34
	dw $000C : db $04 : dw $2C34
	dw $01E4 : db $04 : dw $2C34
	dw $01E4 : db $F4 : dw $2C34
	dw $000C : db $F4 : dw $2C34
	dw $0004 : db $04 : dw $2C34
	dw $01FC : db $04 : dw $2C34
	dw $01F4 : db $04 : dw $2C34
	dw $01EC : db $04 : dw $2C34
	dw $0004 : db $F4 : dw $2C34
	dw $01FC : db $F4 : dw $2C34
	dw $01F4 : db $F4 : dw $2C34
	dw $01EC : db $F4 : dw $2C34

	dw $0016, $0014 : db $FC : dw $2C34
	dw $01E4 : db $FC : dw $2C34
	dw $000C : db $FC : dw $2C34
	dw $0004 : db $FC : dw $2C34
	dw $01FC : db $FC : dw $2C34
	dw $01F4 : db $FC : dw $2C34
	dw $01EC : db $FC : dw $2C34
	dw $0100 : db $80 : dw $000E
	dw $0014 : db $09 : dw $2C34
	dw $0014 : db $EF : dw $2C34 
	dw $000C : db $09 : dw $2C34
	dw $01E4 : db $09 : dw $2C34
	dw $01E4 : db $EF : dw $2C34
	dw $000C : db $EF : dw $2C34
	dw $0004 : db $09 : dw $2C34
	dw $01FC : db $09 : dw $2C34
	dw $01F4 : db $09 : dw $2C34
	dw $01EC : db $09 : dw $2C34
	dw $0004 : db $EF : dw $2C34
	dw $01FC : db $EF : dw $2C34
	dw $01F4 : db $EF : dw $2C34
	dw $01EC : db $EF : dw $2C34

	dw $0016, $0014 : db $FC : dw $2C34
	dw $01E4 : db $FC : dw $2C34
	dw $000C : db $FC : dw $2C34
	dw $0004 : db $FC : dw $2C34
	dw $01FC : db $FC : dw $2C34
	dw $01F4 : db $FC : dw $2C34
	dw $01EC : db $FC : dw $2C34
	dw $0100 : db $80 : dw $000E
	dw $0014 : db $0B : dw $2C34
	dw $0014 : db $ED : dw $2C34
	dw $000C : db $0B : dw $2C34
	dw $01E4 : db $0B : dw $2C34
	dw $01E4 : db $ED : dw $2C34
	dw $000C : db $ED : dw $2C34
	dw $0004 : db $0B : dw $2C34
	dw $01FC : db $0B : dw $2C34
	dw $01F4 : db $0B : dw $2C34
	dw $01EC : db $0B : dw $2C34
	dw $0004 : db $ED : dw $2C34
	dw $01FC : db $ED : dw $2C34
	dw $01F4 : db $ED : dw $2C34
	dw $01EC : db $ED : dw $2C34

	dw $0016, $0014 : db $FC : dw $2C34
	dw $01E4 : db $FC : dw $2C34
	dw $000C : db $FC : dw $2C34
	dw $0004 : db $FC : dw $2C34
	dw $01FC : db $FC : dw $2C34
	dw $01F4 : db $FC : dw $2C34
	dw $01EC : db $FC : dw $2C34
	dw $0100 : db $80 : dw $000E
	dw $0014 : db $0C : dw $2C34
	dw $0014 : db $EC : dw $2C34
	dw $000C : db $0C : dw $2C34
	dw $01E4 : db $0C : dw $2C34
	dw $01E4 : db $EC : dw $2C34
	dw $000C : db $EC : dw $2C34
	dw $0004 : db $0C : dw $2C34
	dw $01FC : db $0C : dw $2C34
	dw $01F4 : db $0C : dw $2C34
	dw $01EC : db $0C : dw $2C34
	dw $0004 : db $EC : dw $2C34
	dw $01FC : db $EC : dw $2C34
	dw $01F4 : db $EC : dw $2C34
	dw $01EC : db $EC : dw $2C34
	dw $000D : db $00 : dw $8001

	dw $0025, $0010 : db $14 : dw $EC36
	dw $01E8 : db $E4 : dw $2C36
	dw $0010 : db $0C : dw $EC35
	dw $0008 : db $04 : dw $EC35
	dw $0000 : db $FC : dw $EC35
	dw $01F8 : db $F4 : dw $EC35
	dw $01F0 : db $EC : dw $EC35
	dw $01E8 : db $EC : dw $2C35
	dw $0008 : db $0C : dw $2C35
	dw $0000 : db $04 : dw $2C35
	dw $01F0 : db $F4 : dw $2C35
	dw $01F8 : db $FC : dw $2C35
	dw $0100 : db $80 : dw $0018
	dw $000A : db $1A : dw $EC36
	dw $0016 : db $0E : dw $EC36
	dw $01E2 : db $EA : dw $2C36
	dw $01EE : db $DE : dw $2C36
	dw $01F6 : db $E6 : dw $EC35
	dw $01FE : db $EE : dw $EC35
	dw $0006 : db $F6 : dw $EC35
	dw $000E : db $FE : dw $EC35
	dw $0016 : db $06 : dw $EC35
	dw $000A : db $12 : dw $EC35
	dw $0002 : db $0A : dw $EC35
	dw $01FA : db $02 : dw $EC35
	dw $01F2 : db $FA : dw $EC35
	dw $01EA : db $F2 : dw $EC35
	dw $01EE : db $E6 : dw $2C35
	dw $01E2 : db $F2 : dw $2C35
	dw $0002 : db $12 : dw $2C35
	dw $000E : db $06 : dw $2C35
	dw $0006 : db $FE : dw $2C35
	dw $01F6 : db $EE : dw $2C35
	dw $01FE : db $F6 : dw $2C35
	dw $01FA : db $0A : dw $2C35
	dw $01EA : db $FA : dw $2C35
	dw $01F2 : db $02 : dw $2C35

	dw $0025, $0010 : db $14 : dw $EC36
	dw $01E8 : db $E4 : dw $2C36
	dw $0010 : db $0C : dw $EC35
	dw $0008 : db $04 : dw $EC35
	dw $0000 : db $FC : dw $EC35
	dw $01F8 : db $F4 : dw $EC35
	dw $01F0 : db $EC : dw $EC35
	dw $01E8 : db $EC : dw $2C35
	dw $0008 : db $0C : dw $2C35
	dw $0000 : db $04 : dw $2C35
	dw $01F0 : db $F4 : dw $2C35
	dw $01F8 : db $FC : dw $2C35
	dw $0100 : db $80 : dw $0018
	dw $01DF : db $ED : dw $2C36
	dw $01F1 : db $DB : dw $2C36
	dw $0007 : db $1D : dw $EC36
	dw $0019 : db $0B : dw $EC36
	dw $01F9 : db $E3 : dw $EC35
	dw $0001 : db $EB : dw $EC35
	dw $0009 : db $F3 : dw $EC35
	dw $0011 : db $FB : dw $EC35
	dw $0019 : db $03 : dw $EC35
	dw $0007 : db $15 : dw $EC35
	dw $01FF : db $0D : dw $EC35
	dw $01F7 : db $05 : dw $EC35
	dw $01EF : db $FD : dw $EC35
	dw $01E7 : db $F5 : dw $EC35
	dw $01F1 : db $E3 : dw $2C35
	dw $0011 : db $03 : dw $2C35
	dw $01DF : db $F5 : dw $2C35
	dw $01FF : db $15 : dw $2C35
	dw $0009 : db $FB : dw $2C35
	dw $01F9 : db $EB : dw $2C35
	dw $0001 : db $F3 : dw $2C35
	dw $01F7 : db $0D : dw $2C35
	dw $01E7 : db $FD : dw $2C35
	dw $01EF : db $05 : dw $2C35

	dw $0025, $0010 : db $14 : dw $EC36
	dw $01E8 : db $E4 : dw $2C36
	dw $0010 : db $0C : dw $EC35
	dw $0008 : db $04 : dw $EC35
	dw $0000 : db $FC : dw $EC35
	dw $01F8 : db $F4 : dw $EC35
	dw $01F0 : db $EC : dw $EC35
	dw $01E8 : db $EC : dw $2C35
	dw $0008 : db $0C : dw $2C35
	dw $0000 : db $04 : dw $2C35
	dw $01F0 : db $F4 : dw $2C35
	dw $01F8 : db $FC : dw $2C35
	dw $0100 : db $80 : dw $0018
	dw $0004 : db $20 : dw $EC36
	dw $001C : db $08 : dw $EC36
	dw $01DC : db $F0 : dw $2C36
	dw $01F4 : db $D8 : dw $2C36
	dw $01E4 : db $F8 : dw $EC35
	dw $01EC : db $00 : dw $EC35
	dw $01F4 : db $08 : dw $EC35
	dw $01FC : db $10 : dw $EC35
	dw $0004 : db $18 : dw $EC35
	dw $001C : db $00 : dw $EC35
	dw $0014 : db $F8 : dw $EC35
	dw $000C : db $F0 : dw $EC35
	dw $0004 : db $E8 : dw $EC35
	dw $01FC : db $E0 : dw $EC35
	dw $01DC : db $F8 : dw $2C35
	dw $01F4 : db $E0 : dw $2C35
	dw $01FC : db $18 : dw $2C35
	dw $0014 : db $00 : dw $2C35
	dw $000C : db $F8 : dw $2C35
	dw $01FC : db $E8 : dw $2C35
	dw $0004 : db $F0 : dw $2C35
	dw $01F4 : db $10 : dw $2C35
	dw $01E4 : db $00 : dw $2C35
	dw $01EC : db $08 : dw $2C35

	dw $0025, $0010 : db $14 : dw $EC36
	dw $01E8 : db $E4 : dw $2C36
	dw $0010 : db $0C : dw $EC35
	dw $0008 : db $04 : dw $EC35
	dw $0000 : db $FC : dw $EC35
	dw $01F8 : db $F4 : dw $EC35
	dw $01F0 : db $EC : dw $EC35
	dw $01E8 : db $EC : dw $2C35
	dw $0008 : db $0C : dw $2C35
	dw $0000 : db $04 : dw $2C35
	dw $01F0 : db $F4 : dw $2C35
	dw $01F8 : db $FC : dw $2C35
	dw $0100 : db $80 : dw $0018
	dw $01DD : db $EF : dw $2C36
	dw $01F3 : db $D9 : dw $2C36
	dw $0005 : db $1F : dw $EC36
	dw $001B : db $09 : dw $EC36
	dw $01FB : db $E1 : dw $EC35
	dw $0003 : db $E9 : dw $EC35
	dw $000B : db $F1 : dw $EC35
	dw $0013 : db $F9 : dw $EC35
	dw $001B : db $01 : dw $EC35
	dw $0005 : db $17 : dw $EC35
	dw $01FD : db $0F : dw $EC35
	dw $01F5 : db $07 : dw $EC35
	dw $01ED : db $FF : dw $EC35
	dw $01E5 : db $F7 : dw $EC35
	dw $01DD : db $F7 : dw $2C35
	dw $01F3 : db $E1 : dw $2C35
	dw $01FD : db $17 : dw $2C35
	dw $0013 : db $01 : dw $2C35
	dw $000B : db $F9 : dw $2C35
	dw $01FB : db $E9 : dw $2C35
	dw $0003 : db $F1 : dw $2C35
	dw $01F5 : db $0F : dw $2C35
	dw $01E5 : db $FF : dw $2C35
	dw $01ED : db $07 : dw $2C35
	dw $0008 : db $00 : dw $8001

	dw $0016, $01FC : db $14 : dw $2C37
	dw $01FC : db $0C : dw $2C37
	dw $01FC : db $E4 : dw $2C37
	dw $01FC : db $04 : dw $2C37
	dw $01FC : db $FC : dw $2C37
	dw $01FC : db $EC : dw $2C37
	dw $01FC : db $F4 : dw $2C37
	dw $0100 : db $80 : dw $000E 
	dw $0004 : db $0C : dw $2C37
	dw $01F4 : db $14 : dw $2C37
	dw $01F4 : db $0C : dw $2C37
	dw $01F4 : db $E4 : dw $2C37
	dw $0004 : db $E4 : dw $2C37
	dw $0004 : db $04 : dw $2C37
	dw $0004 : db $FC : dw $2C37
	dw $0004 : db $EC : dw $2C37
	dw $0004 : db $F4 : dw $2C37
	dw $01F4 : db $04 : dw $2C37
	dw $01F4 : db $FC : dw $2C37
	dw $01F4 : db $EC : dw $2C37
	dw $01F4 : db $F4 : dw $2C37
	dw $0004 : db $14 : dw $2C37

	dw $0016, $01FC : db $14 : dw $2C37 
	dw $01FC : db $0C : dw $2C37
	dw $01FC : db $E4 : dw $2C37
	dw $01FC : db $04 : dw $2C37
	dw $01FC : db $FC : dw $2C37
	dw $01FC : db $EC : dw $2C37
	dw $01FC : db $F4 : dw $2C37
	dw $0100 : db $80 : dw $000E
	dw $01EF : db $14 : dw $2C37
	dw $01EF : db $0C : dw $2C37
	dw $0009 : db $14 : dw $2C37
	dw $0009 : db $0C : dw $2C37
	dw $0009 : db $E4 : dw $2C37
	dw $01EF : db $E4 : dw $2C37
	dw $0009 : db $04 : dw $2C37
	dw $0009 : db $FC : dw $2C37
	dw $0009 : db $EC : dw $2C37
	dw $0009 : db $F4 : dw $2C37
	dw $01EF : db $04 : dw $2C37
	dw $01EF : db $FC : dw $2C37
	dw $01EF : db $EC : dw $2C37
	dw $01EF : db $F4 : dw $2C37

	dw $0016, $01FC : db $14 : dw $2C37
	dw $01FC : db $0C : dw $2C37
	dw $01FC : db $E4 : dw $2C37
	dw $01FC : db $04 : dw $2C37
	dw $01FC : db $FC : dw $2C37
	dw $01FC : db $EC : dw $2C37
	dw $01FC : db $F4 : dw $2C37
	dw $0100 : db $80 : dw $000E
	dw $01ED : db $14 : dw $2C37
	dw $01ED : db $0C : dw $2C37
	dw $000B : db $14 : dw $2C37
	dw $000B : db $0C : dw $2C37
	dw $000B : db $E4 : dw $2C37
	dw $01ED : db $E4 : dw $2C37
	dw $000B : db $04 : dw $2C37
	dw $000B : db $FC : dw $2C37
	dw $000B : db $EC : dw $2C37
	dw $000B : db $F4 : dw $2C37
	dw $01ED : db $04 : dw $2C37
	dw $01ED : db $FC : dw $2C37
	dw $01ED : db $EC : dw $2C37
	dw $01ED : db $F4 : dw $2C37

	dw $0016, $01FC : db $14 : dw $2C37
	dw $01FC : db $0C : dw $2C37
	dw $01FC : db $E4 : dw $2C37
	dw $01FC : db $04 : dw $2C37
	dw $01FC : db $FC : dw $2C37
	dw $01FC : db $EC : dw $2C37
	dw $01FC : db $F4 : dw $2C37
	dw $0100 : db $80 : dw $000E
	dw $01EC : db $14 : dw $2C37
	dw $01EC : db $0C : dw $2C37
	dw $000C : db $14 : dw $2C37
	dw $000C : db $0C : dw $2C37
	dw $000C : db $E4 : dw $2C37
	dw $01EC : db $E4 : dw $2C37
	dw $000C : db $04 : dw $2C37
	dw $000C : db $FC : dw $2C37
	dw $000C : db $EC : dw $2C37
	dw $000C : db $F4 : dw $2C37
	dw $01EC : db $04 : dw $2C37
	dw $01EC : db $FC : dw $2C37
	dw $01EC : db $EC : dw $2C37
	dw $01EC : db $F4 : dw $2C37

	dw $0008, $01FC : db $F8 : dw $2C32
	dw $01F4 : db $F8 : dw $2C31
	dw $01F4 : db $F0 : dw $2C32
	dw $01EC : db $F0 : dw $2C31
	dw $000C : db $08 : dw $2C32
	dw $0004 : db $08 : dw $2C31
	dw $0004 : db $00 : dw $2C32
	dw $01FC : db $00 : dw $2C31
	dw $000D : db $00 : dw $8001

	dw $0025, $01E8 : db $14 : dw $AC36
	dw $0010 : db $E4 : dw $6C36
	dw $01E8 : db $0C : dw $AC35
	dw $01F0 : db $04 : dw $AC35
	dw $01F8 : db $FC : dw $AC35
	dw $0000 : db $F4 : dw $AC35
	dw $0008 : db $EC : dw $AC35
	dw $0010 : db $EC : dw $6C35
	dw $01F0 : db $0C : dw $6C35
	dw $01F8 : db $04 : dw $6C35
	dw $0008 : db $F4 : dw $6C35
	dw $0000 : db $FC : dw $6C35
	dw $0100 : db $80 : dw $0018
	dw $01EE : db $1A : dw $AC36
	dw $01E2 : db $0E : dw $AC36
	dw $0016 : db $EA : dw $6C36
	dw $000A : db $DE : dw $6C36
	dw $0002 : db $E6 : dw $AC35
	dw $01FA : db $EE : dw $AC35
	dw $01F2 : db $F6 : dw $AC35
	dw $01EA : db $FE : dw $AC35
	dw $01E2 : db $06 : dw $AC35
	dw $01EE : db $12 : dw $AC35
	dw $01F6 : db $0A : dw $AC35
	dw $01FE : db $02 : dw $AC35
	dw $0006 : db $FA : dw $AC35
	dw $000E : db $F2 : dw $AC35
	dw $000A : db $E6 : dw $6C35
	dw $0016 : db $F2 : dw $6C35
	dw $01F6 : db $12 : dw $6C35
	dw $01EA : db $06 : dw $6C35
	dw $01F2 : db $FE : dw $6C35
	dw $0002 : db $EE : dw $6C35
	dw $01FA : db $F6 : dw $6C35
	dw $01FE : db $0A : dw $6C35
	dw $000E : db $FA : dw $6C35
	dw $0006 : db $02 : dw $6C35

	dw $0025, $01E8 : db $14 : dw $AC36
	dw $0010 : db $E4 : dw $6C36
	dw $01E8 : db $0C : dw $AC35
	dw $01F0 : db $04 : dw $AC35
	dw $01F8 : db $FC : dw $AC35
	dw $0000 : db $F4 : dw $AC35
	dw $0008 : db $EC : dw $AC35
	dw $0010 : db $EC : dw $6C35
	dw $01F0 : db $0C : dw $6C35
	dw $01F8 : db $04 : dw $6C35
	dw $0008 : db $F4 : dw $6C35
	dw $0000 : db $FC : dw $6C35
	dw $0100 : db $80 : dw $0018
	dw $0019 : db $ED : dw $6C36
	dw $0007 : db $DB : dw $6C36
	dw $01F1 : db $1D : dw $AC36
	dw $01DF : db $0B : dw $AC36
	dw $01FF : db $E3 : dw $AC35
	dw $01F7 : db $EB : dw $AC35
	dw $01EF : db $F3 : dw $AC35
	dw $01E7 : db $FB : dw $AC35
	dw $01DF : db $03 : dw $AC35
	dw $01F1 : db $15 : dw $AC35
	dw $01F9 : db $0D : dw $AC35
	dw $0001 : db $05 : dw $AC35
	dw $0009 : db $FD : dw $AC35
	dw $0011 : db $F5 : dw $AC35
	dw $0007 : db $E3 : dw $6C35
	dw $01E7 : db $03 : dw $6C35
	dw $0019 : db $F5 : dw $6C35
	dw $01F9 : db $15 : dw $6C35
	dw $01EF : db $FB : dw $6C35
	dw $01FF : db $EB : dw $6C35
	dw $01F7 : db $F3 : dw $6C35
	dw $0001 : db $0D : dw $6C35
	dw $0011 : db $FD : dw $6C35
	dw $0009 : db $05 : dw $6C35

	dw $0025, $01E8 : db $14 : dw $AC36
	dw $0010 : db $E4 : dw $6C36
	dw $01E8 : db $0C : dw $AC35
	dw $01F0 : db $04 : dw $AC35
	dw $01F8 : db $FC : dw $AC35
	dw $0000 : db $F4 : dw $AC35
	dw $0008 : db $EC : dw $AC35
	dw $0010 : db $EC : dw $6C35
	dw $01F0 : db $0C : dw $6C35
	dw $01F8 : db $04 : dw $6C35
	dw $0008 : db $F4 : dw $6C35
	dw $0000 : db $FC : dw $6C35
	dw $0100 : db $80 : dw $0018
	dw $001B : db $EF : dw $6C36
	dw $0005 : db $D9 : dw $6C36
	dw $01F3 : db $1F : dw $AC36
	dw $01DD : db $09 : dw $AC36
	dw $01FD : db $E1 : dw $AC35
	dw $01F5 : db $E9 : dw $AC35
	dw $01ED : db $F1 : dw $AC35
	dw $01E5 : db $F9 : dw $AC35
	dw $01DD : db $01 : dw $AC35
	dw $01F3 : db $17 : dw $AC35
	dw $01FB : db $0F : dw $AC35
	dw $0003 : db $07 : dw $AC35
	dw $000B : db $FF : dw $AC35
	dw $0013 : db $F7 : dw $AC35
	dw $001B : db $F7 : dw $6C35
	dw $0005 : db $E1 : dw $6C35
	dw $01FB : db $17 : dw $6C35
	dw $01E5 : db $01 : dw $6C35
	dw $01ED : db $F9 : dw $6C35
	dw $01FD : db $E9 : dw $6C35
	dw $01F5 : db $F1 : dw $6C35
	dw $0003 : db $0F : dw $6C35
	dw $0013 : db $FF : dw $6C35
	dw $000B : db $07 : dw $6C35

	dw $0025, $01E8 : db $14 : dw $AC36
	dw $0010 : db $E4 : dw $6C36
	dw $01E8 : db $0C : dw $AC35
	dw $01F0 : db $04 : dw $AC35
	dw $01F8 : db $FC : dw $AC35
	dw $0000 : db $F4 : dw $AC35
	dw $0008 : db $EC : dw $AC35
	dw $0010 : db $EC : dw $6C35
	dw $01F0 : db $0C : dw $6C35
	dw $01F8 : db $04 : dw $6C35
	dw $0008 : db $F4 : dw $6C35
	dw $0000 : db $FC : dw $6C35
	dw $0100 : db $80 : dw $0018
	dw $01F4 : db $20 : dw $AC36
	dw $01DC : db $08 : dw $AC36
	dw $001C : db $F0 : dw $6C36
	dw $0004 : db $D8 : dw $6C36
	dw $0014 : db $F8 : dw $AC35
	dw $000C : db $00 : dw $AC35
	dw $0004 : db $08 : dw $AC35
	dw $01FC : db $10 : dw $AC35
	dw $01F4 : db $18 : dw $AC35
	dw $01DC : db $00 : dw $AC35
	dw $01E4 : db $F8 : dw $AC35
	dw $01EC : db $F0 : dw $AC35
	dw $01F4 : db $E8 : dw $AC35
	dw $01FC : db $E0 : dw $AC35
	dw $001C : db $F8 : dw $6C35
	dw $0004 : db $E0 : dw $6C35
	dw $01FC : db $18 : dw $6C35
	dw $01E4 : db $00 : dw $6C35
	dw $01EC : db $F8 : dw $6C35
	dw $01FC : db $E8 : dw $6C35
	dw $01F4 : db $F0 : dw $6C35
	dw $0004 : db $10 : dw $6C35
	dw $0014 : db $00 : dw $6C35
	dw $000C : db $08 : dw $6C35

	dw $0006, $0000 : db $F4 : dw $6C32
	dw $0008 : db $F4 : dw $6C31
	dw $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31

	dw $000C, $01FC : db $08 : dw $2C33
	dw $01FC : db $F0 : dw $2C33
	dw $0000 : db $08 : dw $2C33
	dw $01F8 : db $08 : dw $2C33
	dw $0000 : db $F0 : dw $2C33
	dw $01F8 : db $F0 : dw $2C33
	dw $0000 : db $00 : dw $2C33
	dw $0000 : db $F8 : dw $2C33
	dw $01F8 : db $00 : dw $2C33
	dw $01F8 : db $F8 : dw $2C33
	dw $01FC : db $00 : dw $2C33
	dw $01FC : db $F8 : dw $2C33
	dw $000B : db $00 : dw $8001

	dw $001F, $0008 : db $EC : dw $6C32
	dw $0010 : db $EC : dw $6C31
	dw $01E8 : db $0C : dw $6C32
	dw $01F0 : db $0C : dw $6C31
	dw $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $0000 : db $F4 : dw $6C32
	dw $0008 : db $F4 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31
	dw $0100 : db $80 : dw $0014
	dw $0002 : db $E6 : dw $6C32
	dw $000A : db $E6 : dw $6C31
	dw $000E : db $F2 : dw $6C32
	dw $0016 : db $F2 : dw $6C31
	dw $01EE : db $12 : dw $6C32
	dw $01F6 : db $12 : dw $6C31
	dw $01E2 : db $06 : dw $6C32
	dw $01EA : db $06 : dw $6C31
	dw $01EA : db $FE : dw $6C32
	dw $01F2 : db $FE : dw $6C31
	dw $01FA : db $EE : dw $6C32
	dw $0002 : db $EE : dw $6C31
	dw $01F2 : db $F6 : dw $6C32
	dw $01FA : db $F6 : dw $6C31
	dw $01F6 : db $0A : dw $6C32
	dw $01FE : db $0A : dw $6C31
	dw $0006 : db $FA : dw $6C32
	dw $000E : db $FA : dw $6C31
	dw $01FE : db $02 : dw $6C32
	dw $0006 : db $02 : dw $6C31

	dw $001F, $0008 : db $EC : dw $6C32
	dw $0010 : db $EC : dw $6C31
	dw $01E8 : db $0C : dw $6C32
	dw $01F0 : db $0C : dw $6C31
	dw $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $0000 : db $F4 : dw $6C32
	dw $0008 : db $F4 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31
	dw $0100 : db $80 : dw $0014
	dw $01FF : db $E3 : dw $6C32
	dw $0007 : db $E3 : dw $6C31
	dw $01DF : db $03 : dw $6C32
	dw $01E7 : db $03 : dw $6C31
	dw $0011 : db $F5 : dw $6C32
	dw $0019 : db $F5 : dw $6C31
	dw $01F1 : db $15 : dw $6C32
	dw $01F9 : db $15 : dw $6C31
	dw $01E7 : db $FB : dw $6C32
	dw $01EF : db $FB : dw $6C31
	dw $01F7 : db $EB : dw $6C32
	dw $01FF : db $EB : dw $6C31
	dw $01EF : db $F3 : dw $6C32
	dw $01F7 : db $F3 : dw $6C31
	dw $01F9 : db $0D : dw $6C32
	dw $0001 : db $0D : dw $6C31
	dw $0009 : db $FD : dw $6C32
	dw $0011 : db $FD : dw $6C31
	dw $0001 : db $05 : dw $6C32
	dw $0009 : db $05 : dw $6C31

	dw $001F, $0008 : db $EC : dw $6C32
	dw $0010 : db $EC : dw $6C31
	dw $01E8 : db $0C : dw $6C32
	dw $01F0 : db $0C : dw $6C31
	dw $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $0000 : db $F4 : dw $6C32
	dw $0008 : db $F4 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31
	dw $0100 : db $80 : dw $0014
	dw $0013 : db $F7 : dw $6C32
	dw $001B : db $F7 : dw $6C31
	dw $01FD : db $E1 : dw $6C32
	dw $0005 : db $E1 : dw $6C31
	dw $01F3 : db $17 : dw $6C32
	dw $01FB : db $17 : dw $6C31
	dw $01DD : db $01 : dw $6C32
	dw $01E5 : db $01 : dw $6C31
	dw $01E5 : db $F9 : dw $6C32
	dw $01ED : db $F9 : dw $6C31
	dw $01F5 : db $E9 : dw $6C32
	dw $01FD : db $E9 : dw $6C31
	dw $01ED : db $F1 : dw $6C32
	dw $01F5 : db $F1 : dw $6C31
	dw $01FB : db $0F : dw $6C32
	dw $0003 : db $0F : dw $6C31
	dw $000B : db $FF : dw $6C32
	dw $0013 : db $FF : dw $6C31
	dw $0003 : db $07 : dw $6C32
	dw $000B : db $07 : dw $6C31
	dw $001F, $0008 : db $EC : dw $6C32
	dw $0010 : db $EC : dw $6C31
	dw $01E8 : db $0C : dw $6C32
	dw $01F0 : db $0C : dw $6C31
	dw $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $0000 : db $F4 : dw $6C32
	dw $0008 : db $F4 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31
	dw $0100 : db $80 : dw $0014	; $93D0A8 - 0x09D0A8
	dw $0014 : db $F8 : dw $6C32
	dw $001C : db $F8 : dw $6C31
	dw $01FC : db $E0 : dw $6C32
	dw $0004 : db $E0 : dw $6C31
	dw $01F4 : db $18 : dw $6C32
	dw $01FC : db $18 : dw $6C31
	dw $01DC : db $00 : dw $6C32
	dw $01E4 : db $00 : dw $6C31
	dw $01E4 : db $F8 : dw $6C32
	dw $01EC : db $F8 : dw $6C31
	dw $01F4 : db $E8 : dw $6C32
	dw $01FC : db $E8 : dw $6C31
	dw $01EC : db $F0 : dw $6C32
	dw $01F4 : db $F0 : dw $6C31
	dw $01FC : db $10 : dw $6C32
	dw $0004 : db $10 : dw $6C31
	dw $000C : db $00 : dw $6C32
	dw $0014 : db $00 : dw $6C31
	dw $0004 : db $08 : dw $6C32
	dw $000C : db $08 : dw $6C31

;----------------------------------------------------------;
; Spazer / Spazer+Ice / Spazer+Wave / Spazer+Ice+Wave

org $93D10E	; 0x09D10E
	dw $0004, $01F4 : db $00 : dw $6C32
	dw $01FC : db $00 : dw $6C31
	dw $01FC : db $F8 : dw $6C32
	dw $0004 : db $F8 : dw $6C31
	
	dw $000C, $01F4 : db $00 : dw $6C32
	dw $01FC : db $00 : dw $6C31
	dw $01FC : db $F8 : dw $6C32
	dw $0004 : db $F8 : dw $6C31
	dw $01EE : db $FA : dw $6C32
	dw $01F6 : db $FA : dw $6C31
	dw $01F6 : db $F2 : dw $6C32
	dw $01FE : db $F2 : dw $6C31
	dw $01FA : db $06 : dw $6C32
	dw $0002 : db $06 : dw $6C31
	dw $0002 : db $FE : dw $6C32
	dw $000A : db $FE : dw $6C31

	dw $000C, $01F4 : db $00 : dw $6C32
	dw $01FC : db $00 : dw $6C31
	dw $01FC : db $F8 : dw $6C32
	dw $0004 : db $F8 : dw $6C31
	dw $01EB : db $F7 : dw $6C32
	dw $01F3 : db $F7 : dw $6C31
	dw $01F3 : db $EF : dw $6C32
	dw $01FB : db $EF : dw $6C31
	dw $01FD : db $09 : dw $6C32
	dw $0005 : db $09 : dw $6C31
	dw $0005 : db $01 : dw $6C32
	dw $000D : db $01 : dw $6C31
	
	dw $000C, $01F4 : db $00 : dw $6C32
	dw $01FC : db $00 : dw $6C31
	dw $01FC : db $F8 : dw $6C32
	dw $0004 : db $F8 : dw $6C31
	dw $01E9 : db $F5 : dw $6C32
	dw $01F1 : db $F5 : dw $6C31
	dw $01F1 : db $ED : dw $6C32
	dw $01F9 : db $ED : dw $6C31
	dw $01FF : db $0B : dw $6C32
	dw $0007 : db $0B : dw $6C31
	dw $0007 : db $03 : dw $6C32
	dw $000F : db $03 : dw $6C31

	dw $000C, $01F4 : db $00 : dw $6C32
	dw $01FC : db $00 : dw $6C31
	dw $01FC : db $F8 : dw $6C32
	dw $0004 : db $F8 : dw $6C31
	dw $01E8 : db $F4 : dw $6C32
	dw $01F0 : db $F4 : dw $6C31
	dw $01F0 : db $EC : dw $6C32
	dw $01F8 : db $EC : dw $6C31
	dw $0000 : db $0C : dw $6C32
	dw $0008 : db $0C : dw $6C31
	dw $0008 : db $04 : dw $6C32
	dw $0010 : db $04 : dw $6C31

	dw $000C, $01F1 : db $FD : dw $6C32
	dw $01F9 : db $FD : dw $6C31
	dw $01F9 : db $F5 : dw $6C32
	dw $0001 : db $F5 : dw $6C31
	dw $01F7 : db $03 : dw $6C32
	dw $01FF : db $03 : dw $6C31
	dw $01FF : db $FB : dw $6C32
	dw $0007 : db $FB : dw $6C31
	dw $01F4 : db $00 : dw $6C32
	dw $01FC : db $00 : dw $6C31
	dw $01FC : db $F8 : dw $6C32
	dw $0004 : db $F8 : dw $6C31
; $93D25A - 0x09D25A
	dw $0004, $01F4 : db $F8 : dw $EC32
	dw $01FC : db $F8 : dw $EC31
	dw $01FC : db $00 : dw $EC32
	dw $0004 : db $00 : dw $EC31

	dw $000C, $01F4 : db $F8 : dw $EC32
	dw $01FC : db $F8 : dw $EC31
	dw $01FC : db $00 : dw $EC32
	dw $0004 : db $00 : dw $EC31
	dw $01EE : db $FE : dw $EC32
	dw $01F6 : db $FE : dw $EC31
	dw $01F6 : db $06 : dw $EC32
	dw $01FE : db $06 : dw $EC31
	dw $01FA : db $F2 : dw $EC32
	dw $0002 : db $F2 : dw $EC31
	dw $0002 : db $FA : dw $EC32
	dw $000A : db $FA : dw $EC31
	
	dw $000C, $01F4 : db $F8 : dw $EC32
	dw $01FC : db $F8 : dw $EC31
	dw $01FC : db $00 : dw $EC32
	dw $0004 : db $00 : dw $EC31
	dw $01EB : db $01 : dw $EC32
	dw $01F3 : db $01 : dw $EC31
	dw $01F3 : db $09 : dw $EC32
	dw $01FB : db $09 : dw $EC31
	dw $01FD : db $EF : dw $EC32
	dw $0005 : db $EF : dw $EC31
	dw $0005 : db $F7 : dw $EC32
	dw $000D : db $F7 : dw $EC31

	dw $000C, $01F4 : db $F8 : dw $EC32
	dw $01FC : db $F8 : dw $EC31
	dw $01FC : db $00 : dw $EC32
	dw $0004 : db $00 : dw $EC31
	dw $01E9 : db $03 : dw $EC32
	dw $01F1 : db $03 : dw $EC31
	dw $01F1 : db $0B : dw $EC32
	dw $01F9 : db $0B : dw $EC31
	dw $01FF : db $ED : dw $EC32
	dw $0007 : db $ED : dw $EC31
	dw $0007 : db $F5 : dw $EC32
	dw $000F : db $F5 : dw $EC31

	dw $000C, $01F4	: db $F8 : dw $EC32
	dw $01FC : db $F8 : dw $EC31
	dw $01FC : db $00 : dw $EC32
	dw $0004 : db $00 : dw $EC31
	dw $01E8 : db $04 : dw $EC32
	dw $01F0 : db $04 : dw $EC31
	dw $01F0 : db $0C : dw $EC32
	dw $01F8 : db $0C : dw $EC31
	dw $0000 : db $EC : dw $EC32
	dw $0008 : db $EC : dw $EC31
	dw $0008 : db $F4 : dw $EC32
	dw $0010 : db $F4 : dw $EC31

	dw $000C, $01F1 : db $FB : dw $EC32
	dw $01F9 : db $FB : dw $EC31
	dw $01F9 : db $03 : dw $EC32
	dw $0001 : db $03 : dw $EC31
	dw $01F6 : db $F5 : dw $EC32
	dw $01FF : db $F5 : dw $EC31
	dw $01FF : db $FD : dw $EC32
	dw $0007 : db $FD : dw $EC31
	dw $01F4 : db $F8 : dw $EC32
	dw $01FC : db $F8 : dw $EC31
	dw $01FC : db $00 : dw $EC32
	dw $0004 : db $00 : dw $EC31
; $93D3A6 - 0x09D3A6
	dw $0004, $0004 : db $F8 : dw $AC32
	dw $01FC : db $F8 : dw $AC31
	dw $01FC : db $00 : dw $AC32
	dw $01F4 : db $00 : dw $AC31

	dw $000C, $0004 : db $F8 : dw $AC32
	dw $01FC : db $F8 : dw $AC31
	dw $01FC : db $00 : dw $AC32
	dw $01F4 : db $00 : dw $AC31
	dw $000A : db $FE : dw $AC32
	dw $0002 : db $FE : dw $AC31
	dw $0002 : db $06 : dw $AC32
	dw $01FA : db $06 : dw $AC31
	dw $01FE : db $F2 : dw $AC32
	dw $01F6 : db $F2 : dw $AC31
	dw $01F6 : db $FA : dw $AC32
	dw $01EF : db $FA : dw $AC31

	dw $000C, $0004 : db $F8 : dw $AC32
	dw $01FC : db $F8 : dw $AC31
	dw $01FC : db $00 : dw $AC32
	dw $01F4 : db $00 : dw $AC31
	dw $000D : db $01 : dw $AC32
	dw $0005 : db $01 : dw $AC31
	dw $0005 : db $09 : dw $AC32
	dw $01FD : db $09 : dw $AC31
	dw $01FB : db $EF : dw $AC32
	dw $01F3 : db $EF : dw $AC31
	dw $01F3 : db $F7 : dw $AC32
	dw $01EB : db $F7 : dw $AC31

	dw $000C, $0004 : db $F8 : dw $AC32
	dw $01FC : db $F8 : dw $AC31
	dw $01FC : db $00 : dw $AC32
	dw $01F4 : db $00 : dw $AC31
	dw $000F : db $03 : dw $AC32
	dw $0007 : db $03 : dw $AC31
	dw $0007 : db $0B : dw $AC32
	dw $01FF : db $0B : dw $AC31
	dw $01F9 : db $ED : dw $AC32
	dw $01F1 : db $ED : dw $AC31
	dw $01F1 : db $F5 : dw $AC32
	dw $01E9 : db $F5 : dw $AC31

	dw $000C, $0004 : db $F8 : dw $AC32
	dw $01FC : db $F8 : dw $AC31
	dw $01FC : db $00 : dw $AC32
	dw $01F4 : db $00 : dw $AC31
	dw $0010 : db $04 : dw $AC32
	dw $0008 : db $04 : dw $AC31
	dw $0008 : db $0C : dw $AC32
	dw $0000 : db $0C : dw $AC31
	dw $01F8 : db $EC : dw $AC32
	dw $01F0 : db $EC : dw $AC31
	dw $01F0 : db $F4 : dw $AC32
	dw $01E8 : db $F4 : dw $AC31

	dw $000C, $0007 : db $FB : dw $AC32
	dw $01FF : db $FB : dw $AC31
	dw $01FF : db $03 : dw $AC32
	dw $01F7 : db $03 : dw $AC31
	dw $0001 : db $F5 : dw $AC32
	dw $01F9 : db $F5 : dw $AC31
	dw $01F9 : db $FD : dw $AC32
	dw $01F1 : db $FD : dw $AC31
	dw $0004 : db $F8 : dw $AC32
	dw $01FC : db $F8 : dw $AC31
	dw $01FC : db $00 : dw $AC32
	dw $01F4 : db $00 : dw $AC31
; $93D4F2 - 0x09D4F2
	dw $0004, $0004 : db $00 : dw $2C32
	dw $01FC : db $00 : dw $2C31
	dw $01FC : db $F8 : dw $2C32
	dw $01F4 : db $F8 : dw $2C31

	dw $000C, $0004 : db $00 : dw $2C32
	dw $01FC : db $00 : dw $2C31
	dw $01FC : db $F8 : dw $2C32
	dw $01F4 : db $F8 : dw $2C31
	dw $000A : db $FA : dw $2C32
	dw $0002 : db $FA : dw $2C31
	dw $0002 : db $F2 : dw $2C32
	dw $01FA : db $F2 : dw $2C31
	dw $01FE : db $06 : dw $2C32
	dw $01F6 : db $06 : dw $2C31
	dw $01F6 : db $FE : dw $2C32
	dw $01EE : db $FE : dw $2C31

	dw $000C, $0004 : db $00 : dw $2C32
	dw $01FC : db $00 : dw $2C31
	dw $01FC : db $F8 : dw $2C32
	dw $01F4 : db $F8 : dw $2C31
	dw $000D : db $F7 : dw $2C32
	dw $0005 : db $F7 : dw $2C31
	dw $0005 : db $EF : dw $2C32
	dw $01FD : db $EF : dw $2C31
	dw $01FB : db $09 : dw $2C32
	dw $01F3 : db $09 : dw $2C31
	dw $01F3 : db $01 : dw $2C32
	dw $01EB : db $01 : dw $2C31

	dw $000C, $0004 : db $00 : dw $2C32
	dw $01FC : db $00 : dw $2C31
	dw $01FC : db $F8 : dw $2C32
	dw $01F4 : db $F8 : dw $2C31
	dw $000F : db $F5 : dw $2C32
	dw $0007 : db $F5 : dw $2C31
	dw $0007 : db $ED : dw $2C32
	dw $01FF : db $ED : dw $2C31
	dw $01F9 : db $0B : dw $2C32
	dw $01F1 : db $0B : dw $2C31
	dw $01F1 : db $03 : dw $2C32
	dw $01E9 : db $03 : dw $2C31

	dw $000C, $0004 : db $00 : dw $2C32
	dw $01FC : db $00 : dw $2C31
	dw $01FC : db $F8 : dw $2C32
	dw $01F4 : db $F8 : dw $2C31
	dw $0010 : db $F4 : dw $2C32
	dw $0008 : db $F4 : dw $2C31
	dw $0008 : db $EC : dw $2C32
	dw $0000 : db $EC : dw $2C31
	dw $01F8 : db $0C : dw $2C32
	dw $01F0 : db $0C : dw $2C31
	dw $01F0 : db $04 : dw $2C32
	dw $01E8 : db $04 : dw $2C31

	dw $000C, $0007 : db $FD : dw $2C32
	dw $01FF : db $FD : dw $2C31
	dw $01FF : db $F5 : dw $2C32
	dw $01F7 : db $F5 : dw $2C31
	dw $0001 : db $03 : dw $2C32
	dw $01F9 : db $03 : dw $2C31
	dw $01F9 : db $FB : dw $2C32
	dw $01F1 : db $FB : dw $2C31
	dw $0004 : db $00 : dw $2C32
	dw $01FC : db $00 : dw $2C31
	dw $01FC : db $F8 : dw $2C32
	dw $01F4 : db $F8 : dw $2C31
; 93D63E - 0x09D63E

;----------------------------------------------------------;
; Charged Spazer / Spazer+Ice / Spazer+Wave / Spazer+Ice+Wave

org $93DA8E	; 0x09DA8E
	dw $000C, $0004 : db $08 : dw $2C37
	dw $0004 : db $00 : dw $2C37
	dw $0004 : db $F8 : dw $2C37
	dw $0004 : db $F0 : dw $2C37
	dw $01F4 : db $08 : dw $2C37
	dw $01F4 : db $00 : dw $2C37
	dw $01F4 : db $F8 : dw $2C37
	dw $01F4 : db $F0 : dw $2C37
org $93DACC	; 0x09DACC
	dw $000C, $0009 : db $08 : dw $2C37
	dw $0009 : db $00 : dw $2C37
	dw $0009 : db $F8 : dw $2C37
	dw $0009 : db $F0 : dw $2C37
	dw $01EF : db $08 : dw $2C37
	dw $01EF : db $00 : dw $2C37
	dw $01EF : db $F8 : dw $2C37
	dw $01EF : db $F0 : dw $2C37
org $93DB0A	; 0x09DB0A
	dw $000C, $000B : db $08 : dw $2C37
	dw $000B : db $00 : dw $2C37
	dw $000B : db $F8 : dw $2C37
	dw $000B : db $F0 : dw $2C37
	dw $01ED : db $08 : dw $2C37
	dw $01ED : db $00 : dw $2C37
	dw $01ED : db $F8 : dw $2C37
	dw $01ED : db $F0 : dw $2C37
org $93DB48	; 0x09DB48
	dw $000C, $000C : db $08 : dw $2C37
	dw $000C : db $00 : dw $2C37
	dw $000C : db $F8 : dw $2C37
	dw $000C : db $F0 : dw $2C37
	dw $01EC : db $08 : dw $2C37
	dw $01EC : db $00 : dw $2C37
	dw $01EC : db $F8 : dw $2C37
	dw $01EC : db $F0 : dw $2C37

org $93DBA6	; 0x09DBA6
	dw $0012, $0004 : db $08 : dw $EC36
	dw $01F4 : db $F0 : dw $2C36
	dw $01FC : db $F8 : dw $EC35
	dw $0004 : db $00 : dw $EC35
	dw $01FC : db $00 : dw $2C35
	dw $01F4 : db $F8 : dw $2C35
	dw $0007 : db $05 : dw $EC36
	dw $01F7 : db $ED : dw $2C36
	dw $01FF : db $F5 : dw $EC35
	dw $0007 : db $FD : dw $EC35
	dw $01FF : db $FD : dw $2C35
	dw $01F7 : db $F5 : dw $2C35
	dw $0001 : db $0B : dw $EC36
	dw $01F1 : db $F3 : dw $2C36
	dw $01F9 : db $FB : dw $EC35
	dw $0001 : db $03 : dw $EC35
	dw $01F9 : db $03 : dw $2C35
	dw $01F1 : db $FB : dw $2C35

org $93DC02	; 0x09DC02
	dw $0012, $0004 : db $08 : dw $EC36
	dw $01F4 : db $F0 : dw $2C36
	dw $01FC : db $F8 : dw $EC35
	dw $0004 : db $00 : dw $EC35
	dw $01FC : db $00 : dw $2C35
	dw $01F4 : db $F8 : dw $2C35
	dw $01FE : db $0E : dw $EC36	; $93DC24 - 0x09DC24
	dw $01EE : db $F6 : dw $2C36
	dw $01F6 : db $FE : dw $EC35
	dw $01FE : db $06 : dw $EC35
	dw $01F6 : db $06 : dw $2C35
	dw $01EE : db $FE : dw $2C35
	dw $000A : db $02 : dw $EC36
	dw $01FA : db $EA : dw $2C36
	dw $0002 : db $F2 : dw $EC35
	dw $000A : db $FA : dw $EC35
	dw $0002 : db $FA : dw $2C35
	dw $01FA : db $F2 : dw $2C35

org $93DC5E	; 0x09DC5E
	dw $0012, $0004 : db $08 : dw $EC36
	dw $01F4 : db $F0 : dw $2C36
	dw $01FC : db $F8 : dw $EC35
	dw $0004 : db $00 : dw $EC35
	dw $01FC : db $00 : dw $2C35
	dw $01F4 : db $F8 : dw $2C35
	dw $01FB : db $11 : dw $EC36	; $93DC80 - 0x09DC80
	dw $01EB : db $F9 : dw $2C36
	dw $01F3 : db $01 : dw $EC35
	dw $01FB : db $09 : dw $EC35
	dw $01F3 : db $09 : dw $2C35
	dw $01EB : db $01 : dw $2C35
	dw $000D : db $FF : dw $EC36
	dw $01FD : db $E7 : dw $2C36
	dw $0005 : db $EF : dw $EC35
	dw $000D : db $F7 : dw $EC35
	dw $0005 : db $F7 : dw $2C35
	dw $01FD : db $EF : dw $2C35

org $93DCBA	; 0x09DCBA
	dw $0012, $0004 : db $08 : dw $EC36
	dw $01F4 : db $F0 : dw $2C36
	dw $01FC : db $F8 : dw $EC35
	dw $0004 : db $00 : dw $EC35
	dw $01FC : db $00 : dw $2C35
	dw $01F4 : db $F8 : dw $2C35
	dw $01F9 : db $13 : dw $EC36	; $93DCDA - 0x09DCDA
	dw $01E9 : db $FB : dw $2C36
	dw $01F1 : db $03 : dw $EC35
	dw $01F9 : db $0B : dw $EC35
	dw $01F1 : db $0B : dw $2C35
	dw $01E9 : db $03 : dw $2C35
	dw $000F : db $FD : dw $EC36
	dw $01FF : db $E5 : dw $2C36
	dw $0007 : db $ED : dw $EC35
	dw $000F : db $F5 : dw $EC35
	dw $0007 : db $F5 : dw $2C35
	dw $01FF : db $ED : dw $2C35

org $93DD16	; 0x09DD16
	dw $0012, $0004 : db $08 : dw $EC36
	dw $01F4 : db $F0 : dw $2C36
	dw $01FC : db $F8 : dw $EC35
	dw $0004 : db $00 : dw $EC35
	dw $01FC : db $00 : dw $2C35
	dw $01F4 : db $F8 : dw $2C35
	dw $01F8 : db $14 : dw $EC36	; $93DC36 - 0x09DC36
	dw $01E8 : db $FC : dw $2C36
	dw $01F0 : db $04 : dw $EC35
	dw $01F8 : db $0C : dw $EC35
	dw $01F0 : db $0C : dw $2C35
	dw $01E8 : db $04 : dw $2C35
	dw $0010 : db $FC : dw $EC36
	dw $0000 : db $E4 : dw $2C36
	dw $0008 : db $EC : dw $EC35
	dw $0010 : db $F4 : dw $EC35
	dw $0008 : db $F4 : dw $2C35
	dw $0000 : db $EC : dw $2C35

org $93DD92	; 0x09DD92
	dw $0012, $01F4 : db $08 : dw $AC36
	dw $0004 : db $F0 : dw $6C36
	dw $01FC : db $F8 : dw $AC35
	dw $01F4 : db $00 : dw $AC35
	dw $01FC : db $00 : dw $6C35
	dw $0004 : db $F8 : dw $6C35
	dw $01F1 : db $05 : dw $AC36	; $93DDB2 - 0x09DDB2
	dw $0001 : db $ED : dw $6C36
	dw $01F9 : db $F5 : dw $AC35
	dw $01F1 : db $FD : dw $AC35
	dw $01F9 : db $FD : dw $6C35
	dw $0001 : db $F5 : dw $6C35
	dw $01F7 : db $0B : dw $AC36
	dw $0007 : db $F3 : dw $6C36
	dw $01FF : db $FB : dw $AC35
	dw $01F7 : db $03 : dw $AC35
	dw $01FF : db $03 : dw $6C35
	dw $0007 : db $FB : dw $6C35

org $93DDEE	; 0x09DDEE
	dw $0012, $01F4 : db $08 : dw $AC36
	dw $0004 : db $F0 : dw $6C36
	dw $01FC : db $F8 : dw $AC35
	dw $01F4 : db $00 : dw $AC35
	dw $01FC : db $00 : dw $6C35
	dw $0004 : db $F8 : dw $6C35
	dw $01FA : db $0E : dw $AC36	; $93DE10 - 0x09DE10
	dw $000A : db $F6 : dw $6C36
	dw $0002 : db $FE : dw $AC35
	dw $01FA : db $06 : dw $AC35
	dw $0002 : db $06 : dw $6C35
	dw $000A : db $FE : dw $6C35
	dw $01EE : db $02 : dw $AC36
	dw $01FE : db $EA : dw $6C36
	dw $01F6 : db $F2 : dw $AC35
	dw $01EE : db $FA : dw $AC35
	dw $01F6 : db $FA : dw $6C35
	dw $01FE : db $F2 : dw $6C35

org $93DE4A	; 0x09DE4A
	dw $0012, $01F4 : db $08 : dw $AC36
	dw $0004 : db $F0 : dw $6C36
	dw $01FC : db $F8 : dw $AC35
	dw $01F4 : db $00 : dw $AC35
	dw $01FC : db $00 : dw $6C35
	dw $0004 : db $F8 : dw $6C35
	dw $01FD : db $11 : dw $AC36	; $93DE6C - 0x09DE6C
	dw $000D : db $F9 : dw $6C36
	dw $0005 : db $01 : dw $AC35
	dw $01FD : db $09 : dw $AC35
	dw $0005 : db $09 : dw $6C35
	dw $000D : db $01 : dw $6C35
	dw $01EB : db $FF : dw $AC36
	dw $01FB : db $E7 : dw $6C36
	dw $01F3 : db $EF : dw $AC35
	dw $01EB : db $F7 : dw $AC35
	dw $01F3 : db $F7 : dw $6C35
	dw $01FB : db $EF : dw $6C35

org $93DEA6	; 0x09DEA6
	dw $0012, $01F4 : db $08 : dw $AC36
	dw $0004 : db $F0 : dw $6C36
	dw $01FC : db $F8 : dw $AC35
	dw $01F4 : db $00 : dw $AC35
	dw $01FC : db $00 : dw $6C35
	dw $0004 : db $F8 : dw $6C35
	dw $01FF : db $13 : dw $AC36	; $93DEC6 - 0x09DEC6
	dw $000F : db $FB : dw $6C36
	dw $0007 : db $03 : dw $AC35
	dw $01FF : db $0B : dw $AC35
	dw $0007 : db $0B : dw $6C35
	dw $000F : db $03 : dw $6C35
	dw $01E9 : db $FD : dw $AC36
	dw $01F9 : db $E5 : dw $6C36
	dw $01F1 : db $ED : dw $AC35
	dw $01E9 : db $F5 : dw $AC35
	dw $01F1 : db $F5 : dw $6C35
	dw $01F9 : db $ED : dw $6C35

org $93DF02	; 0x09DF02
	dw $0012, $01F4 : db $08 : dw $AC36
	dw $0004 : db $F0 : dw $6C36
	dw $01FC : db $F8 : dw $AC35
	dw $01F4 : db $00 : dw $AC35
	dw $01FC : db $00 : dw $6C35
	dw $0004 : db $F8 : dw $6C35
	dw $0000 : db $14 : dw $AC36	; $93DF22 - 0x09DF22
	dw $0010 : db $FC : dw $6C36
	dw $0008 : db $04 : dw $AC35
	dw $0000 : db $0C : dw $AC35
	dw $0008 : db $0C : dw $6C35
	dw $0010 : db $04 : dw $6C35
	dw $01E8 : db $FC : dw $AC36
	dw $01F8 : db $E4 : dw $6C36
	dw $01F0 : db $EC : dw $AC35
	dw $01E8 : db $F4 : dw $AC35
	dw $01F0 : db $F4 : dw $6C35
	dw $01F8 : db $EC : dw $6C35
; $93DF5E
	dw $0002, $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31
; The order of the spritemaps differs from vanilla starting here
	dw $0013, $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31
	dw $0000 : db $F4 : dw $6C32
	dw $0008 : db $F4 : dw $6C31
	dw $0100 : db $80 : dw $000C
	dw $01FE : db $0A : dw $6C31
	dw $0006 : db $FA : dw $6C32
	dw $000E : db $FA : dw $6C31
	dw $01FE : db $02 : dw $6C32
	dw $0006 : db $02 : dw $6C31
	dw $01FA : db $EE : dw $6C32
	dw $0002 : db $EE : dw $6C31
	dw $01EA : db $FE : dw $6C32
	dw $01F2 : db $FE : dw $6C31
	dw $01F2 : db $F6 : dw $6C32
	dw $01FA : db $F6 : dw $6C31
	dw $01F6 : db $0A : dw $6C32

	dw $0013, $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31
	dw $0008 : db $F4 : dw $6C31
	dw $0000 : db $F4 : dw $6C32
	dw $0100 : db $80 : dw $000C
	dw $01F7 : db $EB : dw $6C32
	dw $01FF : db $EB : dw $6C31
	dw $0001 : db $05 : dw $6C32
	dw $0001 : db $0D : dw $6C31
	dw $0009 : db $FD : dw $6C32
	dw $0011 : db $FD : dw $6C31
	dw $01E7 : db $FB : dw $6C32
	dw $01EF : db $FB : dw $6C31
	dw $01EF : db $F3 : dw $6C32
	dw $01F7 : db $F3 : dw $6C31
	dw $01F9 : db $0D : dw $6C32
	dw $0009 : db $05 : dw $6C31

	dw $0013, $0000 : db $F4 : dw $6C32
	dw $0008 : db $F4 : dw $6C31
	dw $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31
	dw $0100 : db $80 : dw $000C
	dw $0013 : db $FF : dw $6C31
	dw $01F5 : db $E9 : dw $6C32
	dw $01FD : db $E9 : dw $6C31
	dw $000B : db $FF : dw $6C32
	dw $000B : db $07 : dw $6C31
	dw $01E5 : db $F9 : dw $6C32
	dw $01ED : db $F9 : dw $6C31
	dw $01ED : db $F1 : dw $6C32
	dw $01F5 : db $F1 : dw $6C31
	dw $01FB : db $0F : dw $6C32
	dw $0003 : db $0F : dw $6C31
	dw $0003 : db $07 : dw $6C32

	dw $0013, $0008 : db $F4 : dw $6C31
	dw $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31
	dw $0000 : db $F4 : dw $6C32
	dw $0100 : db $80 : dw $000C
	dw $01F4 : db $E8 : dw $6C32
	dw $01FC : db $E8 : dw $6C31
	dw $000C : db $00 : dw $6C32
	dw $0014 : db $00 : dw $6C31
	dw $01E4 : db $F8 : dw $6C32
	dw $01EC : db $F8 : dw $6C31
	dw $01EC : db $F0 : dw $6C32
	dw $01F4 : db $F0 : dw $6C31
	dw $01FC : db $10 : dw $6C32
	dw $0004 : db $10 : dw $6C31
	dw $0004 : db $08 : dw $6C32
	dw $000C : db $08 : dw $6C31

	dw $0012, $0003 : db $F7 : dw $6C32
	dw $000B : db $F7 : dw $6C31
	dw $0000 : db $F4 : dw $6C32
	dw $0008 : db $F4 : dw $6C31
	dw $01FD : db $F1 : dw $6C32
	dw $0005 : db $F1 : dw $6C31
	dw $01ED : db $01 : dw $6C32
	dw $01F5 : db $01 : dw $6C31
	dw $01F5 : db $F9 : dw $6C32
	dw $01FD : db $F9 : dw $6C31
	dw $01F3 : db $07 : dw $6C32
	dw $01FB : db $07 : dw $6C31
	dw $01FB : db $FF : dw $6C32
	dw $0003 : db $FF : dw $6C31
	dw $01F0 : db $04 : dw $6C32
	dw $01F8 : db $04 : dw $6C31
	dw $01F8 : db $FC : dw $6C32
	dw $0000 : db $FC : dw $6C31

	dw $0006, $0000 : db $04 : dw $EC32
	dw $0008 : db $04 : dw $EC31
	dw $01F0 : db $F4 : dw $EC32
	dw $01F8 : db $F4 : dw $EC31
	dw $01F8 : db $FC : dw $EC32
	dw $0000 : db $FC : dw $EC31

	dw $0012, $0006 : db $FE : dw $EC32
	dw $000E : db $FE : dw $EC31
	dw $0000 : db $04 : dw $EC32
	dw $0008 : db $04 : dw $EC31
	dw $01FA : db $0A : dw $EC32
	dw $0002 : db $0A : dw $EC31
	dw $01F0 : db $F4 : dw $EC32
	dw $01F8 : db $F4 : dw $EC31
	dw $01F8 : db $FC : dw $EC32
	dw $0000 : db $FC : dw $EC31
	dw $01EA : db $FA : dw $EC32
	dw $01F2 : db $FA : dw $EC31
	dw $01F2 : db $02 : dw $EC32
	dw $01FA : db $02 : dw $EC31
	dw $01F6 : db $EE : dw $EC32
	dw $01FE : db $EE : dw $EC31
	dw $01FE : db $F6 : dw $EC32
	dw $0006 : db $F6 : dw $EC31

org $93E1C6	; 0x9E1C6
	dw $0012, $01F7 : db $0D : dw $EC32
	dw $01FF : db $0D : dw $EC31
	dw $0009 : db $FB : dw $EC32
	dw $0011 : db $FB : dw $EC31
	dw $0000 : db $04 : dw $EC32
	dw $0008 : db $04 : dw $EC31
	dw $01F0 : db $F4 : dw $EC32
	dw $01F8 : db $F4 : dw $EC31
	dw $01F8 : db $FC : dw $EC32
	dw $0000 : db $FC : dw $EC31
	dw $01E7 : db $FD : dw $EC32
	dw $01EF : db $FD : dw $EC31
	dw $01EF : db $05 : dw $EC32
	dw $01F7 : db $05 : dw $EC31
	dw $01F9 : db $EB : dw $EC32
	dw $0001 : db $EB : dw $EC31
	dw $0001 : db $F3 : dw $EC32
	dw $0009 : db $F3 : dw $EC31
; $93E224, 0x09E224
	dw $0012, $01F5 : db $0F : dw $EC32
	dw $01FD : db $0F : dw $EC31
	dw $000B : db $F9 : dw $EC32
	dw $0013 : db $F9 : dw $EC31
	dw $0000 : db $04 : dw $EC32
	dw $0008 : db $04 : dw $EC31
	dw $01F0 : db $F4 : dw $EC32
	dw $01F8 : db $F4 : dw $EC31
	dw $01F8 : db $FC : dw $EC32
	dw $0000 : db $FC : dw $EC31
	dw $01E5 : db $FF : dw $EC32
	dw $01ED : db $FF : dw $EC31
	dw $01ED : db $07 : dw $EC32
	dw $01F5 : db $07 : dw $EC31
	dw $01FB : db $E9 : dw $EC32
	dw $0003 : db $E9 : dw $EC31
	dw $0003 : db $F1 : dw $EC32
	dw $000B : db $F1 : dw $EC31

	dw $0012, $01F4 : db $10 : dw $EC32
	dw $01FC : db $10 : dw $EC31
	dw $0000 : db $04 : dw $EC32
	dw $0008 : db $04 : dw $EC31
	dw $000C : db $F8 : dw $EC32
	dw $0014 : db $F8 : dw $EC31
	dw $01F0 : db $F4 : dw $EC32
	dw $01F8 : db $F4 : dw $EC31
	dw $01F8 : db $FC : dw $EC32
	dw $0000 : db $FC : dw $EC31
	dw $01E4 : db $00 : dw $EC32
	dw $01EC : db $00 : dw $EC31
	dw $01EC : db $08 : dw $EC32
	dw $01F4 : db $08 : dw $EC31
	dw $01FC : db $E8 : dw $EC32
	dw $0004 : db $E8 : dw $EC31
	dw $0004 : db $F0 : dw $EC32
	dw $000C : db $F0 : dw $EC31

	dw $0012, $0000 : db $04 : dw $EC32
	dw $0008 : db $04 : dw $EC31
	dw $0003 : db $01 : dw $EC32
	dw $000B : db $01 : dw $EC31
	dw $01FD : db $07 : dw $EC32
	dw $0005 : db $07 : dw $EC31
	dw $01ED : db $F7 : dw $EC32
	dw $01F5 : db $F7 : dw $EC31
	dw $01F5 : db $FF : dw $EC32
	dw $01FD : db $FF : dw $EC31
	dw $01F3 : db $F1 : dw $EC32
	dw $01FB : db $F1 : dw $EC31
	dw $01FB : db $F9 : dw $EC32
	dw $0003 : db $F9 : dw $EC31
	dw $01F0 : db $F4 : dw $EC32
	dw $01F8 : db $F4 : dw $EC31
	dw $01F8 : db $FC : dw $EC32
	dw $0000 : db $FC : dw $EC31

	dw $0006, $01F8 : db $04 : dw $AC32
	dw $01F0 : db $04 : dw $AC31
	dw $0008 : db $F4 : dw $AC32
	dw $0000 : db $F4 : dw $AC31
	dw $0000 : db $FC : dw $AC32
	dw $01F8 : db $FC : dw $AC31
; $93E356 - 0x09E356
	dw $0012, $01F2 : db $FE : dw $AC32
	dw $01EA : db $FE : dw $AC31
	dw $01F8 : db $04 : dw $AC32
	dw $01F0 : db $04 : dw $AC31
	dw $01FE : db $0A : dw $AC32
	dw $01F6 : db $0A : dw $AC31
	dw $0008 : db $F4 : dw $AC32
	dw $0000 : db $F4 : dw $AC31
	dw $0000 : db $FC : dw $AC32
	dw $01F8 : db $FC : dw $AC31
	dw $000E : db $FA : dw $AC32
	dw $0006 : db $FA : dw $AC31
	dw $0006 : db $02 : dw $AC32
	dw $01FE : db $02 : dw $AC31
	dw $0002 : db $EE : dw $AC32
	dw $01FA : db $EE : dw $AC31
	dw $01FA : db $F6 : dw $AC32
	dw $01F2 : db $F6 : dw $AC31

	dw $0012, $0001 : db $0D : dw $AC32
	dw $01F9 : db $0D : dw $AC31
	dw $01F8 : db $04 : dw $AC32
	dw $01F0 : db $04 : dw $AC31
	dw $01EF : db $FB : dw $AC32
	dw $01E7 : db $FB : dw $AC31
	dw $0008 : db $F4 : dw $AC32
	dw $0000 : db $F4 : dw $AC31
	dw $0000 : db $FC : dw $AC32
	dw $01F8 : db $FC : dw $AC31
	dw $0011 : db $FD : dw $AC32
	dw $0009 : db $FD : dw $AC31
	dw $0009 : db $05 : dw $AC32
	dw $0001 : db $05 : dw $AC31
	dw $01FF : db $EB : dw $AC32
	dw $01F7 : db $EB : dw $AC31
	dw $01F7 : db $F3 : dw $AC32
	dw $01EF : db $F3 : dw $AC31

	dw $0012, $0003 : db $0F : dw $AC32
	dw $01FB : db $0F : dw $AC31
	dw $01F8 : db $04 : dw $AC32
	dw $01F0 : db $04 : dw $AC31
	dw $01ED : db $F9 : dw $AC32
	dw $01E5 : db $F9 : dw $AC31
	dw $0008 : db $F4 : dw $AC32
	dw $0000 : db $F4 : dw $AC31
	dw $0000 : db $FC : dw $AC32
	dw $01F8 : db $FC : dw $AC31
	dw $0013 : db $FF : dw $AC32
	dw $000B : db $FF : dw $AC31
	dw $000B : db $07 : dw $AC32
	dw $0003 : db $07 : dw $AC31
	dw $01FD : db $E9 : dw $AC32
	dw $01F5 : db $E9 : dw $AC31
	dw $01F5 : db $F1 : dw $AC32
	dw $01ED : db $F1 : dw $AC31

	dw $0012, $01EC : db $F8 : dw $AC32
	dw $01E4 : db $F8 : dw $AC31
	dw $0004 : db $10 : dw $AC32
	dw $01FC : db $10 : dw $AC31
	dw $01F8 : db $04 : dw $AC32
	dw $01F0 : db $04 : dw $AC31
	dw $0008 : db $F4 : dw $AC32
	dw $0000 : db $F4 : dw $AC31
	dw $0000 : db $FC : dw $AC32
	dw $01F8 : db $FC : dw $AC31
	dw $0014 : db $00 : dw $AC32
	dw $000C : db $00 : dw $AC31
	dw $000C : db $08 : dw $AC32
	dw $0004 : db $08 : dw $AC31
	dw $01FC : db $E8 : dw $AC32
	dw $01F4 : db $E8 : dw $AC31
	dw $01F4 : db $F0 : dw $AC32
	dw $01EC : db $F0 : dw $AC31

	dw $0012, $01F5 : db $01 : dw $AC32
	dw $01ED : db $01 : dw $AC31
	dw $01F8 : db $04 : dw $AC32
	dw $01F0 : db $04 : dw $AC31
	dw $01FB : db $07 : dw $AC32
	dw $01F3 : db $07 : dw $AC31
	dw $000B : db $F7 : dw $AC32
	dw $0003 : db $F7 : dw $AC31
	dw $0003 : db $FF : dw $AC32
	dw $01FB : db $FF : dw $AC31
	dw $0005 : db $F1 : dw $AC32
	dw $01FD : db $F1 : dw $AC31
	dw $01FD : db $F9 : dw $AC32
	dw $01F5 : db $F9 : dw $AC31
	dw $0008 : db $F4 : dw $AC32
	dw $0000 : db $F4 : dw $AC31
	dw $0000 : db $FC : dw $AC32
	dw $01F8 : db $FC : dw $AC31

	dw $0002, $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31
; The order of the spritemaps differs from vanilla starting here
	dw $0013, $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F0 : db $F4 : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $0100 : db $80 : dw $000C
	dw $01FA : db $0A : dw $2C31
	dw $000E : db $FE : dw $2C32
	dw $0006 : db $FE : dw $2C31
	dw $0002 : db $0A : dw $2C32
	dw $01EA : db $FA : dw $2C31
	dw $01F2 : db $FA : dw $2C32
	dw $01F2 : db $02 : dw $2C31
	dw $0006 : db $F6 : dw $2C32
	dw $01FE : db $F6 : dw $2C31
	dw $01FE : db $EE : dw $2C32
	dw $01F6 : db $EE : dw $2C31
	dw $01FA : db $02 : dw $2C32
; $93E58F - 0x09E58F
	dw $0013, $01F0 : db $F4 : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F8 : db $FC : dw $2C31
	dw $0000 : db $FC : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0100 : db $80 : dw $000C
	dw $0011 : db $FB : dw $2C32
	dw $0009 : db $FB : dw $2C31
	dw $01FF : db $0D : dw $2C32
	dw $01F7 : db $0D : dw $2C31
	dw $01EF : db $FD : dw $2C32
	dw $01E7 : db $FD : dw $2C31
	dw $0009 : db $F3 : dw $2C32
	dw $0001 : db $F3 : dw $2C31
	dw $0001 : db $EB : dw $2C32
	dw $01F9 : db $EB : dw $2C31
	dw $01F7 : db $05 : dw $2C32
	dw $01EF : db $05 : dw $2C31

	dw $0013, $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F0 : db $F4 : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $0100 : db $80 : dw $000C
	dw $000B : db $F9 : dw $2C31
	dw $0013 : db $F9 : dw $2C32
	dw $01E5 : db $FF : dw $2C31
	dw $01FD : db $0F : dw $2C32
	dw $01F5 : db $0F : dw $2C31
	dw $000B : db $F1 : dw $2C32
	dw $0003 : db $F1 : dw $2C31
	dw $0003 : db $E9 : dw $2C32
	dw $01FB : db $E9 : dw $2C31
	dw $01F5 : db $07 : dw $2C32
	dw $01ED : db $07 : dw $2C31
	dw $01ED : db $FF : dw $2C32

	dw $0013, $01F0 : db $F4 : dw $2C31
	dw $0000 : db $FC : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F8 : db $FC : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0100 : db $80 : dw $000C
	dw $0014 : db $F8 : dw $2C32
	dw $000C : db $F8 : dw $2C31
	dw $01FC : db $10 : dw $2C32
	dw $01F4 : db $10 : dw $2C31
	dw $000C : db $F0 : dw $2C32
	dw $0004 : db $F0 : dw $2C31
	dw $0004 : db $E8 : dw $2C32
	dw $01FC : db $E8 : dw $2C31
	dw $01F4 : db $08 : dw $2C32
	dw $01EC : db $08 : dw $2C31
	dw $01EC : db $00 : dw $2C32
	dw $01E4 : db $00 : dw $2C31
; $93E6B2  0x09E6B2
	dw $0012, $000B : db $01 : dw $2C32
	dw $0003 : db $01 : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $0005 : db $07 : dw $2C32
	dw $01FD : db $07 : dw $2C31
	dw $0003 : db $F9 : dw $2C32
	dw $01FB : db $F9 : dw $2C31
	dw $01FB : db $F1 : dw $2C32
	dw $01F3 : db $F1 : dw $2C31
	dw $01FD : db $FF : dw $2C32
	dw $01F5 : db $FF : dw $2C31
	dw $01F5 : db $F7 : dw $2C32
	dw $01ED : db $F7 : dw $2C31
	dw $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F0 : db $F4 : dw $2C31

org $93E85A	; 0x09E85A
	dw $0006

org $93E870	; 0x09E870
	dw $0010, $30FC : db $2C : dw $01E8
	dw $30FC : db $2C : dw $0006
	dw $01F0 : db $FC : dw $2C34
	dw $0008 : db $FC : dw $2C34
	dw $0010 : db $FC : dw $2C34
	dw $01E8 : db $FC : dw $2C34
	dw $0000 : db $FC : dw $2C34
	dw $01F8 : db $FC : dw $2C34
	dw $0009 : db $00 : dw $8001

	dw $000C, $01F8 : db $F4 : dw $2C30
	dw $0000 : db $F4 : dw $2C30
	dw $0000 : db $04 : dw $2C30
	dw $01F8 : db $04 : dw $2C30
	dw $01F0 : db $04 : dw $2C30
	dw $01F0 : db $F4 : dw $2C30
	dw $0008 : db $04 : dw $2C30
	dw $0008 : db $F4 : dw $2C30
	dw $01F0 : db $FC : dw $2C30
	dw $01F8 : db $FC : dw $2C30
	dw $0000 : db $FC : dw $2C30
	dw $0008 : db $FC : dw $2C30
	dw $0009 : db $00 : dw $8001

	dw $000C, $0000 : db $EF : dw $2C30
	dw $01F8 : db $EF : dw $2C30
	dw $01F0 : db $EF : dw $2C30
	dw $01F8 : db $09 : dw $2C30
	dw $01F0 : db $09 : dw $2C30
	dw $0008 : db $EF : dw $2C30
	dw $0000 : db $09 : dw $2C30
	dw $0008 : db $09 : dw $2C30
	dw $01F0 : db $FC : dw $2C30
	dw $0000 : db $FC : dw $2C30
	dw $0008 : db $FC : dw $2C30
	dw $01F8 : db $FC : dw $2C30
	dw $0009 : db $00 : dw $8001

	dw $000C, $01F8 : db $ED : dw $2C30
	dw $0008 : db $0B : dw $2C30
	dw $01F0 : db $0B : dw $2C30
	dw $0008 : db $ED : dw $2C30
	dw $0000 : db $0B : dw $2C30
	dw $01F8 : db $0B : dw $2C30
	dw $01F0 : db $ED : dw $2C30
	dw $0000 : db $ED : dw $2C30
	dw $0000 : db $FC : dw $2C30
	dw $0008 : db $FC : dw $2C30
	dw $01F0 : db $FC : dw $2C30
	dw $01F8 : db $FC : dw $2C30
	dw $0009 : db $00 : dw $8001

	dw $000C, $01F0 : db $EC : dw $2C30
	dw $01F0 : db $0C : dw $2C30
	dw $0008 : db $0C : dw $2C30
	dw $0008 : db $EC : dw $2C30
	dw $0000 : db $EC : dw $2C30
	dw $0000 : db $0C : dw $2C30
	dw $01F8 : db $EC : dw $2C30
	dw $01F8 : db $0C : dw $2C30
	dw $0000 : db $FC : dw $2C30
	dw $01F0 : db $FC : dw $2C30
	dw $01F8 : db $FC : dw $2C30
	dw $0008 : db $FC : dw $2C30

	dw $0006, $01FC : db $08 : dw $2C33
	dw $01FC : db $F0 : dw $2C33
	dw $01FC : db $00 : dw $2C33
	dw $01FC : db $F8 : dw $2C33
	dw $01FC : db $10 : dw $2C33
	dw $01FC : db $E8 : dw $2C33

	dw $0006, $01FC : db $10 : dw $2C37
	dw $01FC : db $08 : dw $2C37
	dw $01FC : db $00 : dw $2C37
	dw $01FC : db $F8 : dw $2C37
	dw $01FC : db $F0 : dw $2C37
	dw $01FC : db $F8 : dw $2C37
	dw $0009 : db $00 : dw $8001

	dw $000C, $01F4 : db $F8 : dw $2C33
	dw $01F4 : db $00 : dw $2C33
	dw $0004 : db $F8 : dw $2C33
	dw $0004 : db $08 : dw $2C33
	dw $01F4 : db $08 : dw $2C33
	dw $0004 : db $00 : dw $2C33
	dw $0004 : db $F0 : dw $2C33
	dw $01F4 : db $F0 : dw $2C33
	dw $01FC : db $F0 : dw $2C33
	dw $01FC : db $08 : dw $2C33
	dw $01FC : db $F8 : dw $2C33
	dw $01FC : db $00 : dw $2C33
	dw $0009 : db $00 : dw $8001

	dw $000C, $01EF : db $00 : dw $2C33
	dw $01EF : db $F8 : dw $2C33
	dw $0009 : db $08 : dw $2C33
	dw $01EF : db $08 : dw $2C33
	dw $0009 : db $00 : dw $2C33
	dw $0009 : db $F0 : dw $2C33
	dw $01EF : db $F0 : dw $2C33
	dw $0009 : db $F8 : dw $2C33
	dw $01FC : db $08 : dw $2C33
	dw $01FC : db $F0 : dw $2C33
	dw $01FC : db $00 : dw $2C33
	dw $01FC : db $F8 : dw $2C33
	dw $0009 : db $00 : dw $8001

	dw $000C, $01ED : db $F8 : dw $2C33
	dw $000B : db $08 : dw $2C33
	dw $01ED : db $08 : dw $2C33
	dw $01ED : db $00 : dw $2C33
	dw $000B : db $F0 : dw $2C33
	dw $01ED : db $F0 : dw $2C33
	dw $000B : db $F8 : dw $2C33
	dw $000B : db $00 : dw $2C33
	dw $01FC : db $F0 : dw $2C33
	dw $01FC : db $08 : dw $2C33
	dw $01FC : db $F8 : dw $2C33
	dw $01FC : db $00 : dw $2C33
	dw $0009 : db $00 : dw $8001

	dw $000C, $01EC : db $08 : dw $2C33
	dw $01EC : db $00 : dw $2C33
	dw $000C : db $08 : dw $2C33
	dw $000C : db $F0 : dw $2C33
	dw $01EC : db $F8 : dw $2C33
	dw $01EC : db $F0 : dw $2C33
	dw $000C : db $00 : dw $2C33
	dw $000C : db $F8 : dw $2C33
	dw $01FC : db $08 : dw $2C33
	dw $01FC : db $F0 : dw $2C33
	dw $01FC : db $00 : dw $2C33
	dw $01FC : db $F8 : dw $2C33

	dw $0004, $01F0 : db $FC : dw $6C30
	dw $0008 : db $FC : dw $6C30
	dw $01F8 : db $FC : dw $6C30
	dw $0000 : db $FC : dw $6C30

	dw $000C, $01F0 : db $00 : dw $6C30
	dw $01F0 : db $FC : dw $6C30
	dw $01F0 : db $F8 : dw $6C30
	dw $0008 : db $00 : dw $6C30
	dw $0008 : db $FC : dw $6C30
	dw $0008 : db $F8 : dw $6C30
	dw $0000 : db $00 : dw $6C30
	dw $01F8 : db $00 : dw $6C30
	dw $0000 : db $FC : dw $6C30
	dw $01F8 : db $FC : dw $6C30
	dw $0000 : db $F8 : dw $6C30
	dw $01F8 : db $F8 : dw $6C30

;----------------------------------------------------------;
; Charged Spazer / Spazer+Ice / Spazer+Wave / Spazer+Ice+Wave
; 			(Another set?)

org $93EE12	; 0x09EE12
	dw $0002, $01F8 : db $FC : dw $2C30
	dw $0000 : db $FC : dw $2C30

	dw $0002, $0002 : db $FC : dw $2C32
	dw $01FA : db $FC : dw $2C31

	dw $0004, $0006 : db $00 : dw $2C32
	dw $01FE : db $00 : dw $2C31
	dw $01FE : db $F8 : dw $2C32
	dw $01F6 : db $F8 : dw $2C31

	dw $0002, $01FC : db $00 : dw $2C33
	dw $01FC : db $F8 : dw $2C33

	dw $0002, $01F6 : db $FC : dw $6C32
	dw $01FE : db $FC : dw $6C31

	dw $0004, $01F2 : db $00 : dw $6C32
	dw $01FA : db $00 : dw $6C31
	dw $01FA : db $F8 : dw $6C32
	dw $0002 : db $F8 : dw $6C31

	dw $001E, $01F3 : db $E9 : dw $2C32
	dw $01ED : db $EF : dw $2C32
	dw $01EB : db $E9 : dw $2C31
	dw $01E5 : db $EF : dw $2C31
	dw $0013 : db $09 : dw $2C32
	dw $000D : db $0F : dw $2C32
	dw $000B : db $09 : dw $2C31
	dw $0005 : db $0F : dw $2C31
	dw $000B : db $01 : dw $2C32
	dw $0005 : db $07 : dw $2C32
	dw $0003 : db $01 : dw $2C31
	dw $01FD : db $07 : dw $2C31
	dw $01FB : db $F1 : dw $2C32
	dw $01F5 : db $F7 : dw $2C32
	dw $01F3 : db $F1 : dw $2C31
	dw $01ED : db $F7 : dw $2C31
	dw $0003 : db $F9 : dw $2C32
	dw $01FD : db $FF : dw $2C32
	dw $01FB : db $F9 : dw $2C31
	dw $01F5 : db $FF : dw $2C31
	dw $01F0 : db $EC : dw $2C32
	dw $01E8 : db $EC : dw $2C31
	dw $0010 : db $0C : dw $2C32
	dw $0008 : db $0C : dw $2C31
	dw $0008 : db $04 : dw $2C32
	dw $0000 : db $04 : dw $2C31
	dw $01F8 : db $F4 : dw $2C32
	dw $01F0 : db $F4 : dw $2C31
	dw $0000 : db $FC : dw $2C32
	dw $01F8 : db $FC : dw $2C31

	dw $0003, $01FC : db $04 : dw $2C33
	dw $01FC : db $FC : dw $2C33
	dw $01FC : db $F4 : dw $2C33

	dw $0003, $0004 : db $FC : dw $2C34
	dw $01FC : db $FC : dw $2C34
	dw $01F4 : db $FC : dw $2C34

	dw $0002, $0000 : db $FC : dw $6C30
	dw $01F8 : db $FC : dw $6C30

	dw $0002, $01F6 : db $FC : dw $EC32
	dw $01FE : db $FC : dw $EC31

	dw $0004, $01F2 : db $F8 : dw $EC32
	dw $01FA : db $F8 : dw $EC31
	dw $01FA : db $00 : dw $EC32
	dw $0002 : db $00 : dw $EC31

	dw $0002, $01FC : db $F8 : dw $AC33
	dw $01FC : db $00 : dw $AC33

	dw $0008, $01EC : db $08 : dw $6C32
	dw $01F4 : db $08 : dw $6C31
	dw $01F4 : db $00 : dw $6C32
	dw $01FC : db $00 : dw $6C31
	dw $01FC : db $F8 : dw $6C32
	dw $0004 : db $F8 : dw $6C31
	dw $0004 : db $F0 : dw $6C32
	dw $000C : db $F0 : dw $6C32

	dw $0001, $01FC : db $FC : dw $2C34
	dw $0001, $01FC : db $FC : dw $2C37

	dw $0002, $01FC : db $F8 : dw $2C36
	dw $01FC : db $00 : dw $EC36
	dw $0004, $0000 : db $FC : dw $EC35
	dw $0000 : db $04 : dw $EC36
	dw $01F8 : db $F4 : dw $2C36
	dw $01F8 : db $FC : dw $2C35

	dw $0002, $01FC : db $00 : dw $2C37
	dw $01FC : db $F8 : dw $2C37

	dw $0002, $01FC : db $F8 : dw $6C36
	dw $01FC : db $00 : dw $AC36

	dw $0004, $01F8 : db $FC : dw $AC35
	dw $01F8 : db $04 : dw $AC36
	dw $0000 : db $F4 : dw $6C36
	dw $0000 : db $FC : dw $6C35

; Possible tilemaps data?
; Table data, but unknown what it is yet.

org $93EFEA	; 0x09EFEA
l_93EFEA: 
	dw $8641,$8641,$8657,$8671,$8641,$8675,$8641,$8679
	dw $867D,$414A,$204D,$6177,$2073,$6568,$6572,$015E
	dw $F0B8,$F0FC,$F140,$F184,$F0B8,$F0B8,$F0FC,$F140
	dw $F184,$F0B8,$01C2,$F1C8,$F22C,$F290,$F2F4,$F1C8
	dw $F1C8,$F22C,$F290,$F2F4,$F1C8,$0190,$F0B8,$F0FC
	dw $F140,$F184,$F0B8,$F0B8,$F0FC,$F140,$F184,$F0B8
	dw $01F4,$F1C8,$F22C,$F290,$F2F4,$F1C8,$F1C8,$F22C
	dw $F290,$F2F4,$F1C8,$041A,$F358,$F3DC,$F460,$F4E4
	dw $F358,$F358,$F3DC,$F460,$F4E4,$F358,$0546,$F568
	dw $F63C,$F710,$F7E4,$F568,$F568,$F63C,$F710,$F7E4
	dw $F568,$04B0,$F358,$F3DC,$F460,$F4E4,$F358,$F358
	dw $F3DC,$F460,$F4E4,$F358,$05DC,$F568,$F63C,$F710
	dw $F7E4,$F568,$F568,$F63C,$F710,$F7E4,$F568,$0002
	dw $A246,$0402,$0000,$0002,$EE40,$0802,$0001,$0002
	dw $C3E1,$1002,$0002,$0002,$CE57,$1005,$0003,$0002
	dw $E9EB,$1009,$0004,$0002,$EA2E,$100E,$0005,$0002
	dw $EA71,$1010,$0006,$0002,$EAB4,$1011,$0007,$8239

;----------------------------------------------------------;
; Charged Plasma / Plasma+Ice / Plasma+Wave / Plasma+Ice+Wave
	dw $F0F0,$0002,$EE4C,$0404,$0000,$0002,$EE58,$0808
	dw $0001,$0002,$CE37,$0C0C,$0002,$0002,$E0EE,$0E0E
	dw $0003,$0002,$DF6A,$1010,$0004,$0002,$DFCB,$1212
	dw $0005,$0002,$E02C,$1313,$0006,$0002,$E08D,$1414
	dw $0007,$8239,$F134,$0002,$A23F,$0204,$0000,$0002
	dw $EE12,$0208,$0001,$0002,$C3F7,$0210,$0002,$0002
	dw $BE3D,$0510,$0003,$0002,$E89F,$0910,$0004,$0002
	dw $E8E2,$0E10,$0005,$0002,$E925,$1010,$0006,$0002
	dw $E968,$1110,$0007,$8239,$F178,$0002,$EE1E,$0404
	dw $0000,$0002,$EE2A,$0808,$0001,$0002,$BE1D,$0C0C
	dw $0002,$0002,$E6B2,$0E0E,$0003,$0002,$E52E,$1010
	dw $0004,$0002,$E58F,$1212,$0005,$0002,$E5F0,$1313
	dw $0006,$0002,$E651,$1414,$0007,$8239,$F1BC,$0002
	dw $A246,$0402,$0000,$0002,$EE40,$0802,$0001,$0002
	dw $C3E1,$1002,$0002,$0002,$CE57,$1005,$0003,$0002
	dw $E9EB,$1009,$0004,$0002,$EA2E,$100E,$0005,$0002
	
	dw $EA71,$1010,$0006,$0002,$EAB4,$1011,$0007,$0002
	dw $EA71,$1010,$0008,$0002,$EA2E,$100E,$0009,$0002
	dw $E9EB,$1009,$000A,$0002,$CE57,$1005,$000B,$8239
	dw $F1D8,$0002,$EE4C,$0404,$0000,$0002,$EE58,$0808
	dw $0001,$0002,$CE37,$0C0C,$0002,$0002,$E0EE,$0E0E 
	dw $0003,$0002,$DF6A,$1010,$0004,$0002,$DFCB,$1212
	dw $0005,$0002,$E02C,$1313,$0006,$0002,$E08D,$1414
	dw $0007,$0002,$E02C,$1313,$0008,$0002,$DFCB,$1212
	dw $0009,$0002,$DF6A,$1010,$000A,$0002,$E0EE,$0E0E
	dw $000B,$8239,$F23C,$0002,$A23F,$0204,$0000,$0002
	dw $EE12,$0208,$0001,$0002,$C3F7,$0210,$0002,$0002
	dw $BE3D,$0510,$0003,$0002,$E89F,$0910,$0004,$0002
	dw $E8E2,$0E10,$0005,$0002,$E925,$1010,$0006,$0002
	dw $E968,$1110,$0007,$0002,$E925,$1010,$0008,$0002
	dw $E8E2,$0E10,$0009,$0002,$E89F,$0910,$000A,$0002
	dw $BE3D,$0510,$000B,$8239,$F2A0,$0002,$EE1E,$0404

	dw $0000,$0002,$EE2A,$0808,$0001,$0002,$BE1D,$0C0C
	dw $0002,$0002,$E6B2,$0E0E,$0003,$0002,$E52E,$1010
	dw $0004,$0002,$E58F,$1212,$0005,$0002,$E5F0,$1313
	dw $0006,$0002,$E651,$1414,$0007,$0002,$E5F0,$1313
	dw $0008,$0002,$E58F,$1212,$0009,$0002,$E52E,$1010
	dw $000A,$0002,$E6B2,$0E0E,$000B,$8239,$F304,$0001
	dw $A246,$0404,$0000,$0001,$EF93,$0404,$0001,$0001
	dw $EF06,$0C04,$0002,$0001,$C40D,$0C04,$0003,$0001
	dw $E9A6,$1804,$0004,$0001,$E9C6,$1804,$0005,$0001
	dw $C1B7,$1C04,$0006,$0001,$C957,$1C04,$0007,$0001
	dw $A4B9,$1C08,$0008,$0001,$A524,$1C08,$0009,$0001
	dw $C1B2,$1C0C,$000A,$0001,$C95C,$1C0C,$000B,$0001
	dw $A58F,$1C10,$000C,$0001,$A5FA,$1C10,$000D,$0001
	dw $C307,$1C14,$000E,$0001,$CAAC,$1C14,$000F,$8239
	dw $F3C8,$0001,$DF5E,$0404,$0000,$0001,$C41E,$0404
	dw $0001,$0001,$BC9C,$0808,$0002,$0001,$BCB2,$0808

	dw $0003,$0001,$83C1,$0C0C,$0004,$0001,$C377,$0C0C
	dw $0005,$0001,$CE95,$1010,$0006,$0001,$CB46,$1010
	dw $0007,$0001,$A665,$1212,$0008,$0001,$A277,$1212
	dw $0009,$0001,$CE9A,$1414,$000A,$0001,$CB4B,$1414
	dw $000B,$0001,$CF37,$1616,$000C,$0001,$CC06,$1616
	dw $000D,$0001,$D071,$1818,$000E,$0001,$CD7C,$1818
	dw $000F,$8239,$F44C,$0001,$A23F,$0404,$0000,$0001
	dw $EF8C,$0404,$0001,$0001,$BC75,$040C,$0002,$0001
	dw $EF17,$040C,$0003,$0001,$E85A,$0418,$0004,$0001
	dw $E87A,$0418,$0005,$0001,$BCC8,$041C,$0006,$0001
	dw $C4A6,$041C,$0007,$0001,$BC0A,$081C,$0008,$0001
	dw $C147,$081C,$0009,$0001,$BCCD,$0C1C,$000A,$0001
	dw $C4A1,$0C1C,$000B,$0001,$A3E3,$101C,$000C,$0001
	dw $A44E,$101C,$000D,$0001,$BDAD,$141C,$000E,$0001
	dw $C5F6,$141C,$000F,$8239,$F4D0,$0001,$83EB,$0404
	dw $0000,$0001,$C134,$0404,$0001,$0001,$BC86,$0808

	dw $0002,$0001,$C0F4,$0808,$0003,$0001,$CB1C,$0C0C
	dw $0004,$0001,$C10A,$0C0C,$0005,$0001,$BE7B,$1010
	dw $0006,$0001,$C666,$1010,$0007,$0001,$EE6E,$1212
	dw $0008,$0001,$A32D,$1212,$0009,$0001,$BE80,$1414
	dw $000A,$0001,$C66B,$1414,$000B,$0001,$BF1D,$1616
	dw $000C,$0001,$C726,$1616,$000D,$0001,$C057,$1818
	dw $000E,$0001,$C7E1,$1818,$000F,$8239,$F554,$0001
	dw $A246,$0404,$0000,$0001,$EF93,$0404,$0001,$0001
	dw $EF06,$0C04,$0002,$0001,$C40D,$0C04,$0003,$0001
	dw $E9A6,$1804,$0004,$0001,$E9C6,$1804,$0005,$0001
	dw $C1B7,$1C04,$0006,$0001,$C957,$1C04,$0007,$0001
	dw $A4B9,$1C08,$0008,$0001,$A524,$1C08,$0009,$0001
	dw $C1B2,$1C0C,$000A,$0001,$C95C,$1C0C,$000B,$0001
	dw $C227,$1C11,$000C,$0001,$C9CC,$1C11,$000D,$0001
	dw $C297,$1C13,$000E,$0001 

; Unused. Draw shinespark windup effect sprite
; Replaced with new spritemaps for Plasma+Spazer Mix
	dw $CA3C,$1C13,$000F,$0001,$C307,$1C14,$0010,$0001
	dw $CAAC,$1C14,$0011,$0001,$C297,$1C13,$0012,$0001
	dw $CA3C,$1C13,$0013,$0001,$C227,$1C11,$0014,$0001
	dw $C9CC,$1C11,$0015,$0001,$C1B2,$1C0C,$0016,$0001	; Free/Unused space
	dw $C95C,$1C0C,$0017,$0001,$A4B9,$1C08,$0008,$0001
	dw $A524,$1C08,$0019,$8239,$F598,$0001,$DF5E,$0404
	dw $0000,$0001,$C41E,$0404,$0001,$0001,$BC9C,$0808
	dw $0002,$0001,$BCB2,$0808,$0003,$0001,$83C1,$0C0C
	dw $0004,$0001,$C377,$0C0C,$0005,$0001,$CE95,$1010
	dw $0006,$0001,$CB46,$1010,$0007,$0001,$A665,$1212
	dw $0008,$0001,$A277,$1212,$0009,$0001,$CE9A,$1414
	dw $000A,$0001,$CB4B,$1414,$000B,$0001,$CF37,$1616
	dw $000C,$0001,$CC06,$1616,$000D,$0001,$CFD4,$1717
	dw $000E,$0001,$CCC1,$1717,$000F,$0001,$D071,$1818
	dw $0010,$0001,$CD7C,$1818,$0011,$0001,$CFD4,$1717
	dw $0012,$0001,$CCC1,$1717,$0013,$0001,$CF37,$1616
	dw $0014,$0001,$CC06,$1616,$0015,$0001,$CE9A,$1414
	dw $0016,$0001,$CB4B,$1414,$0017,$0001,$A665,$1212

	dw $0018,$0001,$A277,$1212,$0019,$8239,$F66C,$0001
	dw $A23F,$0404,$0000,$0001,$EF8C,$0404,$0001,$0001
	dw $BC75,$040C,$0002,$0001,$EF17,$040C,$0003,$0001
	dw $E85A,$0418,$0004,$0001,$E87A,$0418,$0005,$0001
	dw $BCC8,$041C,$0006,$0001,$C4A6,$041C,$0007,$0001
	dw $BC0A,$081C,$0008,$0001,$C147,$081C,$0009,$0001
	dw $BCCD,$0C1C,$000A,$0001,$C4A1,$0C1C,$000B,$0001
	dw $C431,$111C,$000C,$0001,$C516,$111C,$000D,$0001
	dw $BD3D,$131C,$000E,$0001,$C586,$131C,$000F,$0001
	dw $BDAD,$141C,$0010,$0001,$C5F6,$141C,$0011,$0001
	dw $BD3D,$131C,$0012,$0001,$C586,$131C,$0013,$0001
	dw $C431,$111C,$0014,$0001,$C516,$111C,$0015,$0001
	dw $BCCD,$0C1C,$0016,$0001,$C4A1,$0C1C,$0017,$0001
	dw $BC0A,$081C,$0018,$0001,$C147,$081C,$0019,$8239

	dw $F740,$0001,$83EB,$0404,$0000,$0001,$C134,$0404
	dw $0001,$0001,$BC86,$0808,$0002,$0001,$C0F4,$0808
	dw $0003,$0001,$CB1C,$0C0C,$0004,$0001,$C10A,$0C0C
	dw $0005,$0001,$BE7B,$1010,$0006,$0001,$C666,$1010
	dw $0007,$0001,$EE6E,$1212,$0008,$0001,$A32D,$1212
	dw $0009,$0001,$BE80,$1414,$000A,$0001,$C66B,$1414
	dw $000B,$0001,$BF1D,$1616,$000C,$0001,$C726,$1616
	dw $000D,$0001,$BFBA,$1717,$000E,$0001,$C89C,$1717
	dw $000F,$0001,$C057,$1818,$0010,$0001,$C7E1,$1818
	dw $0011,$0001,$BFBA,$1717,$0012,$0001,$C89C,$1717
	dw $0013,$0001,$BF1D,$1616,$0014,$0001,$C726,$1616
	dw $0015,$0001,$BE80,$1414,$0016,$0001,$C66B,$1414
	dw $0017,$0001,$EE6E,$1212,$0018,$0001,$A32D,$1212
	dw $0019,$8239,$F814





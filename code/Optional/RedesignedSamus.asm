;----------------------------------------------------------;
;		Redesigned Suits for Samus
;----------------------------------------------------------;
lorom
;----------------------------------------------------------;
; This only modifies graphics data, nothing more

; Modification to Samus' spritemaps
org $929711	; 0x091711
	dw $01FE	; Originally $01FD
org $929720	; 0x091720
	dw $C3FB	; Originally $C3FA
org $929731	; 0x091731
	dw $01FB	; Originally $01FC
org $929740	; 0x091740
	dw $C3F5	; Originally $C3F6
org $929767	; 0x091767
	dw $01F2	; Originally $01F0
org $929A95	; 0x091A95
	dw $01EC : db $F9	; Originally $01ED,$F8
org $929AB0	; 0x091AB0
	dw $000D : db $FA : dw $2806
	dw $0009 : db $F6 : dw $2807
	dw $43F0 : db $F0 : dw $2804
; Originally $01F6,FC,6806, 01F2,00,6807, C3F0,F8,2800
org $929BB0	; 0x091BB0
	dw $01FE : db $00 : dw $2802
	dw $01FA
; Originally $01FB,00,2802, 01F7
org $929BD7	; 0x091BD7
	dw $01FE	; Originally $01FD
org $929BE6	; 0x091BE6
	dw $C3FB	; Originally $C3FA
org $929C06	; 0x091C06
	dw $C3F5	; Originally $C3F6
org $929DF9	; 0x091DF9
	dw $01FE	; Originally $01FD
org $929E08	; 0x091E08
	dw $C3FB	; Originally $C3FA
org $929E28	; 0x091E28
	dw $C3F5	; Originally $C3F6
org $929E65	; 0x091E65
	dw $0004 : db $F7 : dw $2802
	dw $01FC : db $F7 : dw $2803
	dw $01F8 : db $F5 : dw $2804
	dw $01F8 : db $F7 : dw $6805
	dw $01F8 : db $EF : dw $6806
	dw $C3F9
; Originally 0005,F7,2802, 01FD,F7,2803, 01F9,F5,2804, 01F9,F7,6805, 01F9,EF,6806, C3FA
org $929EA0	; 0x091EA0
	dw $01FE : db $F6 : dw $2802
	dw $01F6 : db $F6 : dw $2803
	dw $01FF : db $F7 : dw $2804
	dw $01FF : db $EF : dw $2805
	dw $C3F7
; Originally 01FD,F6,2802, 01F5,F6,2803, 01FE,F7,2804, 01FE,EF,2805, C3F6
org $929EC2	; 0x091EC2
	db $EF	; Originally $F0
org $929FC0	; 0x091FC0
	db $F1	; Originally $F2
org $929FE0	; 0x091FE0
	db $F2	; Originally $F3
org $92A000	; 0x092000
	db $F3	; Originally $F4
org $92A025	; 0x092025
	db $F1	; Originally $F2
org $92A04A	; 0x09204A
	db $F2	; Originally $F3
org $92A06F	; 0x09206F
	db $F3	; Originally $F4
org $92A303	; 0x092303
	dw $C3F9	; Originally $C3F7
org $92A31B	; 0x09231B
	db $F7	; Originally $F6
org $92A3A2	; 0x0923A2
	dw $01EF : db $F5	; Originally $01EE,F6,2802
org $92A3D6	; 0x0923D6
	dw $C3F7	; Originally $C3F6
org $92A48E	; 0x09248E
	dw $C203	; Originally $C204
org $92A49F	; 0x09249F
	dw $C203	; Originally $C204
org $92A4AD	; 0x0924AD
	db $EE	; Originally $EF
org $92A4C3	; 0x0924C3
	db $EE : dw $2802	; Originally $EF,2802
	dw $C3FF : db $F1	; Originally $C3FF,F2,2804
org $92A4D2	; 0x0924D2
	dw $C202 : db $EE : dw $2802
	dw $C3FF : db $F1
; Originally $C201,EF,2802, C3FF,F2,2804
org $92A4E3	; 0x0924E3
	dw $C3FF	; Originally $C201
org $92A4F9	; 0x0924F9
	dw $C3FA	; Originally $C3FD
org $92A558	; 0x092558
	dw $C3EF : db $EF : dw $2802
	dw $C3F1
; Originally $C3EE,EF,2802, C3F2
org $92A612	; 0x092612
	db $F3 : dw $2800
	dw $C3F1 : db $F6
; Originally $F2,2800, C3F1,F5,6802
org $92A6F1	; 0x0926F1
	dw $15EA	; Originally $01FE
org $92A86E	; 0x09286E
	db $F9 : dw $2816
	dw $000B : db $F1
; Originally $F8,2816, 000B,F0,2817
org $92A8F6	; 0x0928F6
	dw $C3ED	; Originally $C3EC
org $92A907	; 0x092907
	dw $C3ED	; Originally $C3EC
org $92A915	; 0x092915
	db $02	; Originally $01
org $92A93A	; 0x09293A
	dw $C3EE	; Originally $C3EF
org $92A94B	; 0x09294B
	dw $C3F1	; Originally $C3EF
org $92A961	; 0x092961
	dw $C3F6	; Originally $C3F3
org $92A9C0	; 0x0929C0
	dw $C200	; Originally $C202
org $92AE72	; 0x092E72
	dw $0C07	; Originally $0C08
org $92AEF9	; 0x092EF9
	dw $C3FD : db $08 : dw $2808
	dw $C3F5 : db $00 : dw $280A
	dw $0005
; Originally $C3FE,08,2808, C3F6,00,280A, 0006
org $92AF0A	; 0x092F0A
	dw $C3F3 : db $08 : dw $6808
	dw $C3FB : db $00 : dw $680A
	dw $01F3
; Originally $C3F2,08,6808, C3FA,00,680A, 01F2
org $92AF58	; 0x092F58
	dw $C3F8	; Originally $C3F7
org $92B477	; 0x093477
		   db $0E : dw $280A
	dw $01FB : db $0E : dw $280B
	dw $01F3 : db $0E : dw $280C
	dw $01F3 : db $06 : dw $280D
	dw $C3FB : db $FE
; Originally $10,280A, 01FB,10,280B, 01F3,10,280C, 01F3,08,280D, C3FB,00
org $92B520	; 0x093520
	dw $C3FA : db $10 : dw $2808
	dw $C3FA
; Originally $C3F8,10,2808, C3F8
org $92B53A	; 0x09353A
		   db $0D : dw $280A
	dw $01E1 : db $05 : dw $280B
	dw $01F9 : db $FD : dw $280C
	dw $C3E9 : db $FD
; Originally $0F,280A, 01E1,07,280B, 01F9,FF,280C, C3E9,FF
org $92B628	; 0x093628
		   db $EA : dw $E80A
	dw $01FD : db $EA : dw $E80B
	dw $0005 : db $EA : dw $E80C
	dw $0005 : db $F2 : dw $E80D
	dw $C3F5 : db $F2
; Originally $E8,E80A, 01FD,E8,E80B, 0005,E8,E80C, 0005,F0,E80D, C3F5,F0
org $92BCA2	; 0x093CA2
	dw $01FF : db $03 : dw $2802
	dw $01F7 : db $03 : dw $2803
	dw $C3F7 : db $F3 : dw $2800
	
	dw $0005, $01FF : db $08 : dw $2802
	dw $01F7 : db $08 : dw $2803
	dw $01FF : db $00 : dw $2804
	dw $01F7 : db $00 : dw $2805
	dw $C3F7 : db $F0 : dw $2800

	dw $0003, $01F9 : db $03 : dw $6802
	dw $0001 : db $03 : dw $6803
	dw $C3F9 : db $F3 : dw $6800

	dw $0005, $01F9 : db $08 : dw $6802
	dw $0001 : db $08 : dw $6803
	dw $01F9 : db $00 : dw $6804
	dw $0001 : db $00 : dw $6805
	dw $C3F9 : db $F0
; Originally 0000,05,2802, 01F8,05,2803, C3F8,F5,2800
; Originally 0005, 0000,0A,2802, 01F8,0A,2803, 0000,02,2804, 01F8,02,2805, C3F8,F2,2800
; Originally 0003, 01F8,05,6802, 0000,05,6803, C3F8,F5,6800
; Originally 0005, 01F8,0A,6802, 0000,0A,6803, 01F8,02,6804, 0000,02,6805, C3F8,F2,6800
org $92C178	; 0x094178
	dw $C3F7	; Originally $C3F8
org $92C193	; 0x094193
	dw $C3F9	; Originally $C3F8


;----------------------------------------------------------;
;		Graphics data
;----------------------------------------------------------;

;----------------------------------------------------------;
; Tiles - Arm Cannon Closed
org $9A9A00	; 0x0D1A00
	incbin "Redesigned/CannonClosed/Vertical.gfx"
	incbin "Redesigned/CannonClosed/Horizontal.gfx"
	incbin "Redesigned/CannonClosed/DownDiagonal.gfx"
	incbin "Redesigned/CannonClosed/UpDiagonal.gfx"
;----------------------------------------------------------;
; Tiles - Samus death sequence
org $9B8000	; 0x0D8000
	incbin "Redesigned/SamusDeath.gfx"
;----------------------------------------------------------;
org $9BEA00	; 0x0DEA00
; Samus bottom tiles - set 8 (facing forward)
	incbin "Redesigned/BottomSet8X/SamusBottom80.gfx"
	incbin "Redesigned/BottomSet8X/SamusBottom81.gfx"
	incbin "Redesigned/BottomSet8X/SamusBottom82.gfx"	; Unused
;----------------------------------------------------------;
; Samus top tiles - set 9 (moving - gun extended)
	incbin "Redesigned/TopSet9X/SamusTop90.gfx"
	incbin "Redesigned/TopSet9X/SamusTop91.gfx"
	incbin "Redesigned/TopSet9X/SamusTop92.gfx"
	incbin "Redesigned/TopSet9X/SamusTop93.gfx"
	incbin "Redesigned/TopSet9X/SamusTop94.gfx"
	incbin "Redesigned/TopSet9X/SamusTop95.gfx"
	incbin "Redesigned/TopSet9X/SamusTop96.gfx"
	incbin "Redesigned/TopSet9X/SamusTop97.gfx"
	incbin "Redesigned/TopSet9X/SamusTop98.gfx"
	incbin "Redesigned/TopSet9X/SamusTop99.gfx"
	incbin "Redesigned/TopSet9X/SamusTop9A.gfx"
	incbin "Redesigned/TopSet9X/SamusTop9B.gfx"
	incbin "Redesigned/TopSet9X/SamusTop9C.gfx"
	incbin "Redesigned/TopSet9X/SamusTop9D.gfx"
	incbin "Redesigned/TopSet9X/SamusTop9E.gfx"
	incbin "Redesigned/TopSet9X/SamusTop9F.gfx"
;----------------------------------------------------------;
org $9C8000	; 0x0E0000
; Samus top tiles - set Ah (morph ball, spin jump, screw attack sparks)
	incbin "Redesigned/TopSetAX/SamusTopA0.gfx"
	incbin "Redesigned/TopSetAX/SamusTopA1.gfx"
	incbin "Redesigned/TopSetAX/SamusTopA2.gfx"
	incbin "Redesigned/TopSetAX/SamusTopA3.gfx"
	incbin "Redesigned/TopSetAX/SamusTopA4.gfx"
	incbin "Redesigned/TopSetAX/SamusTopA5.gfx"
	incbin "Redesigned/TopSetAX/SamusTopA6.gfx"
	incbin "Redesigned/TopSetAX/SamusTopA7.gfx"
	incbin "Redesigned/TopSetAX/SamusTopA8.gfx"
	incbin "Redesigned/TopSetAX/SamusTopA9.gfx"
	incbin "Redesigned/TopSetAX/SamusTopAA.gfx"
	incbin "Redesigned/TopSetAX/SamusTopAB.gfx"
	incbin "Redesigned/TopSetAX/SamusTopAC.gfx"
	incbin "Redesigned/TopSetAX/SamusTopAD.gfx"
	incbin "Redesigned/TopSetAX/SamusTopAE.gfx"
	incbin "Redesigned/TopSetAX/SamusTopAF.gfx"
;----------------------------------------------------------;
org $9C9780	; 0x0E1780
; Samus top tiles - set Bh (morphing transition, unused morph ball bounce)
	incbin "Redesigned/TopSetBX/SamusTopB3.gfx"
	incbin "Redesigned/TopSetBX/SamusTopB4.gfx"
	incbin "Redesigned/TopSetBX/SamusTopB5.gfx"
	incbin "Redesigned/TopSetBX/SamusTopB6.gfx"
;----------------------------------------------------------;
;Samus top tiles - set 3 (facing clockwise - grappling - in air - upside up)
	incbin "Redesigned/TopSet3X/SamusTop30.gfx"
	incbin "Redesigned/TopSet3X/SamusTop31.gfx"
	incbin "Redesigned/TopSet3X/SamusTop32.gfx"
	incbin "Redesigned/TopSet3X/SamusTop33.gfx"
	incbin "Redesigned/TopSet3X/SamusTop34.gfx"
	incbin "Redesigned/TopSet3X/SamusTop35.gfx"
	incbin "Redesigned/TopSet3X/SamusTop36.gfx"
	incbin "Redesigned/TopSet3X/SamusTop37.gfx"
	incbin "Redesigned/TopSet3X/SamusTop38.gfx"
	incbin "Redesigned/TopSet3X/SamusTop39.gfx"
	incbin "Redesigned/TopSet3X/SamusTop3A.gfx"
	incbin "Redesigned/TopSet3X/SamusTop3B.gfx"
	incbin "Redesigned/TopSet3X/SamusTop3C.gfx"
	incbin "Redesigned/TopSet3X/SamusTop3D.gfx"
	incbin "Redesigned/TopSet3X/SamusTop3E.gfx"
	incbin "Redesigned/TopSet3X/SamusTop3F.gfx"
	incbin "Redesigned/TopSet3X/SamusTop310.gfx"
;----------------------------------------------------------;
; Samus top tiles - set 4 (facing anticlockwise - grappling - in air - upside up)
	incbin "Redesigned/TopSet4X/SamusTop40.gfx"
	incbin "Redesigned/TopSet4X/SamusTop41.gfx"
	incbin "Redesigned/TopSet4X/SamusTop42.gfx"
	incbin "Redesigned/TopSet4X/SamusTop43.gfx"
	incbin "Redesigned/TopSet4X/SamusTop44.gfx"
	incbin "Redesigned/TopSet4X/SamusTop45.gfx"
	incbin "Redesigned/TopSet4X/SamusTop46.gfx"
	incbin "Redesigned/TopSet4X/SamusTop47.gfx"
	incbin "Redesigned/TopSet4X/SamusTop48.gfx"
	incbin "Redesigned/TopSet4X/SamusTop49.gfx"
	incbin "Redesigned/TopSet4X/SamusTop4A.gfx"
	incbin "Redesigned/TopSet4X/SamusTop4B.gfx"
	incbin "Redesigned/TopSet4X/SamusTop4C.gfx"
	incbin "Redesigned/TopSet4X/SamusTop4D.gfx"
	incbin "Redesigned/TopSet4X/SamusTop4E.gfx"
	incbin "Redesigned/TopSet4X/SamusTop4F.gfx"
	incbin "Redesigned/TopSet4X/SamusTop410.gfx"
;----------------------------------------------------------;
org $9CD2C0	; 0x0E52C0
; Samus top tiles - set 7 (standing, crouching, drained)
	incbin "Redesigned/TopSet7X/SamusTop70.gfx"
	incbin "Redesigned/TopSet7X/SamusTop71.gfx"
	incbin "Redesigned/TopSet7X/SamusTop72.gfx"
	incbin "Redesigned/TopSet7X/SamusTop73.gfx"
	incbin "Redesigned/TopSet7X/SamusTop74.gfx"
	incbin "Redesigned/TopSet7X/SamusTop75.gfx"
	incbin "Redesigned/TopSet7X/SamusTop76.gfx"
	incbin "Redesigned/TopSet7X/SamusTop77.gfx"
	incbin "Redesigned/TopSet7X/SamusTop78.gfx"
	incbin "Redesigned/TopSet7X/SamusTop79.gfx"
	incbin "Redesigned/TopSet7X/SamusTop7A.gfx"
	incbin "Redesigned/TopSet7X/SamusTop7B.gfx"
	incbin "Redesigned/TopSet7X/SamusTop7C.gfx"
	incbin "Redesigned/TopSet7X/SamusTop7D.gfx"
	incbin "Redesigned/TopSet7X/SamusTop7E.gfx"
	incbin "Redesigned/TopSet7X/SamusTop7F.gfx"
	incbin "Redesigned/TopSet7X/SamusTop710.gfx"
	incbin "Redesigned/TopSet7X/SamusTop711.gfx"
	incbin "Redesigned/TopSet7X/SamusTop712.gfx"
	incbin "Redesigned/TopSet7X/SamusTop713.gfx"
;----------------------------------------------------------;
; Samus bottom tiles - set 9 (space jump)
	incbin "Redesigned/BottomSet9X/SamusBottom90.gfx"
;----------------------------------------------------------;
org $9D8000	; 0x0E8000
; Samus bottom tiles - set 0 (general)
	incbin "Redesigned/BottomSet0X/SamusBottom00.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom01.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom02.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom03.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom04.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom05.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom06.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom07.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom08.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom09.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom0A.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom0B.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom0C.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom0D.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom0E.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom0F.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom010.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom011.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom012.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom013.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom014.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom015.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom016.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom017.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom018.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom019.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom01A.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom01B.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom01C.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom01D.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom01E.gfx"
	incbin "Redesigned/BottomSet0X/SamusBottom01F.gfx"
;----------------------------------------------------------;
; Samus bottom tiles - set 1 (general)
	incbin "Redesigned/BottomSet1X/SamusBottom10.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom11.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom12.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom13.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom14.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom15.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom16.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom17.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom18.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom19.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom1A.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom1B.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom1C.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom1D.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom1E.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom1F.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom110.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom111.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom112.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom113.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom114.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom115.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom116.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom117.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom118.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom119.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom11A.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom11B.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom11C.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom11D.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom11E.gfx"
	incbin "Redesigned/BottomSet1X/SamusBottom11F.gfx"
;----------------------------------------------------------;
; Samus top tiles - set 5 (facing clockwise - grappling - in air - upside down)
	incbin "Redesigned/TopSet5X/SamusTop50.gfx"
	incbin "Redesigned/TopSet5X/SamusTop51.gfx"
	incbin "Redesigned/TopSet5X/SamusTop52.gfx"
	incbin "Redesigned/TopSet5X/SamusTop53.gfx"
	incbin "Redesigned/TopSet5X/SamusTop54.gfx"
	incbin "Redesigned/TopSet5X/SamusTop55.gfx"
	incbin "Redesigned/TopSet5X/SamusTop56.gfx"
	incbin "Redesigned/TopSet5X/SamusTop57.gfx"
	incbin "Redesigned/TopSet5X/SamusTop58.gfx"
	incbin "Redesigned/TopSet5X/SamusTop59.gfx"
	incbin "Redesigned/TopSet5X/SamusTop5A.gfx"
	incbin "Redesigned/TopSet5X/SamusTop5B.gfx"
	incbin "Redesigned/TopSet5X/SamusTop5C.gfx"
	incbin "Redesigned/TopSet5X/SamusTop5D.gfx"
	incbin "Redesigned/TopSet5X/SamusTop5E.gfx"
	incbin "Redesigned/TopSet5X/SamusTop5F.gfx"
	incbin "Redesigned/TopSet5X/SamusTop510.gfx"

;----------------------------------------------------------;
; Samus top tiles - set 6 - part 1/2 (facing anticlockwise - grappling - in air - upside down)
	incbin "Redesigned/TopSet6X/SamusTop60.gfx"
	incbin "Redesigned/TopSet6X/SamusTop61.gfx"
	incbin "Redesigned/TopSet6X/SamusTop62.gfx"
	incbin "Redesigned/TopSet6X/SamusTop63.gfx"
	incbin "Redesigned/TopSet6X/SamusTop64.gfx"
	incbin "Redesigned/TopSet6X/SamusTop65.gfx"
	incbin "Redesigned/TopSet6X/SamusTop66.gfx"
	incbin "Redesigned/TopSet6X/SamusTop67.gfx"
	incbin "Redesigned/TopSet6X/SamusTop68.gfx"
	incbin "Redesigned/TopSet6X/SamusTop69.gfx"
	incbin "Redesigned/TopSet6X/SamusTop6A.gfx"
	incbin "Redesigned/TopSet6X/SamusTop6B.gfx"

warnpc $9DF780	; 0x0EF780
; $9DF780 - 0x0EF780 : Free/Unused space

;----------------------------------------------------------;

org $9E8000	; 0x0F0000
; Samus top tiles - set 0 (general)
	incbin "Redesigned/TopSet0X/SamusTop00.gfx"
	incbin "Redesigned/TopSet0X/SamusTop01.gfx"
	incbin "Redesigned/TopSet0X/SamusTop02.gfx"
	incbin "Redesigned/TopSet0X/SamusTop03.gfx"
	incbin "Redesigned/TopSet0X/SamusTop04.gfx"
	incbin "Redesigned/TopSet0X/SamusTop05.gfx"
	incbin "Redesigned/TopSet0X/SamusTop06.gfx"
	incbin "Redesigned/TopSet0X/SamusTop07.gfx"
	incbin "Redesigned/TopSet0X/SamusTop08.gfx"
	incbin "Redesigned/TopSet0X/SamusTop09.gfx"
	incbin "Redesigned/TopSet0X/SamusTop0A.gfx"
	incbin "Redesigned/TopSet0X/SamusTop0B.gfx"
	incbin "Redesigned/TopSet0X/SamusTop0C.gfx"
	incbin "Redesigned/TopSet0X/SamusTop0D.gfx"
	incbin "Redesigned/TopSet0X/SamusTop0E.gfx"
	incbin "Redesigned/TopSet0X/SamusTop0F.gfx"
	incbin "Redesigned/TopSet0X/SamusTop010.gfx"
	incbin "Redesigned/TopSet0X/SamusTop011.gfx"
	incbin "Redesigned/TopSet0X/SamusTop012.gfx"
	incbin "Redesigned/TopSet0X/SamusTop013.gfx"
	incbin "Redesigned/TopSet0X/SamusTop014.gfx"
	incbin "Redesigned/TopSet0X/SamusTop015.gfx"
	incbin "Redesigned/TopSet0X/SamusTop016.gfx"
	incbin "Redesigned/TopSet0X/SamusTop017.gfx"
	incbin "Redesigned/TopSet0X/SamusTop018.gfx"
	incbin "Redesigned/TopSet0X/SamusTop019.gfx"
	incbin "Redesigned/TopSet0X/SamusTop01A.gfx"
	incbin "Redesigned/TopSet0X/SamusTop01B.gfx"
	incbin "Redesigned/TopSet0X/SamusTop01C.gfx"
	incbin "Redesigned/TopSet0X/SamusTop01D.gfx"
	incbin "Redesigned/TopSet0X/SamusTop01E.gfx"
	incbin "Redesigned/TopSet0X/SamusTop01F.gfx"

; Samus top tiles - set 1 (general)
	incbin "Redesigned/TopSet1X/SamusTop10.gfx"
	incbin "Redesigned/TopSet1X/SamusTop11.gfx"
	incbin "Redesigned/TopSet1X/SamusTop12.gfx"
	incbin "Redesigned/TopSet1X/SamusTop13.gfx"
	incbin "Redesigned/TopSet1X/SamusTop14.gfx"
	incbin "Redesigned/TopSet1X/SamusTop15.gfx"
	incbin "Redesigned/TopSet1X/SamusTop16.gfx"
	incbin "Redesigned/TopSet1X/SamusTop17.gfx"
	incbin "Redesigned/TopSet1X/SamusTop18.gfx"
	incbin "Redesigned/TopSet1X/SamusTop19.gfx"
	incbin "Redesigned/TopSet1X/SamusTop1A.gfx"
	incbin "Redesigned/TopSet1X/SamusTop1B.gfx"
	incbin "Redesigned/TopSet1X/SamusTop1C.gfx"
	incbin "Redesigned/TopSet1X/SamusTop1D.gfx"
	incbin "Redesigned/TopSet1X/SamusTop1E.gfx"
	incbin "Redesigned/TopSet1X/SamusTop1F.gfx"
	incbin "Redesigned/TopSet1X/SamusTop110.gfx"
	incbin "Redesigned/TopSet1X/SamusTop111.gfx"
	incbin "Redesigned/TopSet1X/SamusTop112.gfx"
	incbin "Redesigned/TopSet1X/SamusTop113.gfx"
	incbin "Redesigned/TopSet1X/SamusTop114.gfx"
	incbin "Redesigned/TopSet1X/SamusTop115.gfx"
	incbin "Redesigned/TopSet1X/SamusTop116.gfx"
	incbin "Redesigned/TopSet1X/SamusTop117.gfx"
	incbin "Redesigned/TopSet1X/SamusTop118.gfx"
	incbin "Redesigned/TopSet1X/SamusTop119.gfx"
	incbin "Redesigned/TopSet1X/SamusTop11A.gfx"
	incbin "Redesigned/TopSet1X/SamusTop11B.gfx"
	incbin "Redesigned/TopSet1X/SamusTop11C.gfx"
	incbin "Redesigned/TopSet1X/SamusTop11D.gfx"

; Samus top tiles - set 2 (general)
	incbin "Redesigned/TopSet2X/SamusTop20.gfx"
	incbin "Redesigned/TopSet2X/SamusTop21.gfx"
	incbin "Redesigned/TopSet2X/SamusTop22.gfx"
	incbin "Redesigned/TopSet2X/SamusTop23.gfx"
	incbin "Redesigned/TopSet2X/SamusTop24.gfx"
	incbin "Redesigned/TopSet2X/SamusTop25.gfx"
	incbin "Redesigned/TopSet2X/SamusTop26.gfx"
	incbin "Redesigned/TopSet2X/SamusTop27.gfx"
	incbin "Redesigned/TopSet2X/SamusTop28.gfx"
	incbin "Redesigned/TopSet2X/SamusTop29.gfx"
	incbin "Redesigned/TopSet2X/SamusTop2A.gfx"
	incbin "Redesigned/TopSet2X/SamusTop2B.gfx"
	incbin "Redesigned/TopSet2X/SamusTop2C.gfx"
	incbin "Redesigned/TopSet2X/SamusTop2D.gfx"
	incbin "Redesigned/TopSet2X/SamusTop2E.gfx"
	incbin "Redesigned/TopSet2X/SamusTop2F.gfx"
	incbin "Redesigned/TopSet2X/SamusTop210.gfx"
	incbin "Redesigned/TopSet2X/SamusTop211.gfx"
	incbin "Redesigned/TopSet2X/SamusTop212.gfx"
	incbin "Redesigned/TopSet2X/SamusTop213.gfx"
	incbin "Redesigned/TopSet2X/SamusTop214.gfx"
	incbin "Redesigned/TopSet2X/SamusTop215.gfx"
	incbin "Redesigned/TopSet2X/SamusTop216.gfx"
	incbin "Redesigned/TopSet2X/SamusTop217.gfx"
	incbin "Redesigned/TopSet2X/SamusTop218.gfx"
	incbin "Redesigned/TopSet2X/SamusTop219.gfx"
	incbin "Redesigned/TopSet2X/SamusTop21A.gfx"
	incbin "Redesigned/TopSet2X/SamusTop21B.gfx"
	incbin "Redesigned/TopSet2X/SamusTop21C.gfx"
	incbin "Redesigned/TopSet2X/SamusTop21D.gfx"
	incbin "Redesigned/TopSet2X/SamusTop21E.gfx"
	incbin "Redesigned/TopSet2X/SamusTop21F.gfx"

; Samus bottom tiles - set 3 (unused)
; Unmodified by Redesigned patch
warnpc $9EE9C0	; 0x0F69C0
; $9EE9C0 - $9EF6BF

; $9EF6C0 - 0x0F76C0: Free/Unused space
;warnpc $9EF6C0	; 0x0F76C0


;----------------------------------------------------------;

org $9F8000	; 0x0F8000
; Samus bottom tiles - set 2 (facing clockwise - grappling - in air - upside up)
	incbin "Redesigned/BottomSet2X/SamusBottom20.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom21.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom22.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom23.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom24.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom25.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom26.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom27.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom28.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom29.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom2A.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom2B.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom2C.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom2D.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom2E.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom2F.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom210.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom211.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom212.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom213.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom214.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom215.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom216.gfx"
	incbin "Redesigned/BottomSet2X/SamusBottom217.gfx"

; Samus bottom tiles - set 4 (facing clockwise - grappling - in air - upside down)
	incbin "Redesigned/BottomSet4X/SamusBottom40.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom41.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom42.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom43.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom44.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom45.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom46.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom47.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom48.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom49.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom4A.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom4B.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom4C.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom4D.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom4E.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom4F.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom410.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom411.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom412.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom413.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom414.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom415.gfx"
	incbin "Redesigned/BottomSet4X/SamusBottom416.gfx"

; Samus bottom tiles - set 5 (facing anticlockwise - grappling - in air - upside up)
	incbin "Redesigned/BottomSet5X/SamusBottom50.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom51.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom52.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom53.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom54.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom55.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom56.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom57.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom58.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom59.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom5A.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom5B.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom5C.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom5D.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom5E.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom5F.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom510.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom511.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom512.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom513.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom514.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom515.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom516.gfx"
	incbin "Redesigned/BottomSet5X/SamusBottom517.gfx"

; Samus bottom tiles - set 6 (facing anticlockwise - grappling - in air - upside down)
	incbin "Redesigned/BottomSet6X/SamusBottom60.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom61.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom62.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom63.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom64.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom65.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom66.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom67.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom68.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom69.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom6A.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom6B.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom6C.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom6D.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom6E.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom6F.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom610.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom611.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom612.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom613.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom614.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom615.gfx"
	incbin "Redesigned/BottomSet6X/SamusBottom616.gfx"

; Samus top tiles - set Ch (crystal flash, vertical shinespark)
	incbin "Redesigned/TopSetCX/SamusTopC0.gfx"
	incbin "Redesigned/TopSetCX/SamusTopC1.gfx"
	incbin "Redesigned/TopSetCX/SamusTopC2.gfx"
	incbin "Redesigned/TopSetCX/SamusTopC3.gfx"
	incbin "Redesigned/TopSetCX/SamusTopC4.gfx"
	incbin "Redesigned/TopSetCX/SamusTopC5.gfx"
	incbin "Redesigned/TopSetCX/SamusTopC6.gfx"
	incbin "Redesigned/TopSetCX/SamusTopC7.gfx"

; Samus bottom tiles - set 7 (crystal flash bubble)
	incbin "Redesigned/BottomSet7X/SamusBottom70.gfx"
	incbin "Redesigned/BottomSet7X/SamusBottom71.gfx"
	incbin "Redesigned/BottomSet7X/SamusBottom72.gfx"

; Samus bottom tiles - set A (general)
	incbin "Redesigned/BottomSetAX/SamusBottomA0.gfx"
	incbin "Redesigned/BottomSetAX/SamusBottomA1.gfx"

; Samus top tiles - set 6 - part 2/2 (facing anticlockwise - grappling - in air - upside down)
	incbin "Redesigned/TopSet6X/SamusTop6C.gfx"
	incbin "Redesigned/TopSet6X/SamusTop6D.gfx"
	incbin "Redesigned/TopSet6X/SamusTop6E.gfx"
	incbin "Redesigned/TopSet6X/SamusTop6F.gfx"
	incbin "Redesigned/TopSet6X/SamusTop610.gfx"

; $9FF740 - 0x0FF740: Free/Unused space
warnpc $9FF740	; 0x0FF740

;----------------------------------------------------------;

; Pause screen tile changes
org $B6AF80	; 0x1B2F80
	incbin "Redesigned/PauseTiles.gfx"

; Samus' Arm Cannon Pause tiles
org $B6BA40	; 0x1B3A40
	incbin "Redesigned/PauseSamus.gfx"

; Pause Screen Palettes
org $B6F066	; 0x1B7066
	dw $4C1F	; Originally $001F
org $B6F072	; 0x1B7072
	dw $2870,$0200,$01D0	; Originally $2870,1CE7,4A52




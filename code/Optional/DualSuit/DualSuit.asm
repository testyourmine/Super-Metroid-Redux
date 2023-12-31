lorom 

;$9B/E000	;original gfx set
;$DF/E000	;new gfx start

ORG $92FA40
	db $00,$00,$00,$00,$00,$00,$00,$00

ORG $92803A			;LDA $D91E,y[$92:D92C]  ;|		DMA TABLE STUFFS
	JSR U_DMA_2
ORG $928078			;LDA $D938,y[$92:D938]  ;|	DMA TABLE STUFFS
	JSR L_DMA_2

;ORG $92EDF4			;FREESPACE STARTS HERE
ORG $92EE60	; Moved to 92EE60 for compatibility with Redux
U_DMA_2:
	PHX : LDA $09A2 : BIT #$0001 : BNE UT2
	BIT #$0020 : BNE UT2 : BRA UT2_2
UT2:
	PLX : LDA $D91E,y : RTS
UT2_2:
	PLX : LDA ALT_GFX_UT,y : RTS

L_DMA_2:
	PHX : LDA $09A2 : BIT #$0001 : BNE LT2
	BIT #$0020 : BNE LT2 : BRA LT2_2
LT2:
	PLX : LDA $D938,y : RTS
LT2_2:
	PLX : LDA ALT_GFX_LT,y : RTS

;DMA TABLE POINTERS USED BY ANIMATION FRAME PROGRESSION TABLE
;TOP HALF GFX (index shall not exceed #$0C):
ALT_GFX_UT:
DW UT2_DMA0, UT2_DMA1, UT2_DMA2, UT2_DMA3, UT2_DMA4, UT2_DMA5, UT2_DMA6
DW UT2_DMA7, UT2_DMA8, UT2_DMA9, UT2_DMAA, UT2_DMAB, UT2_DMAC 
            
;BOTTOM HALF GFX (index shall not exceed #$0A):
ALT_GFX_LT:
DW LT2_DMA0, LT2_DMA1, LT2_DMA2, LT2_DMA3, LT2_DMA4, LT2_DMA5, LT2_DMA6
DW LT2_DMA7, LT2_DMA8, LT2_DMA9, LT2_DMAA


;ALT DMA TABLES
UT2_DMA0:
DL $E28000 : DW $0080, $0080  
DL $E28100 : DW $0080, $0080  
DL $E28200 : DW $00A0, $0080  
DL $E28320 : DW $00A0, $0080  
DL $E28440 : DW $0080, $0080  
DL $E28540 : DW $00C0, $00C0  
DL $E286C0 : DW $0080, $0080  
DL $E287C0 : DW $0080, $0080  
DL $E288C0 : DW $00C0, $00C0  
DL $E28A40 : DW $00C0, $00C0  
DL $E28BC0 : DW $0080, $0080  
DL $E28CC0 : DW $00A0, $0080  
DL $E28DE0 : DW $00E0, $0040  
DL $E28F00 : DW $00E0, $0040  
DL $E29020 : DW $00E0, $0080  
DL $E29180 : DW $00E0, $0080  
DL $E292E0 : DW $00C0, $0040  
DL $E293E0 : DW $00C0, $0040  
DL $E294E0 : DW $00C0, $0080  
DL $E29620 : DW $00C0, $0080  
DL $E29760 : DW $00A0, $0080  
DL $E29880 : DW $00C0, $00C0  
DL $E29A00 : DW $00C0, $0040  
DL $E29B00 : DW $00C0, $0040  
DL $E29C00 : DW $00A0, $0080  
DL $E29D20 : DW $00A0, $0080  
DL $E29E40 : DW $00C0, $0040  
DL $E29F40 : DW $00E0, $0040  
DL $E2A060 : DW $0100, $00C0  
DL $E2A220 : DW $0100, $00C0  
DL $E2A3E0 : DW $0100, $0040  
DL $E2A520 : DW $0100, $0040 

UT2_DMA1:
DL $E2A660 : DW $00C0, $0080  
DL $E2A7A0 : DW $00C0, $0080  
DL $E2A8E0 : DW $00E0, $00C0  
DL $E2AA80 : DW $0100, $00C0  
DL $E2AC40 : DW $0020, $0000  
DL $E2AC60 : DW $0040, $0040  
DL $E2ACE0 : DW $00C0, $0080  
DL $E2AE20 : DW $00C0, $0080  
DL $E2AF60 : DW $00E0, $0040  
DL $E2B080 : DW $00C0, $0040  
DL $E2B180 : DW $00E0, $00C0  
DL $E2B320 : DW $0100, $0080  
DL $E2B4A0 : DW $0100, $0080  
DL $E2B620 : DW $0080, $0080  
DL $E2B720 : DW $0080, $0080  
DL $E2B820 : DW $0080, $0080  
DL $E2B920 : DW $0080, $0080  
DL $E2BA20 : DW $0080, $0080  
DL $E2BB20 : DW $0080, $0080  
DL $E2BC20 : DW $0080, $0080  
DL $E2BD20 : DW $0100, $00C0  
DL $E2BEE0 : DW $0100, $00C0  
DL $E2C0A0 : DW $0020, $0000  
DL $E2C0C0 : DW $0020, $0000  
DL $E2C0E0 : DW $00E0, $0040  
DL $E2C200 : DW $00E0, $0040  
DL $E2C320 : DW $00C0, $0080  
DL $E2C460 : DW $00C0, $0080  
DL $E2C5A0 : DW $00C0, $0080  
DL $E2C6E0 : DW $00C0, $0080 

UT2_DMA2:
DL $E2C820 : DW $0080, $0040  
DL $E2C8E0 : DW $0080, $0080  
DL $E2C9E0 : DW $00C0, $0080  
DL $E2CB20 : DW $0080, $0080  
DL $E2CC20 : DW $0080, $0040  
DL $E2CCE0 : DW $0080, $0080  
DL $E2CDE0 : DW $00E0, $0040  
DL $E2CF00 : DW $00E0, $0040  
DL $E2D020 : DW $00C0, $0040  
DL $E2D120 : DW $00C0, $0040  
DL $E2D220 : DW $00C0, $0040  
DL $E2D320 : DW $00C0, $0040  
DL $E2D420 : DW $00C0, $0040  
DL $E2D520 : DW $00C0, $0040  
DL $E2D620 : DW $00C0, $0040  
DL $E2D720 : DW $00C0, $0040  
DL $E2D820 : DW $00C0, $0040  
DL $E2D920 : DW $00E0, $0040  
DL $E2DA40 : DW $0100, $0040  
DL $E2DB80 : DW $0100, $0040  
DL $E2DCC0 : DW $0100, $0040  
DL $E2DE00 : DW $0100, $0040  
DL $E2DF40 : DW $00C0, $0040  
DL $E2E040 : DW $00E0, $0040  
DL $E2E160 : DW $00E0, $0040  
DL $E2E280 : DW $00E0, $0040  
DL $E2E3A0 : DW $00C0, $0040  
DL $E2E4A0 : DW $00C0, $0040  
DL $E2E5A0 : DW $00E0, $0040  
DL $E2E6C0 : DW $00C0, $0040  
DL $E2E7C0 : DW $00C0, $0040  
DL $E2E8C0 : DW $00C0, $0040 

UT2_DMA3:
DL $E09B00 : DW $00C0, $0080  
DL $E09C40 : DW $00C0, $0080  
DL $E09D80 : DW $00C0, $00C0  
DL $E09F00 : DW $00C0, $00C0  
DL $E0A080 : DW $00C0, $00C0  
DL $E0A200 : DW $00C0, $00C0  
DL $E0A380 : DW $00C0, $00C0  
DL $E0A500 : DW $00C0, $0080  
DL $E0A640 : DW $00C0, $0080  
DL $E0A780 : DW $00C0, $0080  
DL $E0A8C0 : DW $00C0, $00C0  
DL $E0AA40 : DW $00C0, $00C0  
DL $E0ABC0 : DW $00C0, $00C0  
DL $E0AD40 : DW $00C0, $00C0  
DL $E0AEC0 : DW $00C0, $00C0  
DL $E0B040 : DW $00C0, $0080  
DL $E0B180 : DW $00C0, $0080  

UT2_DMA4:
DL $E0B2C0 : DW $0100, $00C0  
DL $E0B480 : DW $0100, $00C0  
DL $E0B640 : DW $0100, $0100  
DL $E0B840 : DW $0100, $0100  
DL $E0BA40 : DW $0100, $00E0  
DL $E0BC20 : DW $0100, $00E0  
DL $E0BE00 : DW $0100, $00E0  
DL $E0BFE0 : DW $0100, $00C0  
DL $E0C1A0 : DW $0100, $00C0  
DL $E0C360 : DW $0100, $00C0  
DL $E0C520 : DW $0100, $00E0  
DL $E0C700 : DW $0100, $0100  
DL $E0C900 : DW $0100, $0100  
DL $E0CB00 : DW $0100, $0100  
DL $E0CD00 : DW $0100, $0100  
DL $E0CF00 : DW $0100, $00E0  
DL $E0D0E0 : DW $0100, $00E0  

UT2_DMA5:
DL $E1C980 : DW $00C0, $0080  
DL $E1CAC0 : DW $00C0, $0080  
DL $E1CC00 : DW $00C0, $00C0  
DL $E1CD80 : DW $00C0, $00C0  
DL $E1CF00 : DW $00C0, $00C0  
DL $E1D080 : DW $00C0, $00C0  
DL $E1D200 : DW $00C0, $00C0  
DL $E1D380 : DW $00C0, $0080  
DL $E1D4C0 : DW $00C0, $0080  
DL $E1D600 : DW $00C0, $0080  
DL $E1D740 : DW $00C0, $00C0  
DL $E1D8C0 : DW $00C0, $00C0  
DL $E1DA40 : DW $00C0, $00C0  
DL $E1DBC0 : DW $00C0, $00C0  
DL $E1DD40 : DW $00C0, $00C0  
DL $E1DEC0 : DW $00C0, $0080  
DL $E1E000 : DW $00C0, $0080 

UT2_DMA6:
DL $E1E140 : DW $0100, $00C0  
DL $E1E300 : DW $0100, $00C0  
DL $E1E4C0 : DW $0100, $0100  
DL $E1E6C0 : DW $0100, $0100  
DL $E1E8C0 : DW $0100, $00E0  
DL $E1EAA0 : DW $0100, $00E0  
DL $E1EC80 : DW $0100, $00E0  
DL $E1EE60 : DW $0100, $00C0  
DL $E1F020 : DW $0100, $00C0  
DL $E1F1E0 : DW $0100, $00C0  
DL $E1F3A0 : DW $0100, $00E0  
DL $E1F580 : DW $0100, $0100  
DL $E3ED80 : DW $0100, $0100  
DL $E3EF80 : DW $0100, $0100  
DL $E3F180 : DW $0100, $0100  
DL $E3F380 : DW $0100, $00E0  
DL $E3F560 : DW $0100, $00E0 

UT2_DMA7:
DL $E0D2C0 : DW $00E0, $0040  
DL $E0D3E0 : DW $00E0, $0040  
DL $E0D500 : DW $00E0, $0040  
DL $E0D620 : DW $0100, $0040  
DL $E0D760 : DW $0100, $0040  
DL $E0D8A0 : DW $0100, $0040  
DL $E0D9E0 : DW $00E0, $0040  
DL $E0DB00 : DW $00E0, $0040  
DL $E0DC20 : DW $00E0, $0040  
DL $E0DD40 : DW $0100, $0040  
DL $E0DE80 : DW $0100, $0040  
DL $E0DFC0 : DW $0100, $0040  
DL $E0E100 : DW $00C0, $0080  
DL $E0E240 : DW $00C0, $0080  
DL $E0E380 : DW $00C0, $0080  
DL $E0E4C0 : DW $00C0, $0080  
DL $E0E600 : DW $00C0, $0080  
DL $E0E740 : DW $00C0, $0080  
DL $E0E880 : DW $00C0, $0040  
DL $E0E980 : DW $00C0, $0040 

UT2_DMA8:
DL $DFE000 : DW $0020, $0000  
DL $DFE020 : DW $0020, $0000  
DL $DFE040 : DW $0100, $0020  
DL $DFE160 : DW $00E0, $0000  
DL $DFE240 : DW $0100, $0060  
DL $DFE3A0 : DW $0100, $00E0  
DL $DFE580 : DW $0100, $0000  
DL $DFE680 : DW $0100, $0040  
DL $DFE7C0 : DW $0100, $0060  
DL $DFE920 : DW $00E0, $0000 

UT2_DMA9:
DL $DFEE20 : DW $0080, $0040  
DL $DFEEE0 : DW $0080, $0040  
DL $DFEFA0 : DW $00A0, $0040  
DL $DFF080 : DW $00C0, $0040  
DL $DFF180 : DW $0080, $0040  
DL $DFF240 : DW $00A0, $0040  
DL $DFF320 : DW $00C0, $0040  
DL $DFF420 : DW $00C0, $0040  
DL $DFF520 : DW $00E0, $0040  
DL $DFF640 : DW $00E0, $0040  
DL $DFF760 : DW $00C0, $0040  
DL $DFF860 : DW $0100, $0040  
DL $DFF9A0 : DW $00C0, $0040  
DL $DFFAA0 : DW $0100, $0040  
DL $DFFBE0 : DW $0080, $0040  
DL $DFFCA0 : DW $00C0, $0040 

LT2_DMA0:
DL $E18000 : DW $0080, $0080  
DL $E18100 : DW $00E0, $0080  
DL $E18260 : DW $00E0, $00C0  
DL $E18400 : DW $0080, $0080  
DL $E18500 : DW $0100, $0080  
DL $E18680 : DW $00E0, $00C0  
DL $E18820 : DW $00C0, $00C0  
DL $E189A0 : DW $0080, $0080  
DL $E18AA0 : DW $00C0, $0080  
DL $E18BE0 : DW $0100, $0080  
DL $E18D60 : DW $00C0, $0080  
DL $E18EA0 : DW $0100, $0080  
DL $E19020 : DW $0100, $00C0  
DL $E191E0 : DW $0100, $00C0  
DL $E193A0 : DW $00C0, $00C0  
DL $E19520 : DW $00C0, $00C0  
DL $E196A0 : DW $00C0, $00C0  
DL $E19820 : DW $00A0, $0040  
DL $E19900 : DW $00A0, $0040  
DL $E199E0 : DW $00A0, $0080  
DL $E19B00 : DW $00A0, $0080  
DL $E19C20 : DW $00A0, $0080  
DL $E19D40 : DW $00A0, $0080  
DL $E19E60 : DW $0080, $0040  
DL $E19F20 : DW $0080, $0040  
DL $E19FE0 : DW $0080, $0080  
DL $E1A0E0 : DW $0080, $0080  
DL $E1A1E0 : DW $00C0, $0080  
DL $E1A320 : DW $00C0, $0080  
DL $E1A460 : DW $00C0, $00C0  
DL $E1A5E0 : DW $0080, $0080  
DL $E1A6E0 : DW $0080, $0080 

LT2_DMA1:
DL $E1A7E0 : DW $00C0, $0080  
DL $E1A920 : DW $0080, $0080  
DL $E1AA20 : DW $0040, $0040  
DL $E1AAA0 : DW $00C0, $0080  
DL $E1ABE0 : DW $0080, $0080  
DL $E1ACE0 : DW $0080, $0080  
DL $E1ADE0 : DW $00C0, $0080  
DL $E1AF20 : DW $00C0, $0080  
DL $E1B060 : DW $00E0, $0040  
DL $E1B180 : DW $00E0, $0040  
DL $E1B2A0 : DW $00A0, $0080  
DL $E1B3C0 : DW $00A0, $0080  
DL $E1B4E0 : DW $0080, $0080  
DL $E1B5E0 : DW $0080, $0080  
DL $E1B6E0 : DW $00C0, $0040  
DL $E1B7E0 : DW $00C0, $0040  
DL $E1B8E0 : DW $0020, $0000  
DL $E1B900 : DW $00E0, $0040  
DL $E1BA20 : DW $00E0, $0040  
DL $E1BB40 : DW $0100, $0040  
DL $E1BC80 : DW $00C0, $0040  
DL $E1BD80 : DW $00A0, $0080  
DL $E1BEA0 : DW $00A0, $0080  
DL $E1BFC0 : DW $00A0, $0080  
DL $E1C0E0 : DW $00A0, $0080  
DL $E1C200 : DW $00E0, $0080  
DL $E1C360 : DW $00E0, $0080  
DL $E1C4C0 : DW $00C0, $0080  
DL $E1C600 : DW $00C0, $0080  
DL $E1C740 : DW $0080, $0080  
DL $E1C840 : DW $0060, $0040  
DL $E1C8E0 : DW $0060, $0040 

LT2_DMA2:
DL $E38000 : DW $0080, $0040  
DL $E380C0 : DW $00E0, $0040  
DL $E381E0 : DW $00A0, $0080  
DL $E38300 : DW $00A0, $0040  
DL $E383E0 : DW $00C0, $0040  
DL $E384E0 : DW $00C0, $0040  
DL $E385E0 : DW $0080, $0040  
DL $E386A0 : DW $00A0, $0040  
DL $E38780 : DW $00A0, $0040  
DL $E38860 : DW $00C0, $0040  
DL $E38960 : DW $00A0, $0080  
DL $E38A80 : DW $0080, $0080  
DL $E38B80 : DW $0080, $0080  
DL $E38C80 : DW $0080, $0080  
DL $E38D80 : DW $00A0, $0040  
DL $E38E60 : DW $0080, $0080  
DL $E38F60 : DW $0080, $0080  
DL $E39060 : DW $00A0, $0040  
DL $E39140 : DW $0080, $0080  
DL $E39240 : DW $0080, $0080  
DL $E39340 : DW $0080, $0080  
DL $E39440 : DW $00C0, $0080  
DL $E39580 : DW $0080, $0080  
DL $E39680 : DW $0080, $0080 

LT2_DMA4:
DL $E39780 : DW $0080, $0040  
DL $E39840 : DW $00E0, $0040  
DL $E39960 : DW $00A0, $0080  
DL $E39A80 : DW $00A0, $0040  
DL $E39B60 : DW $00C0, $0040  
DL $E39C60 : DW $00C0, $0040  
DL $E39D60 : DW $0080, $0040  
DL $E39E20 : DW $00A0, $0040  
DL $E39F00 : DW $00A0, $0040  
DL $E39FE0 : DW $00C0, $0040  
DL $E3A0E0 : DW $00A0, $0080  
DL $E3A200 : DW $0080, $0080  
DL $E3A300 : DW $0080, $0080  
DL $E3A400 : DW $0080, $0080  
DL $E3A500 : DW $00A0, $0040  
DL $E3A5E0 : DW $0080, $0080  
DL $E3A6E0 : DW $0080, $0080  
DL $E3A7E0 : DW $00A0, $0040  
DL $E3A8C0 : DW $0080, $0080  
DL $E3A9C0 : DW $0080, $0080  
DL $E3AAC0 : DW $0080, $0080  
DL $E3ABC0 : DW $0080, $0080  
DL $E3ACC0 : DW $0080, $0080 

LT2_DMA5:
DL $E3ADC0 : DW $0080, $0040  
DL $E3AE80 : DW $00E0, $0040  
DL $E3AFA0 : DW $00A0, $0080  
DL $E3B0C0 : DW $00A0, $0040  
DL $E3B1A0 : DW $00C0, $0040  
DL $E3B2A0 : DW $00C0, $0040  
DL $E3B3A0 : DW $0080, $0040  
DL $E3B460 : DW $00A0, $0040  
DL $E3B540 : DW $00A0, $0040  
DL $E3B620 : DW $00C0, $0040  
DL $E3B720 : DW $00A0, $0080  
DL $E3B840 : DW $0080, $0080  
DL $E3B940 : DW $0080, $0080  
DL $E3BA40 : DW $0080, $0080  
DL $E3BB40 : DW $00A0, $0040  
DL $E3BC20 : DW $0080, $0080  
DL $E3BD20 : DW $0080, $0080  
DL $E3BE20 : DW $00A0, $0040  
DL $E3BF00 : DW $0080, $0080  
DL $E3C000 : DW $0080, $0080  
DL $E3C100 : DW $0080, $0080  
DL $E3C200 : DW $00C0, $0080  
DL $E3C340 : DW $0080, $0080  
DL $E3C440 : DW $0080, $0080 

LT2_DMA6:
DL $E3C540 : DW $0080, $0040  
DL $E3C600 : DW $00E0, $0040  
DL $E3C720 : DW $00A0, $0080  
DL $E3C840 : DW $00A0, $0040  
DL $E3C920 : DW $00C0, $0040  
DL $E3CA20 : DW $00C0, $0040  
DL $E3CB20 : DW $0080, $0040  
DL $E3CBE0 : DW $00A0, $0040  
DL $E3CCC0 : DW $00A0, $0040  
DL $E3CDA0 : DW $00C0, $0040  
DL $E3CEA0 : DW $00A0, $0080  
DL $E3CFC0 : DW $0080, $0080  
DL $E3D0C0 : DW $0080, $0080  
DL $E3D1C0 : DW $0080, $0080  
DL $E3D2C0 : DW $00A0, $0040  
DL $E3D3A0 : DW $0080, $0080  
DL $E3D4A0 : DW $0080, $0080  
DL $E3D5A0 : DW $00A0, $0040  
DL $E3D680 : DW $0080, $0080  
DL $E3D780 : DW $0080, $0080  
DL $E3D880 : DW $0080, $0080  
DL $E3D980 : DW $0080, $0080  
DL $E3DA80 : DW $0080, $0080 

LT2_DMA8:
DL $DFEA00 : DW $0100, $0100  
DL $DFEC00 : DW $0100, $0100  
DL $DFEE00 : DW $0020, $0000 

LT2_DMAA:
DL $E3EB00 : DW $00C0, $0080  
DL $E3EC40 : DW $00C0, $0080 

UT2_DMAA:
DL $E08000 : DW $0060, $0040  
DL $E080A0 : DW $0060, $0040  
DL $E08140 : DW $0060, $0040  
DL $E081E0 : DW $0060, $0040  
DL $E08280 : DW $00A0, $0000  
DL $E08320 : DW $0060, $0040  
DL $E083C0 : DW $0060, $0040  
DL $E08460 : DW $0060, $0040  
DL $E08500 : DW $0080, $0080  
DL $E08600 : DW $0100, $0100  
DL $E08800 : DW $0080, $0080  
DL $E08900 : DW $0100, $0100  
DL $E08B00 : DW $0080, $0080  
DL $E08C00 : DW $0100, $0100  
DL $E08E00 : DW $0080, $0080  
DL $E08F00 : DW $0100, $0100  
DL $E09100 : DW $0100, $0040  
DL $E09240 : DW $0100, $0060  
DL $E093A0 : DW $0100, $0060  
DL $E09500 : DW $0100, $0000  
DL $E09600 : DW $0020, $0000 

UT2_DMAB:
DL $E09620 : DW $0020, $0000  
DL $E09640 : DW $0060, $0040  
DL $E096E0 : DW $0060, $0040  
DL $E09780 : DW $0080, $0040  
DL $E09840 : DW $00C0, $0040  
DL $E09940 : DW $0080, $0040  
DL $E09A00 : DW $00C0, $0040 

LT2_DMA3:
DL $E2E9C0 : DW $0040, $0040  
DL $E2EA40 : DW $0080, $0080  
DL $E2EB40 : DW $0040, $0040  
DL $E2EBC0 : DW $0080, $0080  
DL $E2ECC0 : DW $0040, $0040  
DL $E2ED40 : DW $0080, $0080  
DL $E2EE40 : DW $0040, $0040  
DL $E2EEC0 : DW $0080, $0080  
DL $E2EFC0 : DW $0040, $0040  
DL $E2F040 : DW $0080, $0080  
DL $E2F140 : DW $0040, $0040  
DL $E2F1C0 : DW $0080, $0080  
DL $E2F2C0 : DW $0040, $0040  
DL $E2F340 : DW $0080, $0080  
DL $E2F440 : DW $0040, $0040  
DL $E2F4C0 : DW $0080, $0080  
DL $E2F5C0 : DW $0080, $0080 

UT2_DMAC:
DL $E3DB80 : DW $0100, $00C0  
DL $E3DD40 : DW $0100, $00C0  
DL $E3DF00 : DW $0100, $0040  
DL $E3E040 : DW $0100, $0040  
DL $E3E180 : DW $0100, $0040  
DL $E3E2C0 : DW $0100, $0040  
DL $E3E400 : DW $0100, $0040  
DL $E3E540 : DW $0100, $0040 

LT2_DMA7:
DL $E3E680 : DW $0040, $0040  
DL $E3E700 : DW $0100, $0100  
DL $E3E900 : DW $0100, $0100 

LT2_DMA9:
DL $E0EA80 : DW $0100, $0100  
DL $E0EC80 : DW $0100, $0100  
DL $E0EE80 : DW $0100, $0100  
DL $E0F080 : DW $0100, $0100  
DL $E0F280 : DW $0100, $0100  
DL $E0F480 : DW $0100, $0100  
DL $E0F680 : DW $0100, $0100  
DL $E0F880 : DW $0100, $0100 

;goes to 92FA3D

org $DFDC00	; 0x2FDC00
	incbin PowerSuit/Pow_000.gfx
org $E08000	; 0x300000
	incbin PowerSuit/Pow_001.gfx
org $E0A400	; 0x302400
	incbin PowerSuit/Pow_010.gfx
org $E0C800	; 0x304800
	incbin PowerSuit/Pow_011.gfx
org $E0EC00	; 0x306C00
	incbin PowerSuit/Pow_020.gfx
org $E18000	; 0x308000
	incbin PowerSuit/Pow_021.gfx
org $E1B400	; 0x308000
	incbin PowerSuit/Pow_030.gfx
	fillbyte $FF : fill $400
org $E28000	; 0x310000
	incbin PowerSuit/Pow_040.gfx
org $E2C800	; 0x314800
	incbin PowerSuit/Pow_050.gfx
org $E38000	; 0x318000
	incbin PowerSuit/Pow_051.gfx
	incbin PowerSuit/Pow_060.gfx
org $E3D800	; 0x31D800
	incbin PowerSuit/Pow_070.gfx
;org $E48000	; 0x320000
; "Empty Space - Don't overwrite" graphics
;	incbin Pow_071.gfx


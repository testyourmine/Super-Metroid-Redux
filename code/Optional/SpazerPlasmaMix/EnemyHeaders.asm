;----------------------------------------------------------;
;		Enemy Headers
;----------------------------------------------------------;
; All vulnerability pointers go to bank $B4
lorom

; Vulnerability header pointer for Enemy name $DDEB
org $A0CEFB	; 0x104EFB
	dw l_EDF0	; Originally $EDA8

; Vulnerability header pointer for Enemy name $DF11
org $A0CF7B	; 0x104F7B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $0000
org $A0CFBB	; 0x104FBB
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E16B
org $A0D07B	; 0x10507B
	dw l_EEF4	; Originally $EE84

; Vulnerability header pointer for Enemy name $DF65
org $A0D17B	; 0x10517B
	dw l_EE58	; Originally $EE00

; Vulnerability header pointer for Enemy name $DFB9
org $A0D1FB	; 0x1051FB
	dw l_EEDA	; Originally $EE6E

; Vulnerability header pointer for Enemy name $E029
org $A0D23B	; 0x10523B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E141
org $A0D2FB	; 0x1052FB
	dw l_EE3E	; Originally $EDEA

; Vulnerability header pointer for Enemy name $DE85
org $A0D33B	; 0x10533B
	dw l_EEA6	; Originally $EE42

; Vulnerability header pointer for Enemy name $DED9
org $A0D37B	; 0x10537B
	dw l_EEC0	; Originally $EE58

; Vulnerability header pointer for Enemy name $DFFF
org $A0D3BB	; 0x1053BB
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E099
org $A0D43B	; 0x10543B
	dw l_EFDE	; Originally $EF4A
	
; Vulnerability header pointer for Enemy name $E099
org $A0D47B	; 0x10547B
	dw l_EE3E	; Originally $EDEA

; Vulnerability header pointer for Enemy name $E08B
org $A0D4BB	; 0x1054BB
	dw l_EE3E	; Originally $EDEA

; Vulnerability header pointer for Enemy name $DE15
org $A0D4FB	; 0x1054FB
	dw l_EE72	; Originally $EE16

; Vulnerability header pointer for Enemy name $E0FB
org $A0D53B	; 0x10553B
	dw l_EF90	; Originally $EF08

; Vulnerability header pointer for Enemy name $E109
org $A0D57B	; 0x10557B
	dw l_EF90	; Originally $EF08

; Vulnerability header pointer for Enemy name $E109
org $A0D5BB	; 0x1055BB
	dw l_EF90	; Originally $EF08

; Vulnerability header pointer for Enemy name $E109
org $A0D5FB	; 0x1055FB
	dw l_F060	; Originally $EFB8

; Vulnerability header pointer for Enemy name $E109
org $A0D63B	; 0x10563B
	dw l_EF90	; Originally $EF08

; Vulnerability header pointer for Enemy name $DF8F
org $A0D6BB	; 0x1056BB
	dw l_EE0A	; Originally $EDBE

; Vulnerability header pointer for Enemy name $DF2D
org $A0D7BB	; 0x1057BB
	dw l_F012	; Originally $EF76

; Vulnerability header pointer for Enemy name $E00D
org $A0D7FB	; 0x1057FB
	dw l_F012	; Originally $EF76

; Vulnerability header pointer for Enemy name $DF1F
org $A0D83B	; 0x10583B
	dw l_EE3E	; Originally $EDEA

; Vulnerability header pointer for Enemy name $DF1F
org $A0D87B	; 0x10587B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E0D1
org $A0D8BB	; 0x1058BB
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E0D1
org $A0D8FB	; 0x1058FB
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E117
org $A0DA3B	; 0x105A3B
	dw l_F14A	; Originally $F07E

; Vulnerability header pointer for Enemy name $DDF9
org $A0DA7B	; 0x105A7B
	dw l_EC36	; Originally $EC32

; Vulnerability header pointer for Enemy name $E179
org $A0DAFB	; 0x105AFB
	dw l_EC50	; Originally $EC48

; Vulnerability header pointer for Enemy name $DDA5
org $A0DB7B	; 0x105B7B
	dw l_F0C8	; Originally $F010

; Vulnerability header pointer for Enemy name $E195
org $A0DBFB	; 0x105BFB
	dw l_EC50	; Originally $EC48

; Vulnerability header pointer for Enemy name $E061
org $A0DC3B	; 0x105C3B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $DEF5
org $A0DC7B	; 0x105C7B
	dw l_EC50	; Originally $EC48

; Vulnerability header pointer for Enemy name $E1BF
org $A0DCBB	; 0x105CBB
	dw l_EC50	; Originally $EC48

; Vulnerability header pointer for Enemy name $DFF1
org $A0DCFB	; 0x105CFB
	dw l_EC50	; Originally $EC48

; Vulnerability header pointer for Enemy name $E1DB
org $A0DD3B	; 0x105D3B
	dw l_EC50	; Originally $EC48

; Vulnerability header pointer for Enemy name $DFC7
org $A0DD7B	; 0x105D7B
	dw l_EE24	; Originally $EDD4

; Vulnerability header pointer for Enemy name $DFAB
org $A0DDBB	; 0x105DBB
	dw l_EFF8	; Originally $EF60

; Vulnerability header pointer for Enemy name $0000
org $A0DDFB	; 0x105DFB
	dw l_F4B8	; Originally $F102

; Vulnerability header pointer for Enemy name $0000
org $A0DE3B	; 0x105E3B
	dw l_F4B8	; Originally $F102

; Vulnerability header pointer for Enemy name $0000
org $A0DE7B	; 0x105E7B
	dw l_F506	; Originally $F144

; Vulnerability header pointer for Enemy name $0000
org $A0DEBB	; 0x105EBB
	dw l_F506	; Originally $F144

; Vulnerability header pointer for Enemy name $0000
org $A0DEFB	; 0x105EFB
	dw l_F506	; Originally $F144

; Vulnerability header pointer for Enemy name $0000
org $A0DF3B	; 0x105F3B
	dw l_F506	; Originally $F144

; Vulnerability header pointer for Enemy name $0000
org $A0DF7B	; 0x105F7B
	dw l_F164	; Originally $F094

; Vulnerability header pointer for Enemy name $0000
org $A0DFBB	; 0x105FBB
	dw l_F164	; Originally $F094
	
; Vulnerability header pointer for Enemy name $E0B5
org $A0DFFB	; 0x105FFB
	dw l_EF5C	; Originally $EEDC

; Vulnerability header pointer for Enemy name $DF49
org $A0E03B	; 0x10603B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $0000
org $A0E07B	; 0x10607B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $DEDB
org $A0E0BB	; 0x1060BB
	dw l_EF42	; Originally $EEC6
	
; Vulnerability header pointer for Enemy name $E037
org $A0E0FB	; 0x1060FB
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E0DF
org $A0E13B	; 0x10613B
	dw l_F0AE	; Originally $EFFA

; Vulnerability header pointer for Enemy name $0000
org $A0E17B	; 0x10617B
	dw l_F588	; Originally $F1B2

; Vulnerability header pointer for Enemy name $0000
org $A0E1BB	; 0x1061BB
	dw l_F588	; Originally $F1B2
	
; Vulnerability header pointer for Enemy name $0000
org $A0E1FB	; 0x1061FB
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $0000
org $A0E23B	; 0x10623B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $0000
org $A0E2BB	; 0x1062BB
	dw l_F130	; Originally $F068
	
; Vulnerability header pointer for Enemy name $0000
org $A0E2FB	; 0x1062FB
	dw l_F520	; Originally $F15A

; Vulnerability header pointer for Enemy name $0000
org $A0E33B	; 0x10633B
	dw l_F53A	; Originally $F170

; Vulnerability header pointer for Enemy name $0000
org $A0E37B	; 0x10637B
	dw l_F554	; Originally $F186

; Vulnerability header pointer for Enemy name $0000
org $A0E3BB	; 0x1063BB
	dw l_F554	; Originally $F186
	
; Vulnerability header pointer for Enemy name $0000
org $A0E3FB	; 0x1063FB
	dw l_F554	; Originally $F186

; Vulnerability header pointer for Enemy name $0000
org $A0E43B	; 0x10643B
	dw l_F53A	; Originally $F170

; Vulnerability header pointer for Enemy name $0000
org $A0E47B	; 0x10647B
	dw l_F56E	; Originally $F19C

; Vulnerability header pointer for Enemy name $0000
org $A0E4BB	; 0x1064BB
	dw l_F56E	; Originally $F19C

; Frozen AI header pointer for Enemy name $0000
org $A0E4DD	; 0x1064DD
	dw $8041	; Originally $804C
	
; Vulnerability header pointer for Enemy name $0000
org $A0E4FB	; 0x1064FB
	dw l_F1CC	; Originally $F0EC

; Frozen AI header pointer for Enemy name $0000
org $A0E51D	; 0x10651D
	dw $8041	; Originally $804C

; Vulnerability header pointer for Enemy name $0000
org $A0E53B	; 0x10653B
	dw l_F1CC	; Originally $F0EC

; Frozen AI header pointer for Enemy name $0000
org $A0E55D	; 0x10655D
	dw $8041	; Originally $804C

; Vulnerability header pointer for Enemy name $0000
org $A0E57B	; 0x10657B
	dw l_F1CC	; Originally $F0EC

; Frozen AI header pointer for Enemy name $0000
org $A0E59D	; 0x10659D
	dw $8041	; Originally $804C

; Vulnerability header pointer for Enemy name $0000
org $A0E5BB	; 0x1065BB
	dw l_F1CC	; Originally $F0EC

; Vulnerability header pointer for Enemy name $DE23
org $A0E67B	; 0x10667B
	dw l_F07A	; Originally $EFCE

; Vulnerability header pointer for Enemy name $0000
org $A0E6BB	; 0x1066BB
	dw l_F094	; Originally $EFE4
	
; Vulnerability header pointer for Enemy name $DE31
org $A0E6FB	; 0x1066FB
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E2BB
org $A0E73B	; 0x10673B
	dw l_EF28	; Originally $EEB0

; Vulnerability header pointer for Enemy name $DE2F
org $A0E77B	; 0x10677B
	dw l_EF76	; Originally $EEF2
	
; Vulnerability header pointer for Enemy name $DEAF
org $A0E7FB	; 0x1067FB
	dw l_EF0E	; Originally $EE9A

; Vulnerability header pointer for Enemy name $DF03
org $A0E83B	; 0x10683B
	dw l_F0E2	; Originally $F026

; Vulnerability header pointer for Enemy name $DF57
org $A0E87B	; 0x10687B
	dw l_EF28	; Originally $EEB0

; Vulnerability header pointer for Enemy name $DFE3
org $A0E8BB	; 0x1068BB
	dw l_F02C	; Originally $EF8C
	
; Vulnerability header pointer for Enemy name $E045
org $A0E8FB	; 0x1068FB
	dw l_EFC4	; Originally $EF34

; Vulnerability header pointer for Enemy name $E0A7
org $A0E93B	; 0x10693B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E2E5
org $A0E97B	; 0x10697B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $E01B
org $A0E9BB	; 0x1069BB
	dw l_F046	; Originally $EFA2
	
; Vulnerability header pointer for Enemy name $DFD5
org $A0E9FB	; 0x1069FB
	dw l_EE8C	; Originally $EE2C

; Vulnerability header pointer for Enemy name $E133
org $A0EA7B	; 0x106A7B
	dw l_EF42	; Originally $EEC6

; Vulnerability header pointer for Enemy name $DF3B
org $A0EABB	; 0x106ABB
	dw l_EF42	; Originally $EEC6
	
; Vulnerability header pointer for Enemy name $DEA1
org $A0EAFB	; 0x106AFB
	dw l_EDA2	; Originally $ED66

; Vulnerability header pointer for Enemy name $0000
org $A0EB3B	; 0x106B3B
	dw l_EDA2	; Originally $ED66

; Vulnerability header pointer for Enemy name $E2C9
org $A0EB7B	; 0x106B7B
	dw l_EDBC	; Originally $ED7C

; Vulnerability header pointer for Enemy name $0000
org $A0EBBB	; 0x106BBB
	dw l_EDBC	; Originally $ED7C
	
; Vulnerability header pointer for Enemy name $E2D7
org $A0EBFB	; 0x106BFB
	dw l_EDD6	; Originally $ED92

; Vulnerability header pointer for Enemy name $0000
org $A0EC3B	; 0x106C3B
	dw l_EDD6	; Originally $ED92

; Vulnerability header pointer for Enemy name $0000
org $A0EC7B	; 0x106C7B
	dw l_F5A2	; Originally $F1C8

; Vulnerability header pointer for Enemy name $0000
org $A0ECBB	; 0x106CBB
	dw l_F5BC	; Originally $F1DE

; Vulnerability header pointer for Enemy name $0000
org $A0ED7B	; 0x106D7B
	dw l_F4EC	; Originally $F12E

; Vulnerability header pointer for Enemy name $0000
org $A0EDBB	; 0x106DBB
	dw l_F4EC	; Originally $F12E
	
; Vulnerability header pointer for Enemy name $0000
org $A0EDFB	; 0x106DFB
	dw l_F4EC	; Originally $F12E

; Vulnerability header pointer for Enemy name $0000
org $A0EE3B	; 0x106E3B
	dw l_F4EC	; Originally $F12E

; Vulnerability header pointer for Enemy name $000
org $A0EE7B	; 0x106E7B
	dw l_F4EC	; Originally $F12E

; Vulnerability header pointer for Enemy name $0000
org $A0EEBB	; 0x106EBB
	dw l_F4EC	; Originally $F12E
	
; Vulnerability header pointer for Enemy name $0000
org $A0EEFB	; 0x106EFB
	dw l_F4EC	; Originally $F12E

; Vulnerability header pointer for Enemy name $0000
org $A0EF3B	; 0x106F3B
	dw l_F198	; Originally $F0C0

; Vulnerability header pointer for Enemy name $0000
org $A0EF7B	; 0x106F7B
	dw l_F198	; Originally $F0C0

; Vulnerability header pointer for Enemy name $0000
org $A0EFBB	; 0x106FBB
	dw l_F1B2	; Originally $F0D6
	
; Vulnerability header pointer for Enemy name $0000
org $A0EFFB	; 0x106FFB
	dw l_F1B2	; Originally $F0D6

; Vulnerability header pointer for Enemy name $DE07
org $A0F0BB	; 0x1070BB
	dw l_EFAA	; Originally $EF1E
	
; Vulnerability header pointer for Enemy name $0000
org $A0F13B	; 0x10713B
	dw l_EF42	; Originally $EEC6


; Second set of vulnerability pointers


; Vulnerability header pointer for Enemy name $DDDD
org $A0F2CF	; 0x1072CF
	dw l_F4D2	; Originally $F118

; Vulnerability header pointer for Enemy name $DDB3
org $A0F38F	; 0x10738F
	dw l_ECEC	; Originally $ECCC

; Vulnerability header pointer for Enemy name $E1E9
org $A0F3CF	; 0x1073CF
	dw l_ECEC	; Originally $ECCC
	
; Vulnerability header pointer for Enemy name $E1F7
org $A0F40F	; 0x10740F
	dw l_ECD2	; Originally $ECB6

; Vulnerability header pointer for Enemy name $E205
org $A0F44F	; 0x10744F
	dw l_ED88	; Originally $ED50

; Vulnerability header pointer for Enemy name $E213
org $A0F48F	; 0x10748F
	dw l_ED06	; Originally $ECE2

; Vulnerability header pointer for Enemy name $E221
org $A0F4CF	; 0x1074CF
	dw l_EC9E	; Originally $EC8A

; Vulnerability header pointer for Enemy name $DDC1
org $A0F50F	; 0x10750F
	dw l_EC6A	; Originally $EC5E

; Vulnerability header pointer for Enemy name $E22F
org $A0F54F	; 0x10754F
	dw l_EC6A	; Originally $EC5E

; Vulnerability header pointer for Enemy name $E23D
org $A0F58F	; 0x10758F
	dw l_EC6A	; Originally $EC5E

; Vulnerability header pointer for Enemy name $E24B
org $A0F5CF	; 0x1075CF
	dw l_EC84	; Originally $EC74

; Vulnerability header pointer for Enemy name $E259
org $A0F60F	; 0x10760F
	dw l_EC6A	; Originally $EC5E

; Vulnerability header pointer for Enemy name $E267
org $A0F64F	; 0x10764F
	dw l_ECB8	; Originally $ECA0

; Vulnerability header pointer for Enemy name $DDCF
org $A0F68F	; 0x10768F
	dw l_ED20	; Originally $ECF8

; Vulnerability header pointer for Enemy name $E275
org $A0F6CF	; 0x1076CF
	dw l_ED3A	; Originally $ED0E

; Vulnerability header pointer for Enemy name $E283
org $A0F70F	; 0x10770F
	dw l_ED54	; Originally $ED24

; Vulnerability header pointer for Enemy name $E291
org $A0F74F	; 0x10774F
	dw l_ED88	; Originally $ED50

; Vulnerability header pointer for Enemy name $E29F
org $A0F78F	; 0x10778F
	dw l_ED6E	; Originally $ED3A

; Vulnerability header pointer for Enemy name $E2AD
org $A0F7CF	; 0x1077CF
	dw l_EC9E	; Originally $EC8A



;----------------------------------------------------------;
;	Instruction set modifications for Beams 
;----------------------------------------------------------;
lorom
;----------------------------------------------------------;
; Instruction set modifications for Power Beam Down and Down+Left
org $93870D	; 0x09870D
	dw $A231
org $938719	; 0x098719
	dw $A238

; Instruction set modifications for Plasma/Plasma+Ice Down and Up
org $938CF9	; 0x098CF9
	dw $A246
org $938D01	; 0x098D01
	dw $C3E1

; Instruction set modifications for Plasma/Plasma+Ice Down+Left and Up+Right
org $938D0D	; 0x098D0D
	dw $DF5E
org $938D15	; 0x098D15
	dw $CE37

; Instruction set modifications for Plasma/Plasma+Ice Left/Right
org $938D21	; 0x098D21
	dw $A23F
org $938D29	; 0x098D29
	dw $C3F7

; Instruction set modifications for Plasma/Plasma+Ice Down+Right and Up+Left
org $938D35	; 0x098D35
	dw $83EB
org $938D3D	; 0x098D3D
	dw $BE1D

; Instruction set modifications for Plasma+Ice+Wave Up/Down
org $938D49	; 0x098D49
	dw $A246

; Instruction set modifications for Plasma+Wave Up/Down
org $938D51	; 0x098D51
	dw $C3E1
org $938D59	; 0x098D59
	dw $E9E6
org $938D61	; 0x098D61
	dw $EA29
org $938D69	; 0x098D69
	dw $EA6C
org $938D71	; 0x098D71
	dw $EAAF
org $938D79	; 0x098D79
	dw $EA6C
org $938D81	; 0x098D81
	dw $EA29
org $938D89	; 0x098D89
	dw $E9E6

; Instruction set modifications for Plasma+Ice+Wave Down+Left and Up+Right
org $938D95	; 0x098D95
	dw $DF5E

; Instruction set modifications for Plasma+Wave Down+Left and Up+Right
org $938D9D	; 0x098D9D
	dw $CE37
org $938DA5	; 0x098DA5
	dw $DF8D
org $938DAD	; 0x098DAD
	dw $DFEE
org $938DB5	; 0x098DB5
	dw $E04F
org $938DBD	; 0x098DBD
	dw $E0B0
org $938DC5	; 0x098DC5
	dw $E04F
org $938DCD	; 0x098DCD
	dw $DFEE
org $938DD5	; 0x098DD5
	dw $DF8D

; Instruction set modifications for Plasma+Wave/Plasma+Ice+Wave Left/Right
org $938DE1	; 0x098DE1
	dw $A23F
org $938DE9	; 0x098DE9
	dw $C3F7
org $938DF1	; 0x098DF1
	dw $E89A
org $938DF9	; 0x098DF9
	dw $E8DD
org $938E01	; 0x098E01
	dw $E920
org $938E09	; 0x098E09
	dw $E963
org $938E11	; 0x098E11
	dw $E920
org $938E19	; 0x098E19
	dw $E8DD
org $938E21	; 0x098E21
	dw $E89A

; Instruction set modifications for Plasma+Ice+Wave Down+Right and Up+Left
org $938E2D	; 0x098E2D
	dw $83EB

; Instruction set modifications for Plasma+Wave Down+Right and Up+Left
org $938E35	; 0x098E35
	dw $BE1D	; Originally $BE0D
org $938E3D	; 0x098E3D
	dw $E551
org $938E45	; 0x098E45
	dw $E5B2
org $938E4D	; 0x098E4D
	dw $E613
org $938E55	; 0x098E55
	dw $E674
org $938E5D	; 0x098E5D
	dw $E613
org $938E65	; 0x098E65
	dw $E5B2
org $938E6D	; 0x098E6D
	dw $E551

; Instruction set modifications for charged Spazer/Spazer+Ice Down/Up
org $93936D	; 0x09936D
	dw $A246
org $939375	; 0x099375
	dw $EF93
org $93937D	; 0x09937D
	dw $EE40	; Originally $EE95
org $939385	; 0x099385
	dw $EFBC
org $93938D	; 0x09938D
	dw $C3E1
org $93939D	; 0x09939D
	dw $E9EB	; Originally $E9FA

; Instruction set modifications for charged Spazer/Spazer+Ice Down+Left/Up+Right
org $9393C1	; 0x0993C1
	dw $EE4C	; Originally $EEC8
org $9393C9	; 0x0993C9
	dw $EFC8
org $9393D1	; 0x0993D1
	dw $EE58	; Originally $EED4
org $9393D9	; 0x0993D9
	dw $EFD4
org $9393E1	; 0x0993E1
	dw $CE37
org $9393F1	; 0x0993F1
	dw $DF6A	; Originally $DF7E
org $939401	; 0x099401
	dw $E08D	; Originally $E092

; Instruction set modifications for charged Spazer/Spazer+Ice Left+Right
org $939415	; 0x099415
	dw $C140
org $93941D	; 0x09941D
	dw $EF8C
org $939425	; 0x099425
	dw $EF28	; Originally $EF11
org $93942D	; 0x09942D
	dw $83F7
org $939435	; 0x099435
	dw $C3F7
org $939445	; 0x099445
	dw $E89F	; Originally $E8AE
org $939469	; 0x099469
	dw $EF34	; Originally $EF44
org $939471	; 0x099471
	dw $EF9A
org $939479	; 0x099479
	dw $EF40	; Originally $EF50
org $939481	; 0x099481
	dw $EFA6

; Instruction set modifications for charged Spazer+Wave/Spazer+Ice+Wave Up
org $9394BD	; 0x0994BD
	dw $A246
org $9394C5	; 0x0994C5
	dw $EF93
org $9394CD	; 0x0994CD
	dw $EE40	; Originally $EE95
org $9394D5	; 0x0994D5
	dw $EFBC
org $9394DD	; 0x0994DD
	dw $C3E1
org $9394ED	; 0x0994ED
	dw $CE57
org $9394FD	; 0x0994FD
	dw $E9EB	; Originally $E9FA
org $93950D	; 0x09950D
	dw $EA2E	; Originally $EA38
org $93951D	; 0x09951D
	dw $EA71	; Originally $EA76
org $93953D	; 0x09953D
	dw $EA71	; Originally $EA76
org $93954D	; 0x09954D
	dw $EA2E	; Originally $EA38
org $93955D	; 0x09955D
	dw $E9EB	; Originally $E9FA
org $93956D	; 0x09956D
	dw $CE57	; Originally $E9BC

; Instruction set modifications for charged Spazer+Wave/Spazer+Ice+Wave Up+Right
org $939581	; 0x099581
	dw $EE4C	; Originally $EEC8
org $939589	; 0x099589
	dw $EFC8
org $939591	; 0x099591
	dw $EE58	; Originally $EED4
org $939599	; 0x099599
	dw $EFD4
org $9395A1	; 0x0995A1
	dw $CE37
org $9395C1	; 0x0995C1
	dw $DF6A	; Originally $DF7E
org $9395D1	; 0x0995D1
	dw $DFCB	; Originally $DFDA
org $9395E1	; 0x0995E1
	dw $E02C	; Originally $E036
org $9395F1	; 0x0995F1
	dw $E08D	; Originally $E092
org $939601	; 0x099601
	dw $E02C	; Originally $E036
org $939611	; 0x099611
	dw $DFCB	; Originally $DFDA
org $939621	; 0x099621
	dw $DF6A	; Originally $DF7E

; Instruction set modifications for charged Spazer+Wave/Spazer+Ice+Wave Right
org $939645	; 0x099645
	dw $C140
org $93964D	; 0x09964D
	dw $EF8C
org $939655	; 0x099655
	dw $EF28	; Originally $EF11
org $93965D	; 0x09965D
	dw $83F7

; Instruction set modifications for charged Spazer+Wave/Spazer+Ice+Wave Down+Right
org $939709	; 0x099709
	dw $EF34	; Originally $EF44
org $939711	; 0x099711
	dw $EF9A
org $939719	; 0x099719
	dw $EF40	; Originally $EF50
org $939721	; 0x099721
	dw $EFA6

; Instruction set modifications for charged Spazer+Wave/Spazer+Ice+Wave Down
org $9397CD	; 0x0997CD
	dw $C42A
org $9397D5	; 0x0997D5
	dw $EF93
org $9397DD	; 0x0997DD
	dw $EF56	; Originally $EF8D
org $9397E5	; 0x0997E5
	dw $EFBC

; Instruction set modifications for charged Spazer+Wave/Spazer+Ice+Wave Down+Left
org $939891	; 0x099891
	dw $EE4C	; Originally $EEC8
org $939899	; 0x099899
	dw $EFC8
org $9398A1	; 0x0998A1
	dw $EE58	; Originally $F0C4
org $9398A9	; 0x0998A9
	dw $EFD4

; Instruction set modifications for charged Spazer+Wave/Spazer+Ice+Wave Left
org $939955	; 0x099955
	dw $A23F
org $93995D	; 0x09995D
	dw $EF8C
org $939965	; 0x099965
	dw $EE12	; Originally $EE19
org $93996D	; 0x09996D
	dw $83F7
org $939975	; 0x099975
	dw $C3F7
org $939985	; 0x099985
	dw $BE3D
org $939995	; 0x099995
	dw $E89F	; Originally $E8AE
org $9399A5	; 0x0999A5
	dw $E8E2	; Originally $E8EC
org $9399B5	; 0x0999B5
	dw $E925	; Originally $E92A
org $9399D5	; 0x0999D5
	dw $E925	; Originally $E92A
org $9399E5	; 0x0999E5
	dw $E8E2	; Originally $E8EC
org $9399F5	; 0x0999F5
	dw $E89F	; Originally $E8AE
org $939A05	; 0x099A05
	dw $BE3D

; Instruction set modifications for charged Spazer+Wave/Spazer+Ice+Wave Up+Left
org $939A19	; 0x099A19
	dw $EE1E	; Originally $EE4C
org $939A21	; 0x099A21
	dw $EF9A
org $939A29	; 0x099A29
	dw $EE2A	; Originally $
org $939A31	; 0x099A31
	dw $EFA6
org $939A39	; 0x099A39
	dw $BE1D
org $939A59	; 0x099A59
	dw $E52E	; Originally $E542
org $939A69	; 0x099A69
	dw $E58F	; Originally $E59E
org $939A79	; 0x099A79
	dw $E5F0	; Originally $E5FA
org $939A89	; 0x099A89
	dw $E651	; Originally $E656
org $939A99	; 0x099A99
	dw $E5F0	; Originally $E5FA
org $939AA9	; 0x099AA9
	dw $E58F	; Originally $E59E
org $939AB9	; 0x099AB9
	dw $E52E	; Originally $E542


; Instruction set modifications for charged Plasma/Plasma+Ice Down/Up
org $939ADD	; 0x099ADD
	dw $A246
org $939AE5	; 0x099AE5
	dw $EF93
org $939AED	; 0x099AED
	dw $EF06
org $939AF5	; 0x099AF5
	dw $C40D
org $939AFD	; 0x099AFD
	dw $E9A6
org $939B05	; 0x099B05
	dw $E9C6
org $939B0D	; 0x099B0D
	dw $C957
org $939B15	; 0x099B15
	dw $C1B7

; Instruction set modifications for charged Plasma/Plasma+Ice Down+Left/Up+Right
org $939B21	; 0x099B21
	dw $DF5E
org $939B29	; 0x099B29
	dw $C41E
org $939B31	; 0x099B31
	dw $BC9C
org $939B39	; 0x099B39
	dw $BCB2
org $939B41	; 0x099B41
	dw $83C1
org $939B49	; 0x099B49
	dw $C377
org $939B51	; 0x099B51
	dw $CB46
org $939B59	; 0x099B59
	dw $CE95

; Instruction set modifications for charged Plasma/Plasma+Ice Left/Right
org $939B65	; 0x099B65
	dw $A23F
org $939B6D	; 0x099B6D
	dw $EF8C
org $939B75	; 0x099B75
	dw $BC75
org $939B7D	; 0x099B7D
	dw $EF17
org $939B85	; 0x099B85
	dw $E85A
org $939B8D	; 0x099B8D
	dw $E87A
org $939B95	; 0x099B95
	dw $C4A6
org $939B9D	; 0x099B9D
	dw $BCC8

; Instruction set modifications for charged Plasma/Plasma+Ice Down+Right/Up+Left
org $939BA9	; 0x099BA9
	dw $83EB
org $939BB1	; 0x099BB1
	dw $C134
org $939BB9	; 0x099BB9
	dw $BC86
org $939BC1	; 0x099BC1
	dw $C0F4
org $939BC9	; 0x099BC9
	dw $CB1C
org $939BD1	; 0x099BD1
	dw $C10A
org $939BD9	; 0x099BD9
	dw $C666
org $939BE1	; 0x099BE1
	dw $BE7B

; Instruction set modifications for charged Plasma+Wave/Plasma+Ice+Wave Down/Up
org $939BED	; 0x099BED
	dw $A246
org $939BF5	; 0x099BF5
	dw $EF93
org $939BFD	; 0x099BFD
	dw $EF06
org $939C05	; 0x099C05
	dw $C40D
org $939C0D	; 0x099C0D
	dw $E9A6
org $939C15	; 0x099C15
	dw $E9C6
org $939C1D	; 0x099C1D
	dw $C1B7	; Originally $C1AF
org $939C25	; 0x099C25
	dw $C957	; Originally $C94D
org $939C2D	; 0x099C2D
	dw $C1DF	; Originally $C1D4
org $939C35	; 0x099C35
	dw $C984	; Originally $C972
org $939C3D	; 0x099C3D
	dw $C24F	; Originally $C21C
org $939C45	; 0x099C45
	dw $C9F4	; Originally $C9BA
org $939C4D	; 0x099C4D
	dw $C2BF	; Originally $C264
org $939C55	; 0x099C55
	dw $CA64	; Originally $CA02
org $939C5D	; 0x099C5D
	dw $C32F
org $939C65	; 0x099C65
	dw $CAD4	; Originally $CA4A
org $939C6D	; 0x099C6D
	dw $C2BF	; Originally $C264
org $939C75	; 0x099C75
	dw $CA64	; Originally $CA02
org $939C7D	; 0x099C7D
	dw $C24F	; Originally $C21C
org $939C85	; 0x099C85
	dw $C9F4	; Originally $C9BA
org $939C8D	; 0x099C8D
	dw $C1DF	; Originally $C1D4
org $939C95	; 0x099C95
	dw $C984	; Originally $C972

; Instruction set modifications for charged Plasma+Wave/Plasma+Ice+Wave Down+Left/Up+Right
org $939CA1	; 0x099CA1
	dw $DF5E
org $939CA9	; 0x099CA9
	dw $C41E
org $939CB1	; 0x099CA1
	dw $BC9C
org $939CB9	; 0x099CA1
	dw $BCB2
org $939CC1	; 0x099CA1
	dw $83C1
org $939CC9	; 0x099CA1
	dw $C377
org $939CD1	; 0x099CA1
	dw $CE95
org $939CD9	; 0x099CA1
	dw $CB46
org $939CE1	; 0x099CA1
	dw $CED1
org $939CE9	; 0x099CA1
	dw $CB8C
org $939CF1	; 0x099CA1
	dw $CF6E	; Originally $CFDC
org $939CF9	; 0x099CA1
	dw $CC47	; Originally $CCBC
org $939D01	; 0x099D01
	dw $D00B	; Originally $D042
org $939D09	; 0x099D09
	dw $CD02	; Originally $CD36
org $939D19	; 0x099D19
	dw $CDBD	; Originally $CDB0
org $939D21	; 0x099D21
	dw $D00B	; Originally $D042
org $939D29	; 0x099D29
	dw $CD02	; Originally $CD36
org $939D31	; 0x099D31
	dw $CF6E	; Originally $CFDC
org $939D39	; 0x099D39
	dw $CC47	; Originally $CCBC
org $939D41	; 0x099D41
	dw $CED1
org $939D49	; 0x099D49
	dw $CB8C

; Instruction set modifications for charged Plasma+Wave/Plasma+Ice+Wave Left/Right
org $939D55	; 0x099D55
	dw $A23F
org $939D5D	; 0x099D5D
	dw $EF8C
org $939D65	; 0x099D65
	dw $BC75
org $939D6D	; 0x099D6D
	dw $EF17
org $939D75	; 0x099D75
	dw $E85A
org $939D7D	; 0x099D7D
	dw $E87A
org $939D8D	; 0x099D8D
	dw $C4A6
org $939D95	; 0x099D95
	dw $BCF5	; Originally $BCED
org $939D9D	; 0x099D9D
	dw $C4CE
org $939DA5	; 0x099DA5
	dw $C459
org $939DAD	; 0x099DAD
	dw $C53E
org $939DB5	; 0x099DB5
	dw $BD65	; Originally $BD7D
org $939DBD	; 0x099DBD
	dw $C5AE
org $939DC5	; 0x099DC5
	dw $BDD5	; Originally $BDC5
org $939DCD	; 0x099DCD
	dw $C61E
org $939DD5	; 0x099DD5
	dw $BD65	; Originally $BD7D
org $939DDD	; 0x099DDD
	dw $C5AE
org $939DE5	; 0x099DE5
	dw $C459
org $939DED	; 0x099DED
	dw $C53E
org $939DF5	; 0x099DF5
	dw $BCF5	; Originally $BCED
org $939DFD	; 0x099DFD
	dw $C4CE

; Instruction set modifications for charged Plasma+Wave/Plasma+Ice+Wave Down+Right/Up+Left
org $939E09	; 0x099E09
	dw $83EB
org $939E11	; 0x099E11
	dw $C134
org $939E19	; 0x099E19
	dw $BC86
org $939E21	; 0x099E21
	dw $C0F4
org $939E29	; 0x099E29
	dw $CB1C
org $939E31	; 0x099E31
	dw $C10A
org $939E39	; 0x099E39
	dw $BE7B
org $939E41	; 0x099E41
	dw $C666	; Originally $C669
org $939E49	; 0x099E49
	dw $BEB7
org $939E51	; 0x099E51
	dw $C6AC	; Originally $C6A7
org $939E59	; 0x099E59
	dw $BF54	; Originally $BFBF
org $939E61	; 0x099E61
	dw $C767	; Originally $C721
org $939E69	; 0x099E69
	dw $BFF1
org $939E71	; 0x099E71
	dw $C8DD
org $939E79	; 0x099E79
	dw $C08E	; Originally $C08B
org $939E81	; 0x099E81
	dw $C822	; Originally $C815
org $939E89	; 0x099E89
	dw $BFF1
org $939E91	; 0x099E91
	dw $C8DD
org $939E99	; 0x099E99
	dw $BF54	; Originally $BFBF
org $939EA1	; 0x099EA1
	dw $C767	; Originally $C721
org $939EA9	; 0x099EA9
	dw $BEB7
org $939EB1	; 0x099EB1
	dw $C6AC	; Originally $C6A7


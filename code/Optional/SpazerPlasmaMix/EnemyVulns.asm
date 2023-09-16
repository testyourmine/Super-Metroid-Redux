;----------------------------------------------------------;
;		Enemy vulnerabilities
;----------------------------------------------------------;

; Super Desgeega vulnerabilities
org $B4EC32	; 0x1A6C32
; Power, Wave, Ice, Ice+Wave, Spazer, Spazer+Wave
	db $02,$02,$02,$02
l_EC36:
	db $00,$00
; Spazer+Ice, Spazer+Ice+Wave, Plasma, Plasma+Wave, Plasma+Ice, Plasma+Ice+Wave
	db $00,$00,$01,$01,$01,$01

org $B4EC50	; 0x1A6C50
; Required label for Enemy Header pointers
l_EC50:

; Orange/Fire Zoomers, Slow fireball, Snail and Big Eye bugs vulnerabilities
org $B4EC54	; 0x1A6C54
; Missile, Super Missile, Bomb, Power Bomb, Speed Booster
	db $02,$02,$02,$02,$02
; Shinespark, Screw Attack, Charged Beam (+SBA), Pseuda Screw Attack and Unused
	db $02,$02,$02,$02,$02

; Non-gold / Silver ninja Space Pirate
org $B4EC5E	; 0x1A6C5E
; Follows same pattern as Super Deseega's (Beams & Projectiles)
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $04,$04
l_EC6A:
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82

; Gold ninja Space Pirate
org $B4EC74	; 0x1A6C74
; Same pattern for Beams & Projectiles vulns
	db $82,$82,$82,$82,$82
	db $82,$02,$02,$02,$02
	db $80,$00,$02,$02,$00
	db $02
l_EC84:
	db $80,$80,$80,$80,$81
	db $81

; Silver walking / Wall Space Pirates
org $B4EC8A	; 0x1A6C8A
; Same pattern for Beams & Projectiles vulns
	db $81,$81,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $00,$00,$00,$02,$80
	db $00,$02,$04,$00,$00
l_EC9E:

; Silver Ninja Space Pirate
org $B4ECA0	; 0x1A6CA0
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $04,$04

; Red Wall Space Pirate
org $B4ECB6	; 0x1A6CB6
; Same pattern for Beams & Projectiles vulns
	db $00,$02
l_ECB8:
	db $84,$84,$84,$84,$84
	db $84,$84,$84,$84,$84
	db $84,$84,$84,$84,$84
	db $84,$84,$84,$84,$04

; Grey/Green Wall Space Pirate
org $B4ECCC	; 0x1A6CCC
; Same pattern for Beams & Projectiles vulns
	db $84,$84,$84,$84,$84
	db $84
l_ECD2:
	db $00,$02,$04,$04,$02
	db $02,$04,$04,$02,$02
	db $04,$04,$02,$02,$04
	db $04

; Magenta Wall Space Pirate
org $B4ECE2	; 0x1A6CE2
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $02,$04,$04,$02,$02
l_ECEC:
	db $02,$02,$02,$02,$02

; Grey Walking Space Pirate
org $B4ECF8	; 0x1A6CF8
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $04,$04,$00,$02
l_ED06:
	db $02

; Green Walking Space Pirate
org $B4ED0E	; 0x1A6D0E
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$04
	db $04,$00
	skip 1
l_ED20:

; Red Walking Space Pirate
org $B4ED24	; 0x1A6D24
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$04,$04
	db $00,$02

; Magenta Walking Space Pirate
org $B4ED3A	; 0x1A6D3A
; Same pattern for Beams & Projectiles vulns
l_ED3A:
	db $00,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02

; Gold Walking / Wall Space Pirate
org $B4ED50	; 0x1A6D50
; Same pattern for Beams & Projectiles vulns
	db $04,$04,$04,$02
l_ED54:
	db $00,$02,$04,$04,$02
	db $02,$04,$04,$02,$02
	db $04,$04,$02,$02,$04
	db $04,$02,$02
	
; Green Ki-Hunter
org $B4ED66	; 0x1A6D66
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$04
	db $04,$00,$02
l_ED6E:
	db $00,$00,$00,$00,$00
	db $00,$00,$00

; Yellow Ki-Hunter
org $B4ED7C	; 0x1A6D7C
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $00,$02,$02,$00,$00
	db $00,$00
l_ED88:
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00

; Red Ki-Hunter
org $B4ED92	; 0x1A6D92
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00,$00
	db $00,$02,$02,$02,$02
	db $02,$02
l_ED9E:
	db $02,$02,$02,$02
l_EDA2:
	db $01,$01,$01,$01
	db $01,$01

; 
org $B4EDA8	; 0x1A6DA8
; Same pattern for Beams & Projectiles vulns
	db $01,$01,$01,$01,$01
	db $01,$01,$01,$01,$01
	db $02,$02,$02,$02,$02
	db $02,$04,$04,$00,$02
l_EDBC:
	db $02,$02

; 
org $B4EDBE	; 0x1A6DBE
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02

; 
org $B4EDD4	; 0x1A6DD4
; Same pattern for Beams & Projectiles vulns
	db $00,$02
l_EDD6:
	db $00,$00,$81,$81,$81
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $82,$02,$02,$04,$82

; 
org $B4EDEA	; 0x1A6DEA
; Same pattern for Beams & Projectiles vulns
	db $00,$02,$00,$02,$00
	db $00
l_EDF0:
	db $00,$00,$FF,$FF
	db $00,$00,$FF,$FF,$00
	db $00,$FF,$FF,$00,$00
	db $FF,$FF

; 
org $B4EE00	; 0x1A6E00
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00,$02
	db $02,$00,$02,$02,$02
l_EE0A:
	db $00,$00,$FF,$FF,$00
	db $00,$FF,$FF,$00,$00
	db $FF,$FF

; 
org $B4EE16	; 0x1A6E16
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$FF,$FF,$00
	db $00,$02,$00,$02,$02
	db $00,$02,$02,$02
l_EE24:
	db $00,$00,$00,$00,$00
	db $00,$00,$00

; 
org $B4EE2C	; 0x1A6E2C
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$00,$00
	db $02,$00,$00,$00,$00
	db $00,$02,$02
l_EE3E:
	db $00,$00,$FF,$FF

; 
org $B4EE42	; 0x1A6E42
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$FF,$FF,$00
	db $00,$FF,$FF,$00,$00
	db $FF,$FF,$00,$00,$02
	db $00,$00,$02,$00,$02
	db $00

; 
org $B4EE58	; 0x1A6E58
; Same pattern for Beams & Projectiles vulns
l_EE58:
	db $02,$02,$04,$04,$02
	db $02,$04,$04,$02,$02
	db $04,$04,$02,$02,$04
	db $04

; 
org $B4EE6E	; 0x1A6E6E
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02
l_EE72:
	db $00,$00,$FF,$FF,$00
	db $00,$FF,$FF

; 
org $B4EE84	; 0x1A6E84
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $02,$02,$02
l_EE8C:
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02

; 
org $B4EE9A	; 0x1A6E9A
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$04,$04
	db $02,$02
l_EEA6:
	db $02,$02,$04,$04,$02
	db $02,$04,$04,$02,$02

; 
org $B4EEB0	; 0x1A6EB0
; Same pattern for Beams & Projectiles vulns
	db $04,$04,$02,$02,$04
	db $04,$02,$02,$02,$02
	db $02,$02,$02,$02,$00
	db $02
l_EEC0:
	db $02,$02,$04,$04
l_EEC4:
	db $02,$02

; 
org $B4EEC6	; 0x1A6EC6
; Same pattern for Beams & Projectiles vulns
	db $04,$04,$02,$02,$04
	db $04,$02,$02,$04,$04
	db $02,$02,$02,$02,$02
	db $02,$00,$02,$00,$02
l_EEDA:
	db $02,$02

; 
org $B4EEDC	; 0x1A6EDC
; Same pattern for Beams & Projectiles vulns
	db $04,$04,$02,$02,$04
	db $04
l_EEE2:
	db $02,$02,$04,$04,$02
	db $02,$04,$04,$02,$02
	db $02,$02,$02,$02,$02
	db $02

; 
org $B4EEF2	; 0x1A6EF2
; Same pattern for Beams & Projectiles vulns
	db $02,$02
l_EEF4:
	db $00,$00,$00
	db $00,$00,$00,$00,$00
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02
; 
org $B4EF08	; 0x1A6F08
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$00,$02,$00
	db $02
l_EF0E:
	db $00,$00,$FF,$FF,$00
	db $00,$FF,$FF,$00,$00
	db $FF,$FF,$00,$00,$FF
	db $FF

; 
org $B4EF1E	; 0x1A6F1E
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$00,$00,$00
	db $02,$00,$02,$00,$00
l_EF28:
	db $00,$00,$FF,$FF,$00
	db $00,$FF,$FF,$00,$00
	db $FF,$FF

; 
org $B4EF34	; 0x1A6F34
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$FF,$FF,$02
	db $02,$00,$00,$00,$02
	db $00,$02,$00,$02
l_EF42:
	db $00,$00,$00,$00,$00
	db $00,$00,$00

; 
org $B4EF4A	; 0x1A6F4A
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00
l_EF5C:
	db $00,$00,$00,$00

; 
org $B4EF60	; 0x1A6F60
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$02,$02,$00,$02
	db $00,$00

; 
org $B4EF76	; 0x1A6F76
; Same pattern for Beams & Projectiles vulns
l_EF76:
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $FF,$FF,$00,$00,$FF
	db $FF,$00,$00,$02,$00
	db $02,$02

; 
org $B4EF8C	; 0x1A6F8C
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00
l_EF90:
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00

; 
org $B4EFA2	; 0x1A6FA2
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00,$00
	db $00,$00,$82
l_EFAA:
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82

; 
org $B4EFB8	; 0x1A6FB8
; Same pattern for Beams & Projectiles vulns
	db $82,$82,$00,$00,$00
	db $00,$00,$00,$82,$82
	db $82,$00
l_EFC4:
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82

; 
org $B4EFCE	; 0x1A6FCE
; Same pattern for Beams & Projectiles vulns
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$02
	db $82,$82,$82,$82,$82
	db $82
l_EFDE:
	db $00,$00,$00,$00,$00,$00

; 
org $B4EFE4	; 0x1A6FE4
; Same pattern for Beams & Projectiles vulns
	db $80,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$02,$02,$00,$00
	db $02,$02,$02,$00,$02
l_EFF8:
	db $00,$00

; 
org $B4EFFA	; 0x1A6FFA
; Same pattern for Beams & Projectiles vulns
	db $FF,$FF,$00,$00,$FF
	db $FF,$00,$00,$FF,$FF
	db $00,$00,$FF,$FF,$02
	db $02,$02,$00,$02,$02
	db $02,$04

; 
org $B4F010	; 0x1A7010
; Same pattern for Beams & Projectiles vulns
	db $00,$01
l_F012:
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02

;
org $B4F026	; 0x1A7026
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$02,$04
	db $04
l_F02C:
	db $00,$00,$FF,$FF,$00
	db $00,$FF,$FF,$00,$00
	db $FF,$FF,$00,$00,$FF
	db $FF

;
org $B4F03C	; 0x1A703C
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$02,$00,$00
	db $02,$02,$02,$04,$04
l_F046:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$02,$02
	db $82,$82

;
org $B4F052	; 0x1A7052
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$82,$82,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02
l_F060:
	db $02,$02,$02,$02,$02
	db $02,$02,$02

;
org $B4F068	; 0x1A7068
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$82,$82,$02
	db $02,$82,$82,$00,$00
	db $00,$02,$00,$00,$00
	db $00,$00,$00
l_F07A:
	db $02,$02,$FF,$FF

;
org $B4F07E	; 0x1A707E
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$FF,$FF,$02
	db $02,$82,$82,$02,$02
	db $82,$82,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02

;
org $B4F094	; 0x1A7094
; Same pattern for Beams & Projectiles vulns
l_F094:
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00

;
org $B4F0AA	; 0x1A70AA
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00
l_F0AE:
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $82,$82,$82

;
org $B4F0C0	; 0x1A70C0
; Same pattern for Beams & Projectiles vulns
	db $82,$02,$80,$80,$84
	db $84,$82,$82
l_F0C8:
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02,$02
	db $02,$02,$02,$02

;
org $B4F0D6	; 0x1A70D6
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$00,$00,$00
	db $02,$00,$00,$00,$00
	db $00,$00
l_F0E2:
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00

;
org $B4F0EC	; 0x1A70EC
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $02,$00,$00,$00,$00
	db $00,$00

;
org $B4F102	; 0x1A7102
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$02,$00
	db $00,$00,$00,$00,$02
	db $00,$00

;
org $B4F118	; 0x1A7118
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$02,$00,$00
	db $00,$00

;
org $B4F12E	; 0x1A712E
; Same pattern for Beams & Projectiles vulns
	db $00,$04
l_F130:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80

;
org $B4F144	; 0x1A7144
; Same pattern for Beams & Projectiles vulns
	db $80,$80,$82,$82,$80
	db $80
l_F14A:
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00

;
org $B4F15A	; 0x1A715A
; Same pattern for Beams & Projectiles vulns
	db $00,$00,$00,$00,$00
	db $00,$00,$02,$00,$00
l_F164:
	db $80,$82,$82,$82,$80
	db $82,$82,$82,$82,$82
	db $82,$82

;
org $B4F170	; 0x1A7170
; Same pattern for Beams & Projectiles vulns
	db $82,$82,$82,$82,$80
	db $80,$80,$04,$80,$80
	db $82,$82,$80,$80,$82
	db $82,$82,$82,$82,$82
	db $82,$82

;
org $B4F186	; 0x1A7186
; Same pattern for Beams & Projectiles vulns
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $82,$02,$82,$82,$82
	db $82,$82,$82
l_F198:
	db $02,$02,$82,$82

;
org $B4F19C	; 0x1A719C
; Same pattern for Beams & Projectiles vulns
	db $02,$02,$82,$82,$02
	db $02,$82,$82,$02,$02
	db $82,$82,$00,$00,$00
	db $02,$00,$00,$02,$04
	db $00,$00

;
org $B4F1B2	; 0x1A71B2
; Same pattern for Beams & Projectiles vulns
l_F1B2:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$00,$00,$00,$02
	db $02,$00

;
org $B4F1C8	; 0x1A71C8
; Same pattern for Beams & Projectiles vulns
	db $82,$84,$80,$00
l_F1CC:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$00,$00
;
org $B4F1DE	; 0x1A71DE
; Same pattern for Beams & Projectiles vulns
	db $00,$02,$80,$80,$82,$84,$00,$00
	;db "I AM THE RIPPER"	; Text in ASCII


;----------------------------------------------------------;
; Second set of Enemy headers
;----------------------------------------------------------;
; Free/Unused space
org $B4F4B8	; 0x1A74B8
l_F4B8:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$00
	db $80,$80,$80,$80,$80
	db $82
l_F4D2:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$02
	db $80,$80,$82,$82,$80
	db $80
l_F4EC:
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00
l_F506:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$81,$80,$82
	db $82,$80,$82,$82,$80
	db $80
l_F520:
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $82,$80,$80,$80,$02
	db $80,$80,$82,$82,$80
	db $80
l_F53A:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$00
	db $80,$80,$80,$80,$80
	db $80
l_F554:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$00
	db $80,$80,$80,$80,$80
	db $80
l_F56E:
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $82,$82,$82,$82,$82
	db $82,$82,$00,$82,$02
	db $82,$82,$82,$82,$82
	db $82
l_F588:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$82
	db $80,$80,$82,$84,$80
	db $82
l_F5A2:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$02
	db $80,$80,$82,$82,$80
	db $80
l_F5BC:
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$80
	db $80,$80,$80,$80,$00
	db $80,$80,$80,$80,$80
	db $80
l_F5D6:
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00
	db $00



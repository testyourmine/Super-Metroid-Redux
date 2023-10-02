;----------------------------------------------------------;
;		Level Data for Redux
;----------------------------------------------------------;

; Compressed Level data, has to be added as binary files
; (These seem to be mostly rooms featured in the Demos for some reason)
org $C2C2BB	; 0x2142BB
	incbin "Levels/LandingSite.bin"
	incbin "Levels/GauntletEast.bin"
org $C3C145	; 0x21C145
; Crateria -> Red Brinstar elevator
	incbin "Levels/Elevator.bin"
org $C3E0D0	; 0x21E0D0
; Bomb Torizo
	incbin "Levels/BombTorizo.bin"
org $C4D883	; 0x225883
; Wrecked Ship chozo energy tank room
	incbin "Levels/WreckedShipChozoET.bin"
	incbin "Levels/PrePhantoonHall.bin"
org $C4E6A5	; 0x2266A5
; Wrecked Ship first flooded room
	incbin "Levels/WreckedShip1stFlooded.bin"
org $C4F1CE	; 0x2271CE
; Green Brinstar mainstreet
	incbin "Levels/GreenBrinstarMain0.bin"
;----------------------------------------------------------;
org $C58000	; 0x228000
	incbin "Levels/GreenBrinstarMain1.bin"
	incbin "Levels/SporeSpawnShaft.bin"
org $C5A15F	; 0x22A15F
; Brinstar post side-hopper wave-gate energy tank
	incbin "Levels/DachoraRoom.bin"
; Charge beam room
	incbin "Levels/ChargeBeamRoom.bin"
org $C5D559	; 0x22D559
; Brinstar diagonal room
	incbin "Levels/BrinstarDiagonal.bin"
org $C5ECAE	; 0x22ECAE
; Brinstar Mock Ball bridge
	incbin "Levels/BrinstarMockBallRoom.bin"
org $C5F057	; 0x22F057
; Brinstar false floor spike hall
	incbin "Levels/BrinstarFalseFloorSpikes.bin"
org $C5F778	; 0x22F778
; Pink Brinstar flooded hall
	incbin "Levels/PinkBrinstarFlooded.bin"
;----------------------------------------------------------;
org $C6BD83	; 0x233D83
; Kraid BTS madness
	incbin "Levels/KraidRoom.bin"
org $C6CDB9	; 0x234DB9
; Fake Kraid's room
	incbin "Levels/FakeKraidRoom.bin"
org $C6E4A4	; 0x2364A4
; Post ice beam mockball hall
	incbin "Levels/IceBeamMockballHall.bin"
org $C6F2E1	; 0x2372E1
; Norfair mainstreet
	incbin "Levels/NorfairMain.bin"
;----------------------------------------------------------;
org $C7AA70	; 0x23AA70
; Pre hi-jump room
	incbin "Levels/PreHijumpRoom.bin"
org $C7B3E7	; 0x23B3E7
; Post Crocomire shaft
	incbin "Levels/PostCrocomireHall.bin"
;----------------------------------------------------------;
org $C8F40B	; 0x24740B
; Unused room
	incbin "Levels/UnusedRoom.bin"
;----------------------------------------------------------;
org $C984D3	; 0x2484D3
; Lower Norfair wall jumping space pirates shaft
	incbin "Levels/LowerNorfairShaft.bin"
org $C99CE2	; 0x249CE2
; Lower Norfair crumble walls power bomb room
	incbin "Levels/LowerNorfairPBRoom.bin"
;  Lower Norfair kihunter shaft
	incbin "Levels/LowerNorfairKihunterShaft.bin"
org $C9E809	; 0x24E809
; Maridia tube east
	incbin "Levels/MaridiaTubeEast.bin"
;----------------------------------------------------------;
org $CAE458	; 0x256458
; Maridia pink room
	incbin "Levels/MaridiaPinkRoom.bin"
org $CBDCF3	; 0x25DCF3
; Sandy Maridia drowning sand pit room
	incbin "Levels/MaridiaSandPitRoom.bin"
; Sand falls west
	incbin "Levels/MaridiaSandFallsWest.bin"
;----------------------------------------------------------;
org $CCAC48	; 0x262C48
; Pre Shaktool shaft
	incbin "Levels/PreShaktoolShaft.bin"
;----------------------------------------------------------;
org $CD991E	; 0x26991E
; Space jump room
	incbin "Levels/SpaceJumpRoom.bin"
org $CDC43F	; 0x26C43F
; Ceres Ridley
	incbin "Levels/CeresRidley.bin"
org $CDD02D	; 0x26D02D
; Metroid room 3
	incbin "Levels/MetroidRoom3.bin"
; Metroid room 4
	incbin "Levels/MetroidRoom4.bin"
; Tourian super-sidehopper room
	incbin "Levels/TourianSideHopperRoom.bin"
; Drained Torizo room
	incbin "Levels/DrainedTorizoRoom.bin"
; Super Metroid room
	incbin "Levels/SuperMetroidRoom.bin"
org $CDED7A	; 0x26ED7A
; Escape room 3
	incbin "Levels/EscapeRoom3.bin"
;----------------------------------------------------------;
org $CE83C3	; 0x2703C3
; Map station - right side door
	incbin "Levels/MapStationRightSideDoor.bin"
org $CE92CB	; 0x2712CB
; Save station - right side door
	incbin "Levels/SaveStationRightSideDoor.bin"
; Save station - left side door
	incbin "Levels/SaveStationLeftSideDoor.bin"
;----------------------------------------------------------;



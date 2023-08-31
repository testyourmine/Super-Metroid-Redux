lorom

;Original code from DarkShock
;Disassembled by testyourmine

{
!musicEntry = $063D
!dataIndex = $07F3
!currentTrack = $064C
!status = $2000
!identification = $2002
!volume = $2006
!audioState = $2007
!msuTrackLo = $2004
!msuTrackHi = $2005
!APUIO0 = $2140

!NoSong = $00
!SamusFanfare = $01
!ItemFanfare = $02
!ItemRoom = $03
!Intro = $04
!MainTheme = $05
!EmptyCrateriaThunder = $06
!EmptyCrateriaNoThunder = $07
!LowerCrateria = $08
!TourianEntrance = $09
!UpperCrateria = $0A
!GreenBrinstar = $0B
!RedBrinstar = $0C
!UpperNorfair = $0D
!LowerNorfair = $0E
!SandyMaridia = $0F
!RockyMaridia = $10
!Tourian = $11
!MotherBrain = $12
!BossFight1 = $13
!Escape = $14
!PreTorizo = $15
!BossFight2 = $16
!PreFight = $17
!Miniboss = $18
!Ceres = $19
!WreckedShipOn = $1A
!WreckedShipOff = $1B
!Credits = $1C
!LastMetroid = $1D
!GalaxyPeace = $1E


org $808F27
	JSR.W MSU1

org $80CD90
MSU1:
	PHP : REP #$30 : PHA : PHX : PHY : PHB
	SEP #$30 : LDA.B #$80 : PHA : PLB	;Set DB to $80 and save music track index
	LDA.W !identification : CMP.B #$53 : BNE .restore_track		;If the character 'S' is not read, restore the track and exit
	LDA.W !musicEntry : AND.B #$7F : BEQ .spc_fallback			;If the entry is no music, fall back to SPC audio
						CMP.B #$04 : BEQ .restore_track			;If the entry is the pre-statue hall music, restore the track and exit
						CMP.W !currentTrack : BEQ .no_change	;If the entry is the same as the current music, change nothing and exit
						CMP.B #$05 : BMI .store_track			;If the entry is one of the first five music tracks, store the track
	SEC : SBC.B #$05 : TAY	;Put the song number in Y
	LDA.W !dataIndex : LDX.B #$00 : SEC	;Put the music data index in A and put the track index in X

.loop:
	SBC.B #$03 : BCC .load_track	;If at music entry, load track
	INX : BNE .loop					;Otherwise, increment X counter and continue loop

.load_track: 
	TXA : ASL A : TAX								;Put the entry index in X
	REP #$20 : LDA.L .entry_ptr,X : STA.B $00		;Store the audio track pointer
	SEP #$20 : LDA.B ($00),Y : BEQ .restore_track	;Load the audio track and if it's 0, restore the track and exit 

.store_track: 
	TAY : STA.W !msuTrackLo : STZ.W !msuTrackHi		;Store the track into MSU1 and change the track

.wait_busy: 
	LDA.W !status : AND.B #$40 : BNE .wait_busy		;Wait while the MSU1 is busy
	LDA.W !status : AND.B #$08 : BNE .spc_fallback	;If the track is missing, fall back to SPC audio
	JSR.W .check_repeat : STA.W !audioState			;Set MSU1 to play, and set MSU1 to repeat if the track repeats
	LDA.B #$FF : STA.W !volume : STZ.W !APUIO0		;Set MSU1 volume to max and clear the APU I/O Register 0

.no_change: 
	REP #$30 : PLB : PLY : PLX : PLA : PLP : RTS	;Don't change the APU IO 0 and exit

.spc_fallback: 
	LDA.W #$8D00 : ORA.B [$20] : STA.W !volume		;Use SPC audio

.restore_track: 
	REP #$30 : PLB : PLY : PLX : PLA : PLP	;Restore music track index
	STA.W !APUIO0 : RTS						;and store it in APU IO 0


.entry_ptr:
	dw .SPC_Engine, 	.Title_Sequence, .Empty_Crateria,	.Lower_Crateria,	.Upper_Crateria
	dw .Green_Brinstar,	.Red_Brinstar,	 .Upper_Norfair,	.Lower_Norfair,		.Maridia
	dw .Tourian, 		.Mother_Brain, 	 .Boss_Fight_1,		.Boss_Fight_2,		.Miniboss
	dw .Ceres, 			.Wrecked_Ship, 	 .Zebes_Boom,		.Intro,				.Death
	dw .Credits, 		.Last_Metroid, 	 .Galaxy_Peace,		.Baby_Metroid,		.Samus_Theme

	.SPC_Engine: 		db !Intro,!MainTheme

	.Title_Sequence:	db !Intro,!MainTheme

	.Empty_Crateria: 	db !EmptyCrateriaThunder,!NoSong,!EmptyCrateriaNoThunder

	.Lower_Crateria: 	db !LowerCrateria,!TourianEntrance

	.Upper_Crateria: 	db !UpperCrateria

	.Green_Brinstar: 	db !GreenBrinstar

	.Red_Brinstar: 		db !RedBrinstar

	.Upper_Norfair: 	db !UpperNorfair

	.Lower_Norfair: 	db !LowerNorfair

	.Maridia: 			db !SandyMaridia,!RockyMaridia

	.Tourian: 			db !Tourian,!NoSong 

	.Mother_Brain: 		db !MotherBrain

	.Boss_Fight_1: 		db !BossFight1,!PreTorizo,!Escape

	.Boss_Fight_2: 		db !BossFight2,!PreFight

	.Miniboss: 			db !Miniboss

	.Ceres: 			db !NoSong,!Ceres,!NoSong

	.Wrecked_Ship: 		db !WreckedShipOn,!WreckedShipOff

	.Zebes_Boom: 		db !NoSong,!NoSong,!NoSong

	.Intro: 			db !Credits

	.Death: 			db !LastMetroid

	.Credits: 			db !GalaxyPeace

	.Last_Metroid: 		db !NoSong

	.Galaxy_Peace: 		db !NoSong

	.Baby_Metroid: 		db !BossFight2,!PreFight

	.Samus_Theme: 		db !UpperCrateria


.check_repeat: 
	CPY.B #!SamusFanfare : BEQ .no_repeat	;Don't repeat the song if the entry is Samus fanfare
	CPY.B #!ItemFanfare  : BEQ .no_repeat	;or if it's Item fanfare
	CPY.B #!LastMetroid  : BEQ .no_repeat	;or if it's Last Metroid voiceover
	CPY.B #!GalaxyPeace  : BEQ .no_repeat	;or if it's Galaxy Peace voiceover
	LDA.B #$03 : RTS			;Otherwise, set MSU1 to repeat

.no_repeat: 
	LDA.B #$01 : RTS			;Set MSU1 to not repeat
}
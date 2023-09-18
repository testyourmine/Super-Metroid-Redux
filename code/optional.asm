;----------------------------------------------------------;
; 			Optional patches
; Uncomment the desired ones to include into Super Metroid Redux
;----------------------------------------------------------;
lorom

;----------------------------------------------------------;

; Restore the original timings for starting up the Speed Booster
;incsrc "Optional/ClassicBoost.asm"

; Implemented slightly redesigned suits for Samus
if !redesigned
	incsrc "Optional/RedesignedSamus.asm"
endif

; Dual Suit for Samus, meaning proper Power Suit sprites different from Varia Suit's when seen from the sides (not front)
if !dualsuit && !redesigned
; If both Redesigned and Dual Suit are enabled, use this to compile
	incsrc "Optional/DualSuit/DualSuitRedesigned.asm"
elseif !dualsuit == 1
; If only Redesigned is enabled, then use this for compilation
	incsrc "Optional/DualSuit/DualSuit.asm"
endif

; Censor the Death animation for Samus
;incsrc "Optional/DeathCensor.asm"

; Enable the doors back to Crateria once the Tourian event has occurred
; NOTE: This patch here is only for reference and archival purposes, it is already included in Super Metroid Redux by default
;incsrc "Optional/FixedTourianUnlockedDoors.asm"

; Implement custom heavy physics to Super Metroid to be closer to Zero Mission
if !heavy == 1
	incsrc "Optional/HeavyPhysicsRedux.asm"
endif

; Restore the original Elevator speeds from vanilla Super Metroid
;incsrc "Optional/OriginalElevatorSpeed.asm"

; Restore the original Demo sequences from vanilla Super Metroid
if !heavy && !demos
; If Heavy Physics & Original Demos are enabled, use this to compile
	incsrc "Optional/OriginalDemos/DemosHeavy.asm"
elseif !demos == 1
; If only Original Demos are enabled, then use this for compilation
	incsrc "Optional/OriginalDemos/DemosRedux.asm"
endif

; All Save Stations in the game will refill both energy and weaponry
;incsrc "Optional/SaveStationsRefill.asm"

; Skip Ceres and start the game right at Landing Site in Zebes
;incsrc "Optional/SkipCeres.asm"

; Be able to combine both Spazer & Plasma Beams
; NOTE: There are some graphical issues when using this patch.
if !splazma == 1 
	incsrc "Optional/SpazerPlasmaMix.asm"
endif

; Restore the original cooldown timings for shooting the Power Beam from vanilla Super Metroid
;incsrc "Optional/VanillaBeamCooldown.asm"


;----------------------------------------------------------;

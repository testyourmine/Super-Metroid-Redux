lorom

;note: many of these bugfixes have already been included in other patches.
;these are organized from low address to high address.

;todo: 1) continue searching through metconst discord for relevant mentions of the word "bug",
;12-22-21 to 5-3-22 have all been searched so far
;2) look through all vanilla bugfix patches on both new and old site and forums and add to this
;3) look through metconst discord for other things like "error" and add to this
;4) go through bank logs, look for any other mentions of bugs/errors
;also add a separate section for bugs with known fixes for which the fix would not be an objective improvement
;5) also add maybe small improvements like reserves coming full

;===========================================RAM DEFINES==========================================
{
!equippedItems = $09A2
!samusContactDamageIndex = $0A6E
!chargeCounter = $0CD0
!plmIds = $1C37
}
;================================================================================================
;Routine: $82B4B7 (equipment screen - move cursor lower on suits/misc)
;Bug: Cannot access screw attack in the menu without spring ball or boots due to an incorrect comparison value
;Fix by PJBoy on the bank logs directly:
{
;  Cause: CPX #$000A should be CPX #$000C.
org $82B4C4 : CPX #$000C
}
;================================================================================================
;Routine: $82DB68 (handle Samus running out of health and increment game time)
;Bug: Crashes the game if pausing during reserves
;Fix by Benox50 from https://metroidconstruction.com/resource.php?resource_id=418
{
;  Check game state first in this routine.
org $82DB73;occurs when samus runs out of hp
;Check GameState, Crash safe 
    LDA $0998
    CMP #$0008 : BEQ +
;Getout 
    PLP : RTS
+
;Multi Checks if we do auto reserve or kill
    LDA $09C0
    BIT #$0001 : BEQ SamusNoHpContinueA ;if reserve auto
    LDA $09D6 : BEQ SamusNoHpContinueA ;if reserve 0 

;Trigger Auto Reserves
    LDA #$8000 : STA $0A78
    LDA #$001B : STA $0998
    JSL $90F084    
    BRA SamusNoHpContinueB

;Resume vanilla routine
org $82DB9F
SamusNoHpContinueA: ;Kill Samus (Game state = 13h)

org $82DBB2
SamusNoHpContinueB: ;TICK_GAME_TIME
}
;================================================================================================
;Routine: Load x-ray blocks
;Bug: Game crashes when there is a respawning PLM in the orom
;Fix by amoeba from metconst discord:
{
org $848331 : BMI $0F
    ;Don't crash the game when using X-Ray on a respawning PLM. (Originally $2C, $2B is what was intended - use $2B to make respawning PLMs not show under X-Ray so they are easier to find.)
    ; A better solution is $0F by amoeba which fixes the bug and makes them show under Xray as well
}
;================================================================================================
;Routine: Bomb Block collision reaction PLM setup
;Bug: doesn't break if samus is screw attacking in wall jump pose
;Fix by PJBoy from https://metroidconstruction.com/resource.php?id=530
{
org $84CE83
Setup_BombBlockCollision:
	; If contact damage is not speed boosting / shinesparking / screw attack, delete PLM
	LDA !samusContactDamageIndex : DEC : CMP #$0003 : BCC .breakBlock
	TYX : STZ !plmIds,x
	SEC : RTS
warnpc $84CEC1
	
org $84CEC1
.breakBlock
}
;================================================================================================
;Routine: $86B6B9 (eye door projectile pre-instruction)
;Bug: Crash after 100h+ frames if you kill eye door on same frame eye door projectile spawns
;Fix by PJBoy from https://metroidconstruction.com/resource.php?id=492
{
;  BUG: the $B707 branch assumes the enemy projectile index is in X, but this is only true if the branch on $B6BC/C1 is taken,
;  otherwise the enemy projectile index is in Y, and the door bit array index is in X,
;  causing misaligned writes to enemy projectile RAM if X is odd, eventually causing a crash when the garbage instruction pointer gets executed
;  (which happens after a delay of 100h+ frames due to the misaligned write to the instruction time

;  The fix here is setting the X register to the enemy projectile index,
;  which can be done without free space due to an unnecessary RTS in the original code
org $86B704
	BEQ eyedoorcrashfixret
	TYX

org $86B713
eyedoorcrashfixret:
}
;================================================================================================
;Routine: $90852C (handle speed booster animation delay)
;Bug at 859D: Overwrites reg A for SFX call but code afterwards expects the old A value.
;Fix by Nodever2: save 2 bytes with TDC trickery and then PHA : PLA
{
;  This bug can cause the game to take away blue suit depending on what the sound effect call returns
;  (spefifically, if the sound effect queue is full)
org $90859D
    PHA;1 byte used
    TDC : INC;1 byte saved
    STA $0B40
    INC : INC;1 byte saved
    JSL $80914D
    PLA;1 byte used
}
;================================================================================================
;Routine: $9098BC (make Samus jump)
;Bug at $9927: bad Y velocity with speed booster
;Fix by Nodever2 from https://metroidconstruction.com/resource.php?id=494
{
;  this is somewhat difficult to explain and I've already covered it before but basically
;  the game improperly handles the addition to samus' Y velocity when she has speed booster.
;  this is most noticeable when jumping with speed booster without high jump.

;  This fix was also included in my patch Speed Booster Vertical Jump Speed Fix,
;  found here (with a more in-depth explanation of the bug):
org $909927
	LDA $0B44		;\
	ROR				;| use carry from previous LSR
	CLC				;|
	ADC $0B2C		;) Samus Y subspeed += [Samus X subspeed]/2
	STA $0B2C		;/
	LDA $0B2E		;
}	
;================================================================================================
;Routine: $90A734 (samus movement - wall jumping)
;Bug: screw attack contact damage not set in this pose when screw attacking, allowing samus to get hit
;Fix by PJBoy from https://metroidconstruction.com/resource.php?id=530
{
org $90A734
SamusMovementWallJumping:
; If screw attack equipped, set screw attack contact damage
	LDA !equippedItems : BIT #$0008 : BEQ .notScrewAttack
	LDA #$0003 : STA !samusContactDamageIndex
	BRA .contactDamageSet

.notScrewAttack
	LDA !chargeCounter : CMP #$003C : BMI .contactDamageSet
	LDA #$0004 : STA !samusContactDamageIndex

.contactDamageSet
	JMP $8FB3 ; Samus jumping movement

warnpc $90A75F
}
;================================================================================================
;Routine: $91D9B2 (load blue suit palette)
;Bug: Samus' suit flashes glitchy colors if transitioning to blue suit palette from screw attack palette.
;Fix by Nodever2: Move check for out of bounds to before using the value
{
;  Cause: LDA $0ACE at $91DA89 doesn't check if index is out of bounds first.
;  This routine normally checks if it's out of bounds after running and corrects it for the next iteration,
;  but since screw attack tables also use $0ACE as an index and those have longer tables,
;  going from screw to speed can cause $0ACE to be too high and cause this index out of bounds issue.
org $91DA89
    LDA $0ACE
    CMP #$0006 : BMI + : LDA #$0006 ;) Add 9 bytes
+   TAY : CLC : ADC $24             ;/ (the TAY here is new)
    TAX : LDA $0000,x
    TAX : JSR $DD5B
    INY : INY : STY $0ACE : NOP : NOP;save 9 bytes
}    
;================================================================================================
;Routine: Enemy / Samus collision handlers
;"Bug": Samus loses invincibility frames when hitting an enemy with screw attack
;Solution by PJBoy from discord:
{
org $A0A096 : db $EA, $EA, $EA  ;) these tweaks make it so i-frames don't get reset when screw attack starts. (normally wouldn't be a problem but with respin it can be)
org $A09A90 : db $EA, $EA, $EA  ;/
}
;================================================================================================
;Routine: Various WS ghost routines
;Bug: Uses indexing when reading Samus' position????
;Fix by PJ from metconst discord:
{
org $A89C13 : LDA $0AFA
org $A89D45 : LDA $0AFA
org $A89DC3 : LDA $0AF6
org $A89DCD : LDA $0AFA
}
;================================================================================================
;Routine: $B4BD97: Clear sprite objects
;Bug: Doesn't clear $7E:EF78 due to incorrect branch
;Fix by PJ from metconst discord:
{
org $B4BDA3
    BPL $F8
}
;================================================================================================





;Routine: RNG routine
;Bug: Bad
;Fix/Rewrite: steal from arcade, he posted it in metconst at one point so it's ok
;total — 01/13/2022
;This is the one used in SM Arcade: https://paste.ofcode.org/KFwPUSLiwRqFiPAU8YqEzG
;There's two versions with different periods, one with 32-bit and one with 16-bit period 
;Based on xorshift
;InsaneFirebat — 01/13/2022
;sweet, thanks
;Benox50 — 01/13/2022
;Running GDQ 👀 
;Wonder if he have a weight on GDQ accepting SM hacks 😩
;P.JBoy — 01/13/2022
;+1 on xorshift
;but I do think the SM RNG is good enough
;especially if its bug is fixed
;unless someone's doing monte carlo >_>
;Benox50 — 01/13/2022
;I like how this rng is smaller than vanilla too... rip
;P.JBoy — 01/13/2022
;the use of $16 makes me uncomfortable
;somerando(caauyjdp) — 01/13/2022
;/smram 16
;hilarious-man
;BOT
; — 01/13/2022
;$16: Common type or index value
;P.JBoy — 01/13/2022
;the DP misc. values are all very awkward
;it's real hard to say whether they need to be preserved or not
;ah but see
;this loop would break if $16 were clobbered http://patrickjohnston.org/bank/A9?just=B03E#B05B
;PJ's bank logs
;Bank $A9
;$B03E: Generate explosions around Mother Brain's body
;Image
;should break pretty badly actually
;I assume it's not used as a replacement RNG for Arcade then
;Benox50 — 01/13/2022
;just push pull $16
;man I would love to have an OP code to just PEA $16 directly
;P.JBoy — 01/13/2022
;there's PEI ($16)
;but no way to pull directly into $16 again
;Benox50 — 01/13/2022
;thats what I was gonna ask next :p
;it also always pushes a 16-bit value, regardless of PSR.m

;================================================================================================



;     =====================================================================================================
;     =============================== KNOWN BUGS WITHOUT FIXES: ===========================================
;     =====================================================================================================

;Todo, investigate consequences of these fixes, as some of these might actually be bugs that players
;like/enjoy exploiting. Like does the below one fix kraid quick kill for ex?

;================================================================================================

;;; $DF34: Enemy shot - enemy $F07F (Shaktool) ;;;
{
; Bug: when an enemy dies and goes through its death animation, its enemy RAM is cleared,
; so the LDY always loads 0, meaning the other pieces aren't aren't set to delete

;================================================================================================

;$A7:B6E1 A9 00 01    LDA #$0100             ;\
;$A7:B6E4 AD AC 0F    LDA $0FAC  [$7E:0FAC]  ;} Typo (should be `Kraid instruction timer = 100h`)

;================================================================================================

;$80:87D3 A9 48       LDA #$48               ; >_<
;$80:87D5 9C 0A 21    STZ $210A  [$7E:210A]

;================================================================================================

;$A7:C55A AC 54 0E    LDY $0E54  [$7E:0E54]  ;\
;$A7:C55D BE 78 0F    LDX $0F78,y[$7E:0F78]  ;|
;$A7:C560 A9 4C 80    LDA #$804C             ;} Uhhh >_<; (enemy shot "=" RTL)
;$A7:C563 9F 32 00 A0 STA $A00032,x[$A0:E2F1];/

;================================================================================================

;$A9:95AE A9 16 00    LDA #$0016             ;\
;$A9:95B1 8F 4D 91 80 STA $80914D[$80:914D]  ;} Typo. Should be JSL for queue sound 16h, sound library 3, max queued sounds allowed = 6

;================================================================================================

;$A6:9B14 22 70 AD A0 JSL $A0AD70[$A0:AD70]
;$A6:9B18 2F FF FF 00 AND $00FFFF[$00:FFFF]
;$A6:9B1C D0 07       BNE $07    [$9B25]

;================================================================================================


;================================================================================================



;     =====================================================================================================
;     =============================== CODE THAT CAN BE OPTIMIZED: =========================================
;     =====================================================================================================
















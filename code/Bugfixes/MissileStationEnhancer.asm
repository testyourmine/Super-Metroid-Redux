lorom

; Missile Station Enhancer by MoogleEmperor
; use with xkas v.06
; This alters missile stations to make them more useful. By default it makes them refill your Super Missiles and 
; Power Bombs as well as your missiles, and uncommenting certain lines will also allow them to restore your energy and/or ; reserve energy as well. Also removes the requirement that your missiles not be maxed in order to use the station.
; This should work on any hack (unless they've changed the RAM addresses of Samus' supplies, or reprogrammed missile ; stations), and you're free to incorporate it into your hack if you want.
; Major thanks to Kejardon. This would've been much harder (if not impossible, for me) without his notes on RAM addresses 
; and the text format.
; Thanks to Sadiztik Fish and squichy_ichigo for pointing out a problem in a previous version.

!maxmissiles = $09C8
!missiles = $09C6
!maxsupers = $09CC
!supers =  $09CA
!maxpbs = $09D0
!pbs = $09CE
!maxenergy = $09C4 
!energy = $09C2
!maxreserve = $09D4
!reserve = $09D6

org $848CD2
; Hijack point. NOPs are to fill in uneeded bytes
JSR REFILL
NOP
NOP
NOP
NOP
NOP

org $84B2EE
; First change to disable check if missiles are maxed.
NOP
NOP

org $84B321
; Second change to disable check if missiles are maxed.
NOP
NOP

org $84AEC5
; Third change to disable check if missiles are maxed.
NOP
NOP

; Point this to freespace in bank 84. Already points at freespace in an unaltered ROM, but repointing may be needed
; in hacks that have added code to bank 84.
org $84FFD0

REFILL:
LDA !maxmissiles
STA !missiles
LDA !maxsupers
STA !supers
LDA !maxpbs
STA !pbs
; Uncomment (remove the ';') the following two lines to make missile stations restore energy.
; LDA !maxenergy
; STA !energy
; Uncomment the following two lines to make missile stations fill reserve tanks.
; LDA !maxreserve
; STA !reserve
RTS

org $85930C
; This section changes the message that pops up when using the station to actually make sense. 
; I recommend "Ammo Reload" if you don't have them refill energy and "Supply Reload" if you do, 
; but do as you like.

; Uncomment the message you want, or comment both if you want to change the message on your own.

; Changes missile station text to read "Ammo Reload"
DD $4E3C4E3C,$EC3CE03C,$EE3CEC3C,$F13C4E3C,$EB3CE43C,$E03CEE3C,$4E3CE33C,$4E3C4E3C

; Changes missile station text to read "Supply Reload"
; DD $F23C4E3C,$EF3CF43C,$EB3CEF3C,$4E3CF83C,$E43CF13C,$EE3CEB3C,$E33CE03C,$4E3C4E3C
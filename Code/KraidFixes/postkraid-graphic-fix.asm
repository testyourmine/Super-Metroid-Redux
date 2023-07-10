;-------------------------------------
;	Kraid Graphical Glitches Fix
;		by PJBoy
;-------------------------------------

; During horizontal door transitions, the "ready for NMI" flag is set by IRQ at the bottom of the door as an optimisation,
; but the PLM drawing routine hasn't necessarily finished processing yet.
; The Kraid quick kill vomit happens because NMI actually interrupts the PLM drawing routine for the PLM that clears the spike floor,
; *whilst* it's in the middle of writing entries to the $D0 table, which the NMI processes.

lorom
; This fix simply clears this NMI-ready flag for the duration of the PLM drawing routine.
org $84F100 ; Free space - $84F100
drawPlmSafe:
{
	lda.w $05B4 : pha ; Back up NMI ready flag
	stz.w $05B4 ; Not ready for NMI
	jsr $8DAA   ; Draw PLM
	pla : sta.w $05B4 ; Restore NMI ready flag
	rts
}

; Patch calls to draw PLM
org $84861A ; End of PLM processing. Probably the only particularly important one to patch
	jsr drawPlmSafe

; org $848B50 ; End of block respawn instruction. Shouldn't need patching
; jsr drawPlmSafe

org $84E094 ; End of animated PLM drawing instruction. Could theoretically happen...
	jsr drawPlmSafe

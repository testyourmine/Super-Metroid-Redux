lorom

; -------------------------------------------------------------------
; Part 1: save when the player said YES

; hijack point: replace JSR $81F3 inside the main message box code.
; It turns out this bug happens because the code specially handles the ship's
; message and DOES NOT RETURN (for the ship to do the actual save) until "Save
; Completed" has been dismissed.  So, we fix the special case...
org $8580D3
	JSR do_ship_save

; put this anywhere in free space in bank $85 (>= 9643)
; it's 21 ($15) bytes long
; I don't know how much stack there REALLY is at this second,
; nor how much $81:8000 uses, but there are at least 8 bytes free.
org $85FFD0
do_ship_save:
	; copied from the ship-save code in bank $A2...
	LDA $7ED8F8 ; load "used saves" for the region
	ORA #$0001  ; set this save used*
	STA $7ED8F8 ; store back to RAM
	STZ $078B   ; set which save station to load from
	JSL $818000 ; write to SRAM
	JMP $81F3   ; JMP to the address we interrupted
  ; their RTS will resume from the hijack point above

; -------------------------------------------------------------------
; Part 2: do not bother saving after "SAVE COMPLETED" message

; this is where the result of the prompt is compared
org $A2AB26
	JMP $AB40   ; pretend save was canceled, skip already-done save logic

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Kraid Pausing Fix
;;;	by Benox50
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

lorom

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Handle Kraid pausing ;;; Kraid does stuff and move load the standard BG3 tiles, DC map patch does stuff to
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pause hook - Kraid ;;;
org $A7C325
    PHP
    LDX $0360
    ;LDA $5D 
    ;AND #$00FC : XBA : CLC : ADC #$3E00
    LDA #$3E00 : STA $0340,x
    LDA #$0081 : STA $0342,x
    LDA #$0039 : STA $0343,x
    LDA #$5000 : STA $0344,x
    LDA #$007E : STA $0346,x
    LDA #$0400 : STA $0347,x
    TXA : CLC : ADC #$0009 : STA $0360
    SEP #$30
    JSL PauseVRAM_A3	;VRAM transfert standard BG3 tiles
    PLP : RTL

;VRAM load A
org $828E75
PauseVRAM_A1:
    PHP
;Pause menu BGs
    TDC : STA $2116
    SEP #$30
    LDA #$80 : STA $2115
    JSL $8091A9 : db $01,$01,$18 : dl $B68000 : dw $4000
;Pause menu sprites?
    LDA #$02 : STA $420B
    TDC : STA $2116
    LDA #$20 : STA $2117
    LDA #$80 : STA $2115
    JSL $8091A9 : db $01,$01,$18 : dl $B6C000 : dw $2000
    LDA #$02 : STA $420B
    PLP : RTL
;BG3 standard tiles
PauseVRAM_A3:
    TDC : STA $2116
    LDA #$40 : STA $2117
    LDA #$80 : STA $2115
    JSL $8091A9 : db $01,$01,$18 : dl $9AB200 : dw $1000
    LDA #$02 : STA $420B
    RTL

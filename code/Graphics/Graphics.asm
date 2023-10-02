;----------------------------------------------------------;
;		Graphics Data for Redux
;----------------------------------------------------------;

;----------------------------------------------------------;
;		Title screen sprites

; The following graphics are all compressed within the ROM and decompressed during gameplay
; For that reason, the compressed graphics will be included instead, since handling the decompressed graphics with Asar would mean relying on outside sources, like Python for other decomps

; Decompressed to $7F:5000..8FFF around $8B:92A4/9BD9, then transferred to VRAM $6000..7FFF (sprite tiles)
org $9580D8	; 0x0A80D8 - A817A
	incbin "CompressedTitle.gfx"

;----------------------------------------------------------;
; 			Tilemaps

; Some tilemaps in bank $97,$9A are already included through Control Freak, Hard Mode or DC Map Patch hacks

;----------------------------------------------------------;
; 		Uncompressed tiles and sprites

org $B68000	; 0x1B0000
; Pause Screen BG 1/2 tiles
	incbin "PauseTiles.gfx"
; Menu & Pause Screen sprites
	incbin "PauseMenuSprites.gfx"
; Pause Screen BG2 / Room Select Map BG2
	incbin "RoomSelect.gfx"
; Equipment Screen
	incbin "EquipmentScreen.gfx"
; Pause Screen
	incbin "PauseScreen.gfx"

warnpc $B6F260	; 0x1B7260

;----------------------------------------------------------;

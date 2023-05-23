.include "nes.inc"  ; Include NES-specific macros and constants

.segment "HEADER"

    ; iNES Header
    .db "NES"           ; Constant "NES" identifier
    .db $1A              ; Constant $1A identifier
    .db 1                ; Number of 16KB PRG-ROM banks
    .db 1                ; Number of 8KB CHR-ROM banks
    .db 0                ; ROM Control Byte 1
    .db 0                ; ROM Control Byte 2
    .db 0, 0, 0, 0, 0, 0 ; Padding

.segment "CODE"

    ; Main game code goes here

.end

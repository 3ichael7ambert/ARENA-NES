RESET:
    SEI                     ; Disable interrupts
    CLD                     ; Clear decimal mode

    ; Initialize stack
    LDA     #$FF
    TXS

    ; Initialize memory
    LDX     #$00
    LDY     #$00
    LDA     #$00
    STA     $0000,X
    INX
    CPX     #$08
    BNE     -
    INY
    CPY     #$10
    BNE     -

    ; Set up PPU
    LDA     #$01
    STA     $2000
    STA     $2001
    STA     $2003

    ; Initialize other hardware registers and game variables

    ; Jump to the title screen code
    JMP     TitleScreen

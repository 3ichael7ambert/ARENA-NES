; NES Memory Addresses
RAM_START   = $0000     ; Start of RAM
RAM_SIZE    = $0800     ; Size of RAM
VRAM_START  = $2000     ; Start of VRAM
VRAM_SIZE   = $1000     ; Size of VRAM
OAM_START   = $2000     ; Start of OAM
OAM_SIZE    = $0100     ; Size of OAM
PRG_START   = $8000     ; Start of PRG-ROM
PRG_BANK_SIZE = $4000   ; Size of each PRG-ROM bank
CHR_START   = $0000     ; Start of CHR-ROM
CHR_BANK_SIZE = $2000   ; Size of each CHR-ROM bank

; PPU Registers
PPUCTRL     = $2000     ; PPU Control Register
PPUMASK     = $2001     ; PPU Mask Register
PPUSTATUS   = $2002     ; PPU Status Register
OAMADDR     = $2003     ; OAM Address Register
OAMDATA     = $2004     ; OAM Data Register
PPUSCROLL   = $2005     ; PPU Scroll Register
PPUADDR     = $2006     ; PPU Address Register
PPUDATA     = $2007     ; PPU Data Register

; Controller Ports
CTRL1       = $4016     ; Controller 1
CTRL2       = $4017     ; Controller 2

; CPU Registers
A           = $00       ; Accumulator
X           = $01       ; X Register
Y           = $02       ; Y Register
SP          = $100      ; Stack Pointer
STATUS      = $101      ; Processor Status

; Common Routines
CLRMEM      = $E000     ; Clear memory routine
COPYMEM     = $E010     ; Copy memory routine
WAITVBLANK  = $E020     ; Wait for vertical blank routine

; Macros
; Example macro for setting a memory address to a specific value
.macro SET_ADDRESS address, value
    lda #<\value
    sta \address
    lda #>\value
    sta \address + 1
.endmacro

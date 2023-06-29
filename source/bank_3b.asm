INCLUDE "hardware.inc"
INCLUDE "code_macros.inc"
INCLUDE "const_macros.inc"

; safari album stuff

SECTION "function_3b_63c1", ROMX[$63C1], BANK[$3B]
function_3b_63c1::
    ld a, [$c316]
    push af
    ld a, $01
    ld [$c316], a
    ld [$4000], a
    ld a, [$c357]
    and a
    jr z, jr_03b_63e3

    ld a, $64
    ld hl, $4000
    ld de, $a000
    ld bc, $1800
    call far_mem_copy
    jr jr_03b_63f1

jr_03b_63e3:
    ld a, $64
    ld hl, $5800
    ld de, $a000
    ld bc, $1800
    call far_mem_copy

jr_03b_63f1:
    ld a, $00
    ld hl, $b000
    ld de, $9000
    ld bc, $0600
    call vram_copy
    ld a, $00
    ld hl, $ad00
    ld de, $8d00
    ld bc, $0300
    call vram_copy
    pop af
    ld [$c316], a
    ld [$4000], a
    jp farcall_ret

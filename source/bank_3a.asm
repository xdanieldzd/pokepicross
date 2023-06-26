INCLUDE "hardware.inc"
INCLUDE "code_macros.inc"
INCLUDE "const_macros.inc"
INCLUDE "pokedex_constants.inc"
INCLUDE "puzzle_constants.inc"

SECTION "function_3a_5f67", ROMX[$5F67], BANK[$3A]
function_3a_5f67::
    ld l, a
    ld h, $00
    ld de, pokedex_puzzle_order
    add hl, de
    ld a, [hl]
    add $0f
    jp farcall_ret

pokedex_puzzle_order:
    db POKEDEX_BULBASAUR
    db POKEDEX_IVYSAUR
    db POKEDEX_VENUSAUR
    db POKEDEX_CHARMANDER
    db POKEDEX_CHARMELEON
    db POKEDEX_CHARIZARD
    db POKEDEX_SQUIRTLE
    db POKEDEX_WARTORTLE
    db POKEDEX_BLASTOISE
    db POKEDEX_CATERPIE
    db POKEDEX_METAPOD
    db POKEDEX_BUTTERFREE
    db POKEDEX_WEEDLE
    db POKEDEX_KAKUNA
    db POKEDEX_BEEDRILL
    db POKEDEX_PIDGEY
    db POKEDEX_PIDGEOTTO
    db POKEDEX_PIDGEOT
    db POKEDEX_RATTATA
    db POKEDEX_RATICATE
    db POKEDEX_SPEAROW
    db POKEDEX_FEAROW
    db POKEDEX_EKANS
    db POKEDEX_ARBOK
    db POKEDEX_PIKACHU
    db POKEDEX_RAICHU
    db POKEDEX_SANDSHREW
    db POKEDEX_SANDSLASH
    db POKEDEX_NIDORAN_F
    db POKEDEX_NIDORINA
    db POKEDEX_NIDOQUEEN
    db POKEDEX_NIDORAN_M
    db POKEDEX_NIDORINO
    db POKEDEX_NIDOKING
    db POKEDEX_CLEFAIRY
    db POKEDEX_CLEFABLE
    db POKEDEX_VULPIX
    db POKEDEX_NINETALES
    db POKEDEX_JIGGLYPUFF
    db POKEDEX_WIGGLYTUFF
    db POKEDEX_ZUBAT
    db POKEDEX_GOLBAT
    db POKEDEX_ODDISH
    db POKEDEX_GLOOM
    db POKEDEX_VILEPLUME
    db POKEDEX_PARAS
    db POKEDEX_PARASECT
    db POKEDEX_VENONAT
    db POKEDEX_VENOMOTH
    db POKEDEX_DIGLETT
    db POKEDEX_DUGTRIO
    db POKEDEX_MEOWTH
    db POKEDEX_PERSIAN
    db POKEDEX_PSYDUCK
    db POKEDEX_GOLDUCK
    db POKEDEX_MANKEY
    db POKEDEX_PRIMEAPE
    db POKEDEX_GROWLITHE
    db POKEDEX_ARCANINE
    db POKEDEX_POLIWAG
    db POKEDEX_POLIWHIRL
    db POKEDEX_POLIWRATH
    db POKEDEX_ABRA
    db POKEDEX_KADABRA
    db POKEDEX_ALAKAZAM
    db POKEDEX_MACHOP
    db POKEDEX_MACHOKE
    db POKEDEX_MACHAMP
    db POKEDEX_BELLSPROUT
    db POKEDEX_WEEPINBELL
    db POKEDEX_VICTREEBEL
    db POKEDEX_TENTACOOL
    db POKEDEX_TENTACRUEL
    db POKEDEX_GEODUDE
    db POKEDEX_GRAVELER
    db POKEDEX_GOLEM
    db POKEDEX_PONYTA
    db POKEDEX_RAPIDASH
    db POKEDEX_SLOWPOKE
    db POKEDEX_SLOWBRO
    db POKEDEX_MAGNEMITE
    db POKEDEX_MAGNETON
    db POKEDEX_FARFETCHD
    db POKEDEX_DODUO
    db POKEDEX_DODRIO
    db POKEDEX_SEEL
    db POKEDEX_DEWGONG
    db POKEDEX_GRIMER
    db POKEDEX_MUK
    db POKEDEX_SHELLDER
    db POKEDEX_CLOYSTER
    db POKEDEX_GASTLY
    db POKEDEX_HAUNTER
    db POKEDEX_GENGAR
    db POKEDEX_ONIX
    db POKEDEX_DROWZEE
    db POKEDEX_HYPNO
    db POKEDEX_KRABBY
    db POKEDEX_KINGLER
    db POKEDEX_VOLTORB
    db POKEDEX_ELECTRODE
    db POKEDEX_EXEGGCUTE
    db POKEDEX_EXEGGUTOR
    db POKEDEX_CUBONE
    db POKEDEX_MAROWAK
    db POKEDEX_HITMONLEE
    db POKEDEX_HITMONCHAN
    db POKEDEX_LICKITUNG
    db POKEDEX_KOFFING
    db POKEDEX_WEEZING
    db POKEDEX_RHYHORN
    db POKEDEX_RHYDON
    db POKEDEX_CHANSEY
    db POKEDEX_TANGELA
    db POKEDEX_KANGASKHAN
    db POKEDEX_HORSEA
    db POKEDEX_SEADRA
    db POKEDEX_GOLDEEN
    db POKEDEX_SEAKING
    db POKEDEX_STARYU
    db POKEDEX_STARMIE
    db POKEDEX_MR_MIME
    db POKEDEX_SCYTHER
    db POKEDEX_JYNX
    db POKEDEX_ELECTABUZZ
    db POKEDEX_MAGMAR
    db POKEDEX_PINSIR
    db POKEDEX_TAUROS
    db POKEDEX_MAGIKARP
    db POKEDEX_GYARADOS
    db POKEDEX_LAPRAS
    db POKEDEX_DITTO
    db POKEDEX_EEVEE
    db POKEDEX_VAPOREON
    db POKEDEX_JOLTEON
    db POKEDEX_FLAREON
    db POKEDEX_PORYGON
    db POKEDEX_OMANYTE
    db POKEDEX_OMASTAR
    db POKEDEX_KABUTO
    db POKEDEX_KABUTOPS
    db POKEDEX_AERODACTYL
    db POKEDEX_SNORLAX
    db POKEDEX_ARTICUNO
    db POKEDEX_ZAPDOS
    db POKEDEX_MOLTRES
    db POKEDEX_DRATINI
    db POKEDEX_DRAGONAIR
    db POKEDEX_DRAGONITE
    db POKEDEX_MEWTWO
    db POKEDEX_MEW

function_3a_600b::
    ld hl, pokedex_puzzle_order
    ld c, $00
    sub $0f
    ld b, a

jr_03a_6013:
    ld a, [hl+]
    cp b
    jr z, jr_03a_601a

    inc c

jr_03a_6018:
    jr jr_03a_6013

jr_03a_601a:
    ld a, c
    jp farcall_ret


SECTION "function_3a_61df", ROMX[$61DF], BANK[$3A]
function_3a_61df::
    farcall function_3a_6610
    ld a, [$dbc7]
    farcall function_3a_5f67
    ld [w_puzzle_index], a
    ld [$dbf2], a
    call $2b6f
    ld a, [$dbf2]
    ld c, a
    ld a, [$dbcf]
    cp c
    jp z, farcall_ret

    ld a, c
    ld [$dbcf], a
    call function_3a_6228
    jp farcall_ret


function_3a_6228:
    ld a, $a2
    ld [w_cd6d], a
    ld a, $76
    ld [w_cd6e], a
    call function_3a_63e4
    call function_3a_629c
    ld a, [w_puzzle_index]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $d722
    add hl, de
    ld a, [hl+]
    ld [w_dbe4], a
    ld a, [hl+]
    ld [w_dbe5], a
    ld a, [hl+]
    ld [w_dbe5], a
    ld a, [hl+]
    ld [w_dbe7], a

    ; print digits for time taken
    ld a, $60
    ld [w_vwf_char_start_x], a
    ld a, [w_dbe7]
    call function_3a_63a8
    ld a, $68
    ld [w_vwf_char_start_x], a
    ld a, [w_dbe6]
    call function_3a_63a8
    ld a, $78
    ld [w_vwf_char_start_x], a
    ld a, [w_dbe5]
    call function_3a_63a8
    ld a, $80
    ld [w_vwf_char_start_x], a
    ld a, [w_dbe4]
    call function_3a_63a8

    call function_3a_6353
    ld a, [$d669]
    call function_3a_6421 ;print puzzle size
    xor a

    ld [$d626], a
    ld a, $28 ; set to $08 to push left & overwrite "NAME" label; TODO: remove label completely
    ld [w_text_pos_x], a
    ld a, $0f
    ld [w_text_pos_y], a
    call puzzle_name_print
    xor a
    ret


SECTION "function_3a_63a8", ROMX[$63A8], BANK[$3A]
function_3a_63a8:
    push af
    ld a, $06
    ld [w_vwf_char_start_y], a
    pop af
    cp $0a
    jr nz, jr_03a_63b4

    xor a

jr_03a_63b4:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, function_3a_4000
    add hl, de
    ld de, $0010
    add hl, de
    ld a, l
    ld [w_vwf_char_addr], a
    ld a, h
    ld [$c360], a
    ld a, $7b
    ld [w_vwf_char_bank], a
    ld a, [w_vwf_char_start_x]
    add $07
    ld [w_vwf_char_end_x], a
    ld a, [w_vwf_char_start_y]
    add $07
    ld [$c35e], a
    call $0723
    ret


SECTION "function_3a_6632", ROMX[$6632], BANK[$3A]
function_3a_6632::
    ld l, a
    ld h, $00
    ld de, $000f
    call $0af4
    push af
    xor a
    ld [w_dbe4], a
    ld a, b
    cp $09
    jr nz, jr_03a_664c

    push af
    ld a, $01
    ld [w_dbe4], a
    pop af

jr_03a_664c:
    cp $0a
    jr nz, jr_03a_6657

    ld a, $01
    ld [w_dbe4], a
    ld a, $00

jr_03a_6657:
    inc a
    ld [w_dbe5], a
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    ld de, unknown_3a_666f
    add hl, de
    ld a, [hl+]
    ld [$dbe6], a
    ld a, [hl+]
    ld [$dbe7], a
    jp farcall_ret

unknown_3a_666f:
    db $00,$01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06,$00,$07,$00,$08
    db $00,$09,$01,$00,$01,$01,$01,$02,$01,$03,$01,$04,$01,$05

SECTION "function_3a_668d", ROMX[$668D], BANK[$3A]
function_3a_668d:
    cp $ff
    jp z, farcall_ret

    cp $fe
    jp z, farcall_ret

    ld [w_dbe4], a
    call function_3a_66c7 ;clear tilemap
    call function_3a_6724 ;draw pokemon name
    call function_3a_677c ;draw pokemon number
    call function_3a_67a2
    jp farcall_ret

pokedex_entry_not_caught:
    db $5F,$5F,$5F,$5F,$5F
    db $37,$37,$37,$37,$37

unknown_3a_66b3:
    db $5F,$5F,$5F,$5F,$5F
    db $5F,$5F,$5F,$5F,$5F

pokedex_entry_caught:
    db $5F,$5F,$5F,$5F,$43
    db $37,$37,$37,$37,$37


SECTION "function_3a_66c7", ROMX[$66c7], BANK[$3A]
function_3a_66c7::
    ld hl, unknown_3a_66b3
    ld de, w_d655
    ld bc, $000a
    call mem_copy
    ld a, [w_dbe4]
    farcall function_3a_5f67
    ld c, a
    ld b, $00
    ld hl, $00f0
    add hl, bc
    ld c, l
    ld b, h
    farcall pokemon_was_caught
    jr nz, jr_03a_6717

    ld hl, pokedex_entry_not_caught
    ld de, w_tutorial_scene
    ld bc, $000a
    call mem_copy
    jr jr_03a_6723

jr_03a_6717:
    ld hl, pokedex_entry_caught
    ld de, w_tutorial_scene
    ld bc, $000a
    call mem_copy

jr_03a_6723:
    ret

SECTION "function_3a_6724", ROMX[$6724], BANK[$3A]
function_3a_6724::
    ld a, [w_dbe4]
    farcall function_3a_5f67
    ld c, a
    ld b, $00
    farcall pokemon_was_caught
    ret z

    ld a, [w_dbe4]
    ld l, a
    ld h, $00
    add hl, hl
    ld e, l
    ld d, h
    add hl, hl
    add hl, hl
    add hl, de
    push hl

    ; Name kana
    ld de, $67ec
    add hl, de
    ld de, w_d646
    ld bc, $0005
    call mem_copy
    pop hl

    ; Name dakuten/handakuten
    ld de, $67e7
    add hl, de
    ld de, w_d65a
    ld bc, $0005
    call mem_copy

    ret


SECTION "function_3a_677c", ROMX[$677C], BANK[$3A]
function_3a_677c::
    ld a, [w_dbe4]
    inc a
    call function_00_1bec
    ld hl, w_d642
    ld a, c
    call function_3a_6799
    ld a, b
    swap a
    and $0f
    call function_3a_6799
    ld a, b
    and $0f
    call function_3a_6799
    ret

function_3a_6799:
    cp $0a
    jr nz, jr_03a_679e

    xor a

jr_03a_679e:
    add $38
    ld [hl+], a
    ret

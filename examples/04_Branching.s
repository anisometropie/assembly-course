.export Main
.segment "CODE"

.proc Main
  ; Initialize Health, Damage, and the Return Value
  lda #30
  sta $00
  lda #15
  sta $01
  lda #0
  sta $02

  ; it does Damage − Health
  ; carry flag is set if Damage >= Health
  lda $01 ; damage
  cmp $00 ; health
  bcc not_lethal

  ; Set address $02 to 1 to indicate the player has died
  lda #1
  sta $02

  ; Branch to this label when damage isn't lethal
not_lethal:
  rts
.endproc

; it doesn’t work the other way around (the carry flag is set if health >= damage, > means alive, = means dead)

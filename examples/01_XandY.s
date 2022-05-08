.export Main
.segment "CODE"

.proc Main
  ; Start by loading the value 5 into both the X and Y registers
  ldx #5
  ldy #5

  ; Increment the value of X
  inx
  ; Decrement the value of X
  dex

  ; Increment the value of Y
  iny
  ; Decrement the value Y
  dey

  ; Since we ran 2 increments and 1 decrement on X, it should now equal 6
  ; Since we ran 2 decrements on Y and 1 increment, it should now equal 4
  rts
.endproc

BR        main     ;Branch around data
num1:     .BLOCK  2       ;#2d
num2:     .BLOCK  2       ;#2d
num3:     .BLOCK  2       ;#2d
result1:  .BLOCK  2       ;#2d
result2:  .BLOCK  2       ;#2d
result3:  .BLOCK  2       ;#2d
total:    .BLOCK  2       ;#2d
ten:      .EQUATE  10
mul:  .ASCII  " multiplied by 8 is \x00"
div:  .ASCII  " divided by 4 is \x00"
add:  .ASCII  " plus 10 is \x00"
tot:  .ASCII  "Total is \x00"
;get input
main: DECI    num1,d      ;Get the number
      DECI    num2,d      ;Get the number
      DECI    num3,d      ;Get the number
;multiplication
      LDA     num1,d
      ASLA
      ASLA
      ASLA
      STA     result1,d
      DECO    num1,d
      STRO    mul,d
      DECO    result1,d
      CHARO   '\n', i     ;new line
      CHARO   '\n', i     ;extra new line
;division
      LDA     num2,d
      ASRA
      ASRA
      STA     result2,d
      DECO    num2,d
      STRO    div,d
      DECO    result2,d
      CHARO   '\n', i     ;new line
      CHARO   '\n', i     ;extra new line
;addition
      LDA     num3,d
      ADDA    ten,i
      STA     result3,d
      DECO    num3,d
      STRO    add,d
      DECO    result3,d
      CHARO   '\n', i     ;new line
      CHARO   '\n', i     ;extra new line
;total
      LDA     total,d
      ADDA    result1,d
      ADDA    result2,d
      ADDA    result3,d
      STA     total,d
      STRO    tot,d
      DECO    total,d
      STOP  
     .END 
      
     BR      main         ;Branch around data
num:    .BLOCK  2          ;#2d
num2:   .BLOCK  2          ;#2d
result: .BLOCK  2          ;#2d
bonus:  .EQUATE 7
testf:  .ASCII "First test score is \x00"
tests:  .ASCII "Second test score is \x00"
avgb:   .ASCII "Boosted average is \x00"
;
main: DECI    num,d      ;Get the number
      DECI    num2,d     ;Get the number
      LDA     num,d      ;A <- the number
      ADDA    num2,d     ;add  
      ASRA               ;arithmetic shift right
      ADDA    bonus,i    ;add
      STA     result,d   ;Store the result
      STRO    testf,d    
      DECO    num,d      ;Output the firsttest 
      CHARO   '\n',i     ;new line
      CHARO   '\n',i     ;extra new line
      STRO    tests,d 
      DECO    num2,d     ;Output the secondtest
      CHARO   '\n',i     ;new line
      CHARO   '\n',i     ;extra new line
      STRO    avgb,d 
      DECO    result,d   ;Output the boostedaverage
      STOP  
      .END   

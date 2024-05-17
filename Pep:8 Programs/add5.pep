BR        main     ;Branch around data
num:     .BLOCK   2  ;#2d
five:    .EQUATE  5
result:  .BLOCK   2  ;#2d
string:  .ASCII  " + 5 = \x00"
;
main: DECI    num,d      ;Get the number
      DECO    num,d      ;and output it
      STRO    string,d   ;Output " + 5 = "
      LDA     num,d      ;A <- the number
      ADDA    five,i        ;Add five to it
      STA     result,d      ;Store the sum
      DECO    result,d      ;Output the sum 
      STOP  
     .END   

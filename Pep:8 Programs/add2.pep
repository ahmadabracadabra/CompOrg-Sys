BR        main   ;Branch around data 
num:     .BLOCK   2  ;#2d
two:     .EQUATE  2
result:  .BLOCK   2  ;#2d         
;
main: DECI    num,d      ;Get the number
      LDA     num,d      ;A <- the number
      ADDA    two,i      ;Add two to it
      STA     result,d      ;Store the sum
      DECO    result,d      ;Output the sum 
      STOP  
      .END   

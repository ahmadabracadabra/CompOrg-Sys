     BR      main     ;Branch around data
num: .BLOCK  2          ;Storage for one integer
;
main: DECI    num,d   ;Get the number
      LDA     num,d   ;A <- the number
      ADDA    10,i    ;Add ten to input
      STA     num,d   ;Store the sum
      DECO    num,d   ;Output the sum
      STOP  
      .END   

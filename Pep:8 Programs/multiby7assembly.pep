     BR      main     ;Branch around data
num: .BLOCK  2          ;Storage for one integer
;
main: DECI    num,d   ;Get the number
      LDA     num,d   ;A <- the number
      ASLA            ;arithmetic shift left
      ASLA            ;arithmetic shift left
      ASLA            ;arithmetic shift left
      SUBA    num,d   ;subtract from product 
      STA     num,d   ;Store the product
      DECO    num,d   ;Output the product
      STOP  
      .END   

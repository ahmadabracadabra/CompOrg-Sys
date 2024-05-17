         BR      main       ;Branch around data
num:     .BLOCK  2          ;Storage for one integer
num2:    .BLOCK  2          ;Storage for one integer 
;
main:    DECI    num,d      ;Get the number
         DECI    num2,d     ;Get the second number
         LDA     num,d      ;A <- the number
         ADDA    num2,d     ;Add second input to it
         STA     num,d      ;Store the sum
         DECO    num,d      ;Output the sum
         STOP  
         .END   
         



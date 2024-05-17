;Ahmad Abraham
         BR      main
x:  .EQUATE 0          ;local variable #2d
y:  .EQUATE 2         ;local variable #2d
five:    .EQUATE 5  
seven:   .EQUATE 7 
two:     .EQUATE 2 
;
main:    SUBSP   4,i        ;allocate #y #x
         DECI    x,s   ;cin >> number
         DECI    y,s   ;cin >> number   
if:      LDA     x,s   ;load number into accumulator
         CPA     five, i  ;compare acc with 5 
         BRLE    else     ;if (x > 5)
         LDA     y,s   ;load y into accumulator
         SUBA    seven,i ;subtract 7
         STA     y,s   ;store number
         DECO    y, s  ;output number
         BR      endIf
else:    LDA     y,s   ;load y into accumulator
         SUBA    two,i ; subtract two
         ADDA    x,s
         STA     y,s   ;store number
         DECO    y, s  ;output number
endIf:   ADDSP   4,i        ;deallocate #x #y
         STOP  
         .END
;Ahmad Abraham
         BR      main
x:  .EQUATE 0          ;local variable #2d 
y:  .EQUATE 2          ;local variable #2d 
largest:  .EQUATE 4    ;local variable #2d 
msg1:    .ASCII "The largest of \x00"
and:    .ASCII " and \x00"
is:    .ASCII " is \x00"
;
main:    SUBSP   6,i        ;allocate #largest #y #x 
         DECI    x,s   ;cin >> number
         DECI    y,s   ;cin >> number 
if:      LDA     x,s   ;load number into accumulator
         CPA     y,s   ;  compare acc with num2 
         BRLE    else     ; if (x > y)
         LDA     x,s
         STA     largest,s
         BR        endIf
else:    LDA     y,s
         STA     largest,s
endIf:   STRO    msg1,d   ;output message largest
         DECO    x, s  ;output number
         STRO    and,d   ;output and
         DECO    y, s  ;output number
         STRO    is,d   ;output is
         DECO    largest, s  ;output number
         ADDSP   6,i        ;deallocate #x #y #largest
         STOP  
         .END
;Ahmad Abraham
         BR      main
char:  .EQUATE 0          ;local variable #1c
upper:   .ASCII "A \x00"
lower:   .ASCII "a \x00"
other:   .ASCII "$ \x00"

;
main:    SUBSP   1,i         ;allocate #char
         CHARI    char,s     ;input character
         LDA      0x0000,i   ;zero out the accumulator
        
if:      LDBYTEA     char,s  ;load character into accumulator
         CPA    'a', i       ;compare accumulator with 'a'
         BRLT    elseif      ;else if accumulator < 'a'
         CPA    'z', i       ;compare accumulator with'z'
         BRGT   elseif       ;else if accumulator >'z'
         STRO    lower, d    ;output message
         BR endIf
         
elseif:  LDBYTEA     char,s  ;load character into accumulator
         CPA    'A', i       ;compare accumulator with 'A'
         BRLT    else        ;else accumulator < 'A'
         CPA    'Z', i       ;compare accumulator with'Z'
         BRGT   else         ;else accumulator >'Z'
         STRO    upper, d    ;output message
         BR endIf

else:    STRO    other, d    ;output message
endIf:   CHARO   '\n', i     ;endl
         ADDSP   1,i        ;deallocate #char
         STOP  
         .END
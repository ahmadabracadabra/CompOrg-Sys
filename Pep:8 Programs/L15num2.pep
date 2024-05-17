;Ahmad Abraham
         BR main
orig:    .EQUATE 0 ;#1c
new:     .EQUATE 1 ;#1c


main:    SUBSP 2,i     ;allocate #new #orig 
         LDA 0, i      ;clear A
         CHARI orig,s  ;input word 

while:   LDBYTEA orig, s  ;first letter
         CPA '.', i       ;if . branch end
         BREQ end
         CPA    'A', i    ;compare A with 'A'
         BRLE    upper    ;upper A <= 'A'
         CPA    'Z', i    ;compare A with'Z'
         BRLE   upper     ;upper A <='Z'
         SUBA   32,i      ;Sub 32
         STBYTEA  new,s   ;Store capital letter 
         CHARO new,s      ;output
         CHARI orig, s    ;next letter
         BR while         ;loop   

         
upper:   STBYTEA  new,s   ;Store capital letter 
         CHARO new,s      ;output
         CHARI orig, s    ;next letter
         BR while         ;loop   


end:    ADDSP 2,i         ;deallocate #orig #new 
        STOP
        .END
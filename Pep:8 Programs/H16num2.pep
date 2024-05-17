;Ahmad Abraham
BR main
;lowercase char to uppercse char
c1:     .EQUATE 3; #1c
retVal: .EQUATE 4; #1c
ans:    .EQUATE 0; #1c
upper:   SUBSP 1, i; allocate #ans 
         LDBYTEA c1, s
         CPA    'a', i       ;compare accumulator with 'a'
         BRLT    error      ;else if accumulator < 'a'
         CPA    'z', i      ;compare accumulator with'z'
         BRLT   error       ;else if accumulator >'z'
         SUBA  32,i  ;Sub 32 from it 
         STBYTEA ans,s
         STBYTEA retVal, s
         BR end

error:   LDBYTEA 63, i   ;'?'
         STBYTEA ans,s   ;store '?'
         STBYTEA retVal, s
         BR end

end:     RET1 ;deallocate #ans 
              
                

         
;main
ch:     .EQUATE 0; #1c
newch:  .EQUATE 1; #1c
main:  SUBSP 1, i  ;allocate #ch 
       CHARI ch, s
       LDA ch, s
       STA -2, s
       SUBSP 2, i  ;push #newch #c1  
       CALL upper
       CHARO ch,s
       CHARO ' ',i
       CHARO newch, s
       ADDSP 1, i  ;pop #newch 
       ADDSP 1, i  ;deallocate  #ch 
       STOP
       .END
 
;Ahmad Abraham
         BR      main
num:    .EQUATE 0   ;local variable #2d 
ADD5:     SUBSP 2,i ;allocate #num
          DECI num,s   ;cin >> number
          LDA num,s
          ADDA 5,i 
          STA num,s
          DECO num,s
          RET2 ;deallocate #num 
;

main:    CALL    ADD5        
         STOP  
         .END
 
         
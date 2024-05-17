;Ahmad Abraham
         BR      main
ADD5:     DECI    num,s   ;cin >> number
          LDA num,s
          ADDA 5,i 
          STA num,s
          DECO num,s
          RET0
;
num:    .EQUATE 0          ;local variable #2d 
main:    CALL    ADD5        
         STOP  
         .END
 
         
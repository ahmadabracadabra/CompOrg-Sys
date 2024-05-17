;Ahmad Abraham
         BR      main
;void putNext(int age)
age:     .EQUATE 2 ;#2d
nextage: .EQUATE 4 ;#2d
msg1:    .ASCII  "Age: \x00"
msg2:    .ASCII  "Age next year: \x00"

putNext:     LDA age,s
             ADDA 1,i
             STA nextage,s
             STRO    msg1,d     ;cout age
             DECO    age,s
             CHARO '\n',i
             STRO    msg2,d     ;cout age next year
             DECO    nextage,s
             CHARO '\n',i
             RET0
;main()
num:       .EQUATE 0  ;#2d
main:       SUBSP   2,i  ;allocate #num 
            LDA 20,i
            STA num,s
            CALL    putNext   ;putNext()
            ADDSP   2,i  ;pop #num 
            LDA 100,i
            STA num,s
            CALL    putNext   ;putNext()
            ADDSP   2,i  ;deallocate #num 
            STOP  
           .END   



   

num:     .equate 0; #2d
main:    subsp 2,i; allocate #num
         deci num,s
         deco num,s
         lda num,s
         sta -2,s
         subsp 2,i ; push #n
         call isEven
         addsp 2,i ; pop #n 
         addsp 2,i ; deallocate #num
         stop
         .end
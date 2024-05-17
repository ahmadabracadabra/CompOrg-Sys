;Ahmad Abraham
         BR      main
;void putNext(int age)
printTri:    STRO    msg1,d     ;cout age
             STRO    msg2,d     ;cout age next year
             RET0
age:     .EQUATE 0 ;#2d
nextage: .EQUATE 2 ;#2d
msg1:    .ASCII  "Age: x00"
msg2:    .ASCII  "Age next year: \x00"
;main()
main:       CALL    putNext   ;putNext()
            CALL    putNext   ;putNext()
            STOP  
           .END   


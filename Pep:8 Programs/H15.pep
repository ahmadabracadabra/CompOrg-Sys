;Ahmad Abraham
         BR      main
;void sub(int one, int two)
one:  .EQUATE 2  ;#2d
two:  .EQUATE 4  ;#2d
result: .EQUATE 0
minus:    .ASCII  " - \x00"
equal:   .ASCII  " = \x00"

sub:         LDA one,s      ;load one in A
             SUBA two,s     ;sub two from A
             STA result,d   ;store A in result
;output
             DECO one, s    ;ouput first int
             STRO minus,d    ;'-'
             DECO two,s     ;ouput second int
             STRO equal,d   ;'='
             DECO result,d   ;ouput result
             CHARO '\n',i   ;endline
             RET0

;main()
num1:       .EQUATE 0  ;#2d
num2:       .EQUATE 2  ;#2d

main:       SUBSP   4,i  ;allocate #num2 #num1 
            LDA 2, i    ;load 2
            STA num1, s  ;store in num1
            LDA 5, i     ;load 5
            STA num2, s  ;store in num2
            LDA num1, s
            STA -4, s
            LDA num2, s
            STA -2, s
            SUBSP 4, i ;push #two #one 
            CALL sub  ;call addTwo()
            ADDSP 4,i ;pop #one #two
;
            DECI num1, s ;input num1
            DECI num2, s ;input num2
            LDA num1, s
            STA -4, s
            LDA num2, s
            STA -2, s
            SUBSP 4, i ;push #two #one 
            CALL sub
            ADDSP 4, i ;pop #one #two 
;end
            ADDSP   4,i  ;deallocate #num1 #num2 
            STOP  
           .END
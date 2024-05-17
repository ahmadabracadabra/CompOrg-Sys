BR       main
num:     .BLOCK 2           ; global variable #2d
main:    DECI num,d         ; input integer 
         LDA num,d          ; load integer into A
         ASLA               ; multiply A by 2
         ASLA               ; A contains the number times 4
         ADDA num,d         ; A contains the number times 5
         STA num,d          ; store integer 
         DECO num,d         ; output result 
         STOP
         .END

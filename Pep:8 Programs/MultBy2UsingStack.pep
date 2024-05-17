BR       main
num:     .equate 0          ;local variable #2d
main:    SUBSP 2, i          ;allocate #num
         DECI num,s          ; input integer 
         LDA num,s          ; load integer into A
         ASLA               ; multiply A by 2
         STA num,s          ; store integer 
         DECO num,s         ; output result
         ADDSP 2,i          ;deallocate #num 
         STOP
         .END

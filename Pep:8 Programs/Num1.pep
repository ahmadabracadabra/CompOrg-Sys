BR       main
length:   .EQUATE 0          ;local variable #2d
width:    .EQUATE 2          ;local variable #2d
peri:     .EQUATE 4          ;local variable #2d 
;
main:    SUBSP 6, i          ;allocate #peri #width #length 
         DECI length,s       ; input integer 
         DECI width,s        ; input integer 
         LDA  length,s       ; load integer into A
         ADDA width,s
         ASLA                ; multiply A by 2
         STA  peri,s         ; store integer 
         DECO peri,s         ; output result
         ADDSP 6,i           ;deallocate #length #width #peri 
         STOP
         .END

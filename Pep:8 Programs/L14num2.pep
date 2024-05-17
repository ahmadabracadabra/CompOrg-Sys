;Ahmad Abraham
         BR main
num:     .EQUATE 0           ;#2d

main:     SUBSP 2,i          ;allocate #num
          DECI num,s         ;input first number

while:   LDX num,s           ;load num in X 
         CPX 0,i             ;compare X with 0
         BREQ endWhile       ;if it is zero, we are done
         LDA num,s           ;load num in A
         CPA 0,i
         BRLT pos            ;if negative branch
         DECO num,s          ;if positive output number
         CHARO 32, i         ;space
         DECI num, s         ;input next number
         BR while            ;loop
pos:   DECI num, s         ;input next number
       BR while            ;loop
 endWhile: ADDSP 2,i         ;deallocate #num
           STOP
           .END














































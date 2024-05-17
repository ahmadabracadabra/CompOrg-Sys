;Ahmad Abraham
         BR main
num:     .EQUATE 0    ;#2d
total:   .EQUATE 2    ;#2d

main:    SUBSP 4,i          ;allocate #total #num
         LDA 0,i            ;clear total before each run
         STA total,s
         DECI num, s         ;input first number

while:   LDX num,s           ;put number into X
         CPX 0,i             ;compare X with 0
         BREQ endWhile       ;if it is zero, we are done
         ADDA num,s          ;add num to A
         LDX num,s           ;load into x
         SUBX 1,i            ;decrement 
         STX num,s           ;store in X
         BR while            ;loop

 endWhile: STA  total,s      ;store total 
           DECO total,s      ;output total
           ADDSP 4,i         ;deallocate #num #total 
           STOP
           .END














































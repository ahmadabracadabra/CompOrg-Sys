;Ahmad Abraham
         BR main
num:     .EQUATE 0 ;#2d
oddsum:  .EQUATE 2 ;#2d
evensum: .EQUATE 4 ;#2d

main:     SUBSP 2,i          ;allocate #num
          DECI num,s         ;input first number

while:   LDX num,s           ;load num in X 
         CPX 0,i             ;compare X with 0
         BREQ endWhile       ;if it is zero, we are done
         LDA num,s           ;load num in A
         ANDA 0x0001,i       ;checks if odd
         BRNE odd            ;if odd branch
         LDA evensum,s
         ADDA num,s
          STA evensum,s
         DECI num, s         ;input next number
         BR while            ;loop
odd:   LDA oddsum,s
       ADDA num,s
       STA oddsum,s
       DECI num, s         ;input next number
       BR while            ;loop
 endWhile: ADDSP 2,i         ;deallocate #num
           STOP
           .END














































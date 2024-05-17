;Ahmad Abraham
         BR main
num:     .EQUATE 0 ;#2d
oddsum:  .EQUATE 2 ;#2d
evensum: .EQUATE 4 ;#2d
oddmsg:    .ASCII "The sum of odd numbers is: \x00" 
evenmsg:   .ASCII "The sum of even numbers is: \x00"

main:     SUBSP 6,i          ;allocate #evensum #oddsum #num
          LDA 0,i            ;clear oddsum and evensum from previous runs
          STA oddsum,s
          LDA 0,i
          STA evensum,s
          DECI num,s         ;input first number

while:   LDA num,s           ;load num in X 
         CPA 0,i             ;compare X with 0
         BREQ end       ;if it is zero, we are done
         LDA num,s           ;load num in A
         ANDA 0x0001,i       ;checks if odd
         BRNE odd            ;if odd branch
         LDA evensum,s       ;load evensum into A
         ADDA num,s          ;add num
         STA evensum,s       ;store in evensum
         DECI num, s         ;input next number
         BR while            ;loop

odd:     LDA oddsum,s       ;load oddsum into A
         ADDA num,s         ;add num to A
         STA oddsum,s       ;store in oddsum
         DECI num, s        ;input next number
         BR while           ;loop

 end: STRO oddmsg,d
           DECO oddsum,s
           CHARO '\n',i
           STRO evenmsg,d
           DECO evensum,s
           ADDSP 6,i         ;deallocate #num #oddsum #evensum
           STOP
           .END














































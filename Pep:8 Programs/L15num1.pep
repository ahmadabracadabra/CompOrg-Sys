;Ahmad Abraham
         BR main
num:     .EQUATE 0 ;#1c
counter: .EQUATE 2 ;#2d
msg:     .ASCII "There are \x00"
msg2:    .ASCII " sevens\x00"

main:    SUBSP 3,i   ;allocate #counter #num
         LDX 0, i    ;clear num and counter
         LDA 0, i    
         CHARI num,s ;input first number

while:   LDBYTEA num, s ;load leftmost number(character)
         CPA '#', i     ;if # end loop
         BREQ end
         CPA '7', i     ;if not 7 loop
         BRNE rep
         ADDX 1, i      ;increment counter if 7
         
rep:     CHARI num, s ;input
         BR while     ;loop

end:     STX counter,s    ;store counter
         STRO msg,d       ;string output
         DECO counter,s   ;out counter
         STRO msg2,d      ;string output
         ADDSP 3,i        ;deallocate #num #counter 
         STOP
         .END


       

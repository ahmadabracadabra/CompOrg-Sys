;Ahmad Abraham
BR      main
counter:.EQUATE 0   ;#2d
seven:  .EQUATE 2   ;#2d
guess:  .EQUATE 4   ;#2d
start:  .ASCII "Guess a number between 1 and 10, you have \x00"
start2:  .ASCII " guesses! \x00"
win:    .ASCII "Congratulations\x00"
lose:   .ASCII "Sorry, the number was 7\x00" 
;
main:    SUBSP   6,i    ;allocate  #guess #seven #counter
         LDX 0,i        ;clearing counter and seven in stack 
         STX counter,s  
         LDX counter,s
         ADDX 5,i
         STX counter,s
         LDA 0,i
         STA seven,s
         LDA seven,s
         ADDA 7,i
         STA seven,s
       

while:   STRO start,d   ;output start message
         DECO counter,s ;output remaining number of guesses
         STRO start2,d  ;output start message 2
         DECI guess,s   ;input
         LDA guess,s    ;load counter in X
         CPA seven,s    ;if 7 brnach to winner
         BREQ winner
         LDX counter,s  ;load counter in X
         CPX 1,i        ;if 1 or less branch to loser(5 guesses)
         BRLE loser
         SUBX 1,i       ;decrement counter      
         STX counter,s  ;store counter
         BR while       ;loop
         
winner:  STRO    win,d   ;output winner message
         BR      endIf

loser:   STRO    lose,d  ;output lose message
         BR      endIf

endIf:   ADDSP   6,i     ;deallocate #counter #seven #guess
         STOP  
         .END
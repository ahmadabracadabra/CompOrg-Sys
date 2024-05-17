;Ahmad Abraham
         BR      main
;void time(int hour, int min, int sec)
hour:  .EQUATE 6  ;formal parameter #2d
min:   .EQUATE 8  ;formal parameter #2d
sec:   .EQUATE 10 ;formal parameter #2d 
total: .EQUATE 0  ;#2d
k:     .EQUATE 2  ;#2d
msg1:   .ASCII  "There are \x00"
msg2:   .ASCII  " seconds in \x00"
msg3:   .ASCII  " hours,\x00"
msg4:   .ASCII  " minutes, and \x00"
msg5:   .ASCII  " seconds.\x00"

time:        SUBSP 4,i     ;allocate #k #total 
             LDA hour,s    ;set total to hours
             STA total,s
               
             LDX k,s       ;setting counter to 12 (x64 twice)
             ADDX 12,i     
             STX k,s
             LDA total,s   ;load hour
             
hours:       LDX k,s       ;load counter in X
             CPX 6,i       ;if 6 or less branch to endIf
             BREQ interm     
             SUBX 1,i      ;decrement counter
             STX k,s       ;store counter
             ASLA          ;times 2 
             STA total,s 
             BR hours      ;loop

interm:      ADDA min,s    ;add min to total 
             STA total,s   
             BR minutes

minutes:     LDX k,s       ;load counter in X
             CPX 0,i       ;if 0 or less branch to endIf
             BRLE output     
             SUBX 1,i      ;decrement counter
             STX k,s       ;store counter
             ASLA          ;times 2 
             STA total,s 
             BR minutes      ;loop


;output
output:      ADDA sec,s
             STA total,s   ;store A in result
             STRO msg1,d    ;"There are"
             DECO total,s   ;ouput total seconds
             STRO msg2,d    ;"seconds in"
             DECO hour,s   ;ouput hours
             STRO msg3,d    ;"hours,"
             DECO min,s   ;ouput minutes
             STRO msg4,d    ;"minutes, and"
             DECO sec,s   ;ouput seconds
             STRO msg5,d    ;"seconds."
             CHARO '\n',i   ;endline
             RET0

;main()
x:       .EQUATE 0  ;#2d
y:       .EQUATE 2  ;#2d
z:       .EQUATE 4  ;#2d

main:       SUBSP   6,i  ;allocate #z #y #x           
            DECI x, s ;input x
            DECI y, s ;input y
            DECI z, s ;input z
            LDA x, s  ;store variables on stack
            STA -6, s
            LDA y, s
            STA -4, s
            LDA z, s
            STA -2, s
            SUBSP 6, i ;push #sec #min #hour 
            CALL time
            ADDSP 6, i ;pop #hour #min #sec 
;end
            ADDSP   6,i  ;deallocate #x #y #z 
            STOP  
           .END
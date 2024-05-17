;Ahmad Abraham
         BR      main
;void upper(char c)
c:     .EQUATE 3 ;#1c 

upper:       CHARO  c,s     ;output the char
             LDBYTEA  c,s   ;load byte into A
             SUBA  32,i     ;sub 32 
             STBYTEA  c,s   ;store the diff
             CHARO ' ',i    ;output space
             CHARO  c,s     ;output the upper char
             CHARO '\n',i   ;newline
             RET0 
;main()

ch5:       .EQUATE 0  ;#1c
ch4:       .EQUATE 1  ;#1c
ch3:       .EQUATE 2  ;#1c
ch2:       .EQUATE 3  ;#1c
ch1:       .EQUATE 4  ;#1c
msg5:    .ASCII  "The fifth character \x00"
msg4:    .ASCII  "The fourth character \x00"
msg3:    .ASCII  "The third character \x00"
msg2:    .ASCII  "The second character \x00"
msg1:    .ASCII  "The first character \x00"

main:       SUBSP   5,i  ;allocate #ch1 #ch2 #ch3 #ch4 #ch5 
;input 5 characters
            CHARI ch1,s
            CHARI ch2,s
            CHARI ch3,s      
            CHARI ch4,s
            CHARI ch5,s

;ch5            
            STRO msg5,d      ;output message
            CHARO ch5,s      ;output ch5
            CHARO '\n',i     ;newline
            SUBSP 1,i ;push #c
            CALL upper       ;call upper()
            ADDSP 1,i ;pop #c 
            
;ch4    
            STRO msg4,d      ;output message
            CHARO ch4,s      ;output ch4
            CHARO '\n',i     ;newline
            CALL upper       ;call upper()
                         
;ch3            
            STRO msg3,d      ;output message
            CHARO ch3,s      ;output ch3
            CHARO '\n',i     ;newline
            ADDSP 1,i ;pop #c
            CALL upper       ;call upper()
            SUBSP 1,i ;push #c            
;ch2
            STRO msg2,d      ;output message
            CHARO ch2,s      ;output ch2
            CHARO '\n',i     ;newline
            ADDSP 1,i ;pop #c
            ADDSP 1,i ;pop #c
            CALL upper       ;call upper()
            SUBSP 1,i ;push #c
            SUBSP 1,i ;push #c                                     
;ch1
            STRO msg1,d      ;output message
            CHARO ch1,s      ;output ch1
            CHARO '\n',i     ;newline
            ADDSP 1,i ;pop #c 
            ADDSP 1,i ;pop #c 
            ADDSP 1,i ;pop #c 
            CALL upper       ;call upper()                     
;end
            ADDSP   5,i  ;deallocate #ch5 #ch4 #ch3 #ch2 #ch1
            STOP  
           .END   

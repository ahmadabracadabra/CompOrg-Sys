 BR      main     ;Branch around data
char1: .EQUATE  0  ;#1c 
char2: .EQUATE  1  ;#1c
char3: .EQUATE  2  ;#1c
char4: .EQUATE  3  ;#1c
;
main: SUBSP  4,i     ;allocate #char4 #char3 #char2 #char1 
      CHARI char1,s   ;Get the letter VVV
      CHARI char2,s
      CHARI char3,s 
      CHARI char4,s
      CHARO char4,s   ;output the letter VVV
      CHARO char3,s   
      CHARO char2,s
      CHARO char1,s
      ADDSP  4,i     ;deallocate #char1 #char2 #char3 #char4 
       STOP 
      .END   

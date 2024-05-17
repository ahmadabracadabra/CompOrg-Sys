 BR      main     ;Branch around data
num1: .BLOCK  2  ;#2d
num2: .BLOCK  2  ;#2d
;
main: DECI num1,d   ;Get the letter 
      DECI num2,d     
      DECO num2,d  ;output the letter
      CHARO '\n', i   ;new line
      DECO num1,d
      CHARO '\n', i   ;ending with new line
       STOP 
      .END   

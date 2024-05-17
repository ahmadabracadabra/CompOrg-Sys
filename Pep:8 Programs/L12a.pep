 ;Ahmad Abraham    
BR      main         ;Branch around data
x:    .EQUATE  0          ;#2d
y:    .EQUATE  2          ;#2d
z:    .EQUATE  4          ;#2d 
x2:   .EQUATE  6          ;#2d
y2:   .EQUATE  8          ;#2d
result:  .EQUATE  10      ;#2d
string1: .ASCII " times two is \x00"
string2: .ASCII " divided by two is \x00"
plus:    .ASCII " plus \x00"
minus:   .ASCII " minus \x00"
is:      .ASCII " is \x00"
;
main: SUBSP 12,i ;allocate #result #y2 #x2 #z #y #x 
      DECI    x,s     ;Get the number
      DECI    y,s     ;Get the number
      DECI    z,s     ;Get the number
;output the first line
      DECO    x,s       ;output x
      STRO    string1,d ;output string1
      LDA     x,s       ;load x
      ASLA              ;times 2
      STA     x2,s      ;store in x2
      DECO    x2,s      ;output x2
;output the second line
      CHARO   '\n',i     ;new line
      DECO    y,s        ;output y
      STRO    string2,d  ;output string 2
      LDA     y,s        ;load y
      ASRA               ;divide by 2
      STA     y2,s       ;store in y2
      DECO    y2,s       ;output y2
;output last line
      CHARO   '\n',i     ;new line
      DECO    x,s        ;Output the x
      STRO    plus,d     ;output string plus
      DECO    y,s        ;Output the y
      STRO    minus,d    ;output string minus
      DECO    z,s        ;Output the z
      STRO    is,d       ;output string is
      LDA     x,s        ;load x
      ADDA    y,s        ;add y
      SUBA    z,s        ;subtract z
      STA     result,s   ;store result
      DECO    result,s   ;Output the result
      ADDSP 12,i ;deallocate #x #y #z #x2 #y2 #result 
      STOP  
      .END   
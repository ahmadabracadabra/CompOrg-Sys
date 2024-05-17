;Ahmad Abraham
BR main
;multiply by 4
n1:     .EQUATE 4; #2d
retVal: .EQUATE 6; #2d
ans:    .EQUATE 0; #2d

multi4:  SUBSP 2, i; allocate #ans
         LDA n1, s
         ASLA
         ASLA
         STA ans, s
         STA retVal, s
         RET2 ;deallocate #ans
                

         
;main
num:      .EQUATE 0; #2d
product:  .EQUATE 2; #2d
msg1:     .ASCII " multiplied by 4 is \x00" 
main:  SUBSP 2, i  ;allocate #num 
       DECI num, s
       LDA num, s
       STA -4, s
       SUBSP 4, i  ;push #product #n1  
       CALL multi4
       DECO num,s
       STRO msg1,d 
       DECO product, s
       ADDSP 2, i  ;pop #product
       ADDSP 2, i  ;deallocate  #num
       STOP
       .END
 
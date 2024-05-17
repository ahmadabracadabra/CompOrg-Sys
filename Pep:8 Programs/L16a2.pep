;Ahmad Abraham
BR main
;add 5
num:    .EQUATE 0; #2d
retVal: .EQUATE 6; #2d
ans:    .EQUATE 2; #2d

ADD5:    SUBSP 4, i; allocate #ans #num
         DECI num, s
         LDA num,s
         ADDA 5,i 
         STA ans, s
         STA retVal, s
         RET4 ; deallocate #num #ans
                
        
;main
sum:  .EQUATE 0; #2d
main:  SUBSP 2,i  ;allocate #sum   
       CALL  ADD5 ;call ADD5()
       DECO sum,s
       ADDSP 2,i  ;deallocate #sum 
       STOP
       .END
 
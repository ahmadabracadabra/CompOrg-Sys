br main
  ans: .equate 4 ; #2d
  param: .equate 2 ; #2d
mult4:   lda param, s
         asla
         asla  ; multiply by 4
         sta ans, s
         ret0


num: .equate 0 ; #2d
n: .equate 0 ;#2d
msg: .ascii " multiplied by 4 is \x00"
retVal: .equate 0 ;#2d 

main:    subsp 2, i; allocate #num
         deci num, s ; input num
         deco num, s
         lda num, s  
         sta -4, s  ;place parameter on stack
         subsp 4, i ;push #retVal #n 
         call mult4
         addsp  2, i ; pop #n 
         stro msg, d 
         deco retVal, s 
         addsp 2, i ; pop #retVal 
         addsp 2, i ; deallocate #num
         stop
         .end
         
         
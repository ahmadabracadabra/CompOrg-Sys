br main
hours: .equate 0             ;local variable #2d
overtime: .equate 2          ;local variable #2d
total: .equate 4             ;local variable #2d
msg1: .ASCII "Hourly wage: $40 \nHours worked: \x00"
msg2: .ASCII "Wages received: $\x00"
main: subsp 6,i ;allocate #total #overtime #hours
         deci hours,s
         stro msg1,d
         deco hours, s
         charo '\n',i
         lda hours, s
         cpa 40,i
         brgt over
         ldx 0,i
loop1:   asla
          addx 1, i
         cpx 4, i
         brlt loop1  
         sta total,s
         br done
over:    suba 40,i
         ldx 0,i
loop2:   asla
          addx 1, i
         cpx 5, i
         brlt loop2  
         sta overtime,s
         lda 40,i
         ldx 0,i
loop3:   asla
         addx 1, i
         cpx 4, i
         brlt loop3  
          
         adda overtime,s
         sta total ,s
done:    stro msg2, d
         deco total,s
         addsp 6,i  ;deallocate #hours #overtime #total
         .end

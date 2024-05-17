;Ahmad Abraham
         BR      main  
;void printStars(int a)
a: .EQUATE 4 ;formal parameter #2d
k: .EQUATE 2 ;local variable #2d

printSta:      LDA 0,i      ;initalize k to 0
               STA k,s
            
loop:          LDA k,s
               CPA a,s
               BREQ endloop ;if k = a branch
               CHARO '*',i
               ADDA 1,i     ;increment k
               STA k,s
               BR loop
;
endloop:       CHARO '\n',i ;newline
               RET0  ;end function      



;void printRange
c: .EQUATE  2 ;formal parameter #2d
d: .EQUATE  4 ;formal parameter #2d
q: .EQUATE  2  ;local variable #2d
printRan:      LDA c,s
               STA q,s
;             
loop2:         LDA q,s
               CPA d,s
               BRGT endloop2 ;if q > d branch
               DECO q,s
               CHARO ' ',i
               ADDA 1,i   ;increment q
               STA q,s
               BR loop2
;
endloop2:      CHARO '\n',i ;newline
               RET0 ;end function


;void inRange
e: .EQUATE  2 ;formal parameter #2d
f: .EQUATE  4 ;formal parameter #2d
g: .EQUATE  6 ;formal parameter #2d
in: .ASCII "in range\x00"
out: .ASCII "outside range\x00"

inRange:       LDA g,s
               CPA e,s
               BRLT  outside ;if g < e branch
               LDA g,s
               CPA f,s
               BRGT outside ;if g > f branch
               STRO in,d    ;output "in range"
               BR end3
               
outside:       STRO out,d   ;output "outside range"
               BR end3

end3:          CHARO '\n',i ;newline
               RET0 ;end function
          
               

;main()
x:       .EQUATE 0  ;#2d 
y:       .EQUATE 2  ;#2d
z:       .EQUATE 4  ;#2d


main:       SUBSP   6,i  ;allocate #z #y #x 
            DECI x,s ;input x
            LDA x,s  ;storing variable on stack vvv
            STA -2, s
            SUBSP 2, i ;push #a 
            CALL printSta ;printSta()
            ADDSP 2, i ;pop #a 
; 
            DECI y,s ;input y
            LDA x,s  ;storing variables on stack vvv
            STA -4, s 
            LDA y,s
            STA -2, s 
            SUBSP 4, i ; push #d #c 
            CALL printRan  ;printRan()
            ADDSP 4, i ; pop #c #d
;
            DECI z,s ;input z
            LDA x,s  ;storing variables on stack vvv
            STA -6, s
            LDA y,s
            STA -4, s 
            LDA z,s
            STA -2, s  
            SUBSP 6, i ;push #g #f #e
            CALL inRange ;inRange()
            ADDSP 6, i ;pop #e #f #g 
                             
;end
 end:      ADDSP   6,i  ;deallocate #x #y #z 
            STOP  
           .END
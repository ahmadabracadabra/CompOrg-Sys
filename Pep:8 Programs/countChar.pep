; input ch
; int count = 0;
; while (ch!='.')
;{
; if(ch=='m') count++;
;input ch
;}
; output count 

         br main
; equates
ch:      .equate 0; #1c
count:   .equate 1 ; #2d

main:    subsp 3, i; allocate #count #ch
         ldx 0, i ; initializs count to zero
         lda 0, i ; zero out the acc
         chari ch, s
while:   ldbytea ch, s
         cpa '.', i
         breq done
         cpa 'm', i
         brne endwhile
         addx 1, i
endwhile: chari ch, s
         br while

done:    stx count, s
         deco count, s; output count
         addsp 3, i ; deallocate #ch #count
         stop
         .end
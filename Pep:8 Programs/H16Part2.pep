br main
ans: .equate 3; #1c
param: .equate 2 ; #1c
isLower: ldbytea '?', i 
         stbytea ans, s ; put ? in retVal 
         ldbytea param, s ; get param
         cpa 'a', i
         brlt done
         cpa 'z', i
         brgt done
         suba 32, i
         stbytea ans, s
         done: ret0

ch: .equate 0; #1c
c: .equate 0; #1c
retVal: .equate 0 ; #1c


main:  lda 0, i; zero out the accumulator
         subsp 1, i ; allocate #ch 
         chari ch, s
         charo ch, s ; output character
         ldbytea ch, s ; load input
         stbytea -2, s ; 
         subsp 2, i ; push #retVal #c 
         call isLower
         addsp 1, i ; pop #c 
         charo retVal, s
         addsp 1, i ; pop #retVal 
         addsp 1, i ; deallocate #ch 
         stop
         .end

         
;Ahmad Abraham
         BR      main
hours:  .EQUATE 0        ;#2d
wage:   .EQUATE 2        ;#2d
sixteen:  .EQUATE 16  
forty:    .EQUATE 40
hrwg:    .ASCII "Hourly wage: $\x00"
hrwk:    .ASCII "Hours worked: \x00" 
wr:      .ASCII "Wages received: $\x00"
;
main:    SUBSP   4,i        ;allocate #wage #hours
         DECI    hours,s   ;cin >> number  
if:      LDA     hours,s   ;load number into accumulator
         CPA     forty, i  ;compare acc with 5 
         BRGT    else     ;if (hours <= 40) else branch
         LDA     hours,s   ;load y into accumulator
         ASLA             ;multi by 2
         ASLA             ;multi by 2 (4)
         ASLA             ;multi by 2 (8)
         ASLA             ;multi by 2 (16)
         STA     wage,s   ;store wage
         BR      endIf

else:    LDA     hours,s   ;load y into accumulator
         SUBA    forty,i ; subtract forty
         ASLA             ;multi by 2
         ASLA             ;multi by 2 (4)
         ASLA             ;multi by 2 (8)
         ASLA             ;multi by 2 (16)
         ASLA             ;multi by 2 (32)
         ADDA    640,i    ;add 40 hour worth of wages (40x16)
         STA     wage,s   ;store number

endIf:   STRO    hrwg,d ;output hourly wage message
         DECO    sixteen, i  ;output pay
         CHARO   '\n',i ;end new line
         STRO    hrwk,d ;output hours worked message
         DECO    hours, s  ;output hours
         CHARO   '\n',i ;end new line
         STRO    wr,d  ;output wage message
         DECO    wage, s  ;output wage
         CHARO   '\n',i ;end new line
         ADDSP   4,i        ;deallocate #hours #wage
         STOP  
         .END
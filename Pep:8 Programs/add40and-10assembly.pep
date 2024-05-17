         BR      main       ;Branch around data
num:     .BLOCK  2          ;Storage for one integer #2d
;
main:    LDA     40,i       ;Load 40 
         ADDA    -10,i      ;Add -10 to it
         STA     num,d      ;Store the sum 
         DECO    num,d      ;Output the sum
         STOP  
         .END   
         

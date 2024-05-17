;Ahmad Abraham
         BR      main
num:    .EQUATE 0          ;local variable #2d
ninety:    .EQUATE 90 
eighty:    .EQUATE 80 
seventy:   .EQUATE 70 
sixty:     .EQUATE 60 
gradeA:    .ASCII "Grade: A \x00"
gradeB:    .ASCII "Grade: B \x00"
gradeC:    .ASCII "Grade: C \x00"
gradeD:    .ASCII "Grade: D \x00"
gradeF:    .ASCII "Grade: F \x00"
;
main:   SUBSP   2,i          ;allocate #num 
        DECI    num,s     ;input number 
if:     LDA     num,s     ;load number into accumulator
        CPA     ninety, i    ;compare accumulator with 90
        BRLT    elseif       ;if accumulator < 90 go to elseif   
        STRO    gradeA, d      ;output message 
        BR      endif        ;branch around else

elseif: LDA     num,s     ;load number into accumulator
        CPA     eighty, i        ;compare accumulator with 10
        BRLT    elseif2          ;if accumulator 80 go to elseif2     
        STRO    gradeB, d      ;output message 
        BR      endif        ;branch around else

elseif2: LDA    num,s     ;load number into accumulator
        CPA     seventy, i        ;compare accumulator with 10
        BRLT    elseif3          ;if accumulator >70 go to elseif3  
        STRO    gradeC, d      ;output message 
        BR      endif        ;branch around else

elseif3: LDA     num,s     ;load number into accumulator
        CPA     sixty, i        ;compare accumulator with 10 
        BRLT    else          ;if accumulator >=60 go to else      
        STRO    gradeD, d      ;output message 
        BR      endif        ;branch around else

else:   STRO    gradeF, d      ;output message 
endif:  ADDSP   2,i          ;deallocate #num 
        STOP  
         .END
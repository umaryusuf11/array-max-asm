; ARRAY-MAX ALGORITHM TO FIND THE MAX VALUE OF AN ARRAY
   lea R1,1[R0]         ; R1 := 1 (constant)
   load R2,n[R0]        ; R2 := n (size of array)
   lea R3,0[R0]         ; R3 := i (loop index)
   load R4,max[R0]      ; R4 := max (will store largest number)

; For Loop
forloop
; if R3(i) >= R2(n) then goto done
   cmp R3,R2
   jumpge done[R0]

; else run loop body and go back to loop head
   load R5,x[R3]        ; R5 := x[i]
   
; if R5 (x[i]) <= R4 (max) then goto continue
   cmp R5,R4            ; Compare R4 to R5
   jumple continue[R0]  ; goto skip

; else statement here
   add R4,R5,R0         ; R4 := R5 + 0

continue
   add R3,R3,R1         ; i := i + 1
   jump forloop         ; goto forloop

done
    store R4,max[R0]
    trap R0,R0,R0

; Data Definitions
n    data 5
max  data 0
x    data 4
     data 2
     data 5
     data 1
     data 3

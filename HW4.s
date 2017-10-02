; San Jose State University
; College of Engineering
; Computer Engineering Department
; CMPE102 - Assembly Language Programming
;
; *************************************************************
; HW4.s Fourth assembly homework assignment (Adding two Matricies the short way)
; *************************************************************
;
;
; Variable Declarations
;=====================
.bss
; Reserve one byte (8 bits) for each BYTE variable with ``.space`` directive.

; Assembly Code
; =============
.text
 
 init:
    mov #0, W8
    outer:
    CP W8, W3
    BRA GEU, end_outer
    mov #0, W9
	inner:
	CP W9, W2
	BRA GEU, end_inner
	mov.b W4,[W0++]
	add W4, W5, W4
	inc W9, W9
	BRA inner
	end_inner:
    sub W1, W2, W10
    add W10, W0, W0
    inc W8, W8
    BRA outer
    end_outer:
return
    
add_matrices:
    mov #0, W8 ; counter1
    outer_add:
    CP W8, W5
    BRA GEU, end_outer_add
    mov #0, W9
	inner_add:
	CP W9, W4
	BRA GEU, end_inner_add
	mov.b [W0++], W10
	add.b W10,[W1++], [W2++]
	inc W9, W9
	BRA inner_add
	end_inner_add:
    sub W3, W4, W9
    add W9, W0, W0
    add W9, W1, W1
    add W9, W2, W2
    inc W8, W8
    BRA outer_add
    end_outer_add:
return
 
.global __reset
__reset:
    
    mov #16, W1 ; Row width overall
    mov #6, W2 ; Row width used
    mov #4, W3 ; Row height
    
    mov #2, W4 ; start value
    mov #2, W5 ; inc value
    mov #0x1100, W0 ; starting address
    call init ; Matrix A
    
    mov #1, W4 ; start value
    mov #0x1200, W0 ; starting address
    call init ; Matrix B
    
    mov #0, W4 ; start value
    mov #0, W5 ; inc value
    mov #0x1300, W0 ; starting address
    call init ; Matrix C
    
    mov #0x1100, W0
    mov #0x1200, W1
    mov #0x1300, W2
    mov #16, W3
    mov #6, W4
    mov #4, W5
    call add_matrices ; add
 
done:
goto     done    ;Place holder for last line of executed code




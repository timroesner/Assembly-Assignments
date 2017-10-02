; San Jose State University
; College of Engineering
; Computer Engineering Department
; CMPE102 - Assembly Language Programming
;
; *************************************************************
; HW3.s Third assembly homework assignment (Reverseing a 16bit number)
; *************************************************************
;
;
; Variable Declarations
;=====================
.bss
; Reserve one byte (8 bits) for each BYTE variable with ``.space`` directive.
byte0:   .space 1
byte1:   .space 1
; Reserve 2 bytes (16 bits) for each WORD variable with ``.space`` directive.
word0:   .space 2
word1:   .space 2

; Assembly Code
; =============
.text
.global __reset
__reset:

mov #0x1122, W0
mov WREG, 0x1000
mov WREG, 0x1002
    
; Rotate 14 times
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002
rrnc 0x1002

done:
goto     done    ;Place holder for last line of executed code




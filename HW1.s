; San Jose State University
; College of Engineering
; Computer Engineering Department
; CMPE102 - Assembly Language Programming
; 
; *************************************************************
; HW1.s - First assembly homework assignment (Moving in Register)
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

  ;; Initialize to addresses 0x1000-0x1003
  mov #1, W0
  mov #0x1000, W1
  mov.b W0, [W1]
  mov #2, W0
  mov #0x1001, W2
  mov.b W0, [W2]
  mov #3, W0
  mov #0x1002, W3
  mov.b W0, [W3]
  mov #4, W0
  mov #0x1003, W4
  mov.b W0, [W4]
  
  ;;Move to addresses 0x1100-0x1103
  mov #0x1100, W0
  mov.b [W1], [W0]
  mov #0x1101, W0
  mov.b [W2], [W0]
  mov #0x1102, W0
  mov.b [W3], [W0]
  mov #0x1103, W0
  mov.b [W4], [W0]
  
  

done:
  goto     done    ;Place holder for last line of executed code

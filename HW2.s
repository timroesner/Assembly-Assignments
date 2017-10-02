; San Jose State University
; College of Engineering
; Computer Engineering Department
; CMPE102 - Assembly Language Programming
;
; *************************************************************
; HW2.s Second assembly homework assignment (Adding two Matricies, the long way)
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

;; Initialize Matrix A
;; First row
mov #2, W0
mov.b WREG, 0x1100
mov #4, W0
mov.b WREG, 0x1101
mov #6, W0
mov.b WREG, 0x1102
mov #8, W0
mov.b WREG, 0x1103
mov #10, W0
mov.b WREG, 0x1104
mov #12, W0
mov.b WREG, 0x1105

;; Second row
mov #14, W0
mov.b WREG, 0x1110
mov #16, W0
mov.b WREG, 0x1111
mov #18, W0
mov.b WREG, 0x1112
mov #20, W0
mov.b WREG, 0x1113
mov #22, W0
mov.b WREG, 0x1114
mov #24, W0
mov.b WREG, 0x1115

;; Third row
mov #26, W0
mov.b WREG, 0x1120
mov #28, W0
mov.b WREG, 0x1121
mov #30, W0
mov.b WREG, 0x1122
mov #32, W0
mov.b WREG, 0x1123
mov #34, W0
mov.b WREG, 0x1124
mov #36, W0
mov.b WREG, 0x1125

;; Fourth row
mov #38, W0
mov.b WREG, 0x1130
mov #40, W0
mov.b WREG, 0x1131
mov #42, W0
mov.b WREG, 0x1132
mov #44, W0
mov.b WREG, 0x1133
mov #46, W0
mov.b WREG, 0x1134
mov #48, W0
mov.b WREG, 0x1135

;;Initialize Matrix B
;; First row
mov #1, W0
mov.b WREG, 0x1200
mov #3, W0
mov.b WREG, 0x1201
mov #5, W0
mov.b WREG, 0x1202
mov #7, W0
mov.b WREG, 0x1203
mov #9, W0
mov.b WREG, 0x1204
mov #11, W0
mov.b WREG, 0x1205

;; Second row
mov #13, W0
mov.b WREG, 0x1210
mov #15, W0
mov.b WREG, 0x1211
mov #17, W0
mov.b WREG, 0x1212
mov #19, W0
mov.b WREG, 0x1213
mov #21, W0
mov.b WREG, 0x1214
mov #23, W0
mov.b WREG, 0x1215

;; Third row
mov #25, W0
mov.b WREG, 0x1220
mov #27, W0
mov.b WREG, 0x1221
mov #29, W0
mov.b WREG, 0x1222
mov #31, W0
mov.b WREG, 0x1223
mov #33, W0
mov.b WREG, 0x1224
mov #35, W0
mov.b WREG, 0x1225

;; Fourth row
mov #37, W0
mov.b WREG, 0x1230
mov #39, W0
mov.b WREG, 0x1231
mov #41, W0
mov.b WREG, 0x1232
mov #43, W0
mov.b WREG, 0x1233
mov #45, W0
mov.b WREG, 0x1234
mov #47, W0
mov.b WREG, 0x1235

;;Initialize Matrix C
;; First row
mov #0, W0
mov.b WREG, 0x1300
mov.b WREG, 0x1301    
mov.b WREG, 0x1302
mov.b WREG, 0x1303 
mov.b WREG, 0x1304    
mov.b WREG, 0x1305    
mov.b WREG, 0x1310
mov.b WREG, 0x1311    
mov.b WREG, 0x1312
mov.b WREG, 0x1313 
mov.b WREG, 0x1314    
mov.b WREG, 0x1315 
mov.b WREG, 0x1320
mov.b WREG, 0x1321    
mov.b WREG, 0x1322
mov.b WREG, 0x1323 
mov.b WREG, 0x1324    
mov.b WREG, 0x1325 
mov.b WREG, 0x1330
mov.b WREG, 0x1331    
mov.b WREG, 0x1332
mov.b WREG, 0x1333 
mov.b WREG, 0x1334    
mov.b WREG, 0x1335 
    
;;Compute A+B store result in C
;; First row
mov.b 0x1100,WREG
add.b 0x1200,WREG
mov.b WREG, 0x1300
mov.b 0x1101,WREG
add.b 0x1201,WREG
mov.b WREG, 0x1301
mov.b 0x1102,WREG
add.b 0x1202,WREG
mov.b WREG, 0x1302
mov.b 0x1103,WREG
add.b 0x1203,WREG
mov.b WREG, 0x1303
mov.b 0x1104,WREG
add.b 0x1204,WREG
mov.b WREG, 0x1304
mov.b 0x1105,WREG
add.b 0x1205,WREG
mov.b WREG, 0x1305
mov.b 0x1110,WREG
add.b 0x1210,WREG
mov.b WREG, 0x1310
mov.b 0x1111,WREG
add.b 0x1211,WREG
mov.b WREG, 0x1311
mov.b 0x1112,WREG
add.b 0x1212,WREG
mov.b WREG, 0x1312
mov.b 0x1113,WREG
add.b 0x1213,WREG
mov.b WREG, 0x1313
mov.b 0x1114,WREG
add.b 0x1214,WREG
mov.b WREG, 0x1314
mov.b 0x1115,WREG
add.b 0x1215,WREG
mov.b WREG, 0x1315
mov.b 0x1120,WREG
add.b 0x1220,WREG
mov.b WREG, 0x1320
mov.b 0x1121,WREG
add.b 0x1221,WREG
mov.b WREG, 0x1321
mov.b 0x1122,WREG
add.b 0x1222,WREG
mov.b WREG, 0x1322
mov.b 0x1123,WREG
add.b 0x1223,WREG
mov.b WREG, 0x1323
mov.b 0x1124,WREG
add.b 0x1224,WREG
mov.b WREG, 0x1324
mov.b 0x1125,WREG
add.b 0x1225,WREG
mov.b WREG, 0x1325
mov.b 0x1130,WREG
add.b 0x1230,WREG
mov.b WREG, 0x1330
mov.b 0x1131,WREG
add.b 0x1231,WREG
mov.b WREG, 0x1331
mov.b 0x1132,WREG
add.b 0x1232,WREG
mov.b WREG, 0x1332
mov.b 0x1133,WREG
add.b 0x1233,WREG
mov.b WREG, 0x1333
mov.b 0x1134,WREG
add.b 0x1234,WREG
mov.b WREG, 0x1334
mov.b 0x1135,WREG
add.b 0x1235,WREG
mov.b WREG, 0x1335

done:
goto     done    ;Place holder for last line of executed code




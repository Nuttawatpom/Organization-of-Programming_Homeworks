;630510619

.MODEL SMALL
.STACK 100H
.DATA
MSG	DB	'ENTER THREE INTIALS: $'
.CODE
MAIN PROC
    MOV	AX, @DATA
	MOV	DS, AX		; intialize DS
    LEA	DX, MSG
    MOV	AH,9		; display string function
	INT	21H

    MOV AH,1
    INT 21H
    MOV BL,AL;1
    INT 21H
    MOV CL,AL;2
    INT 21H
    MOV CH,AL;3

    ;Go New Line
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    ;display
    MOV DL,BL;First
    INT 21H

    ;Go New Line
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV DL,CL; Second
    INT 21H

    ;Go New Line
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H

    MOV DL,CH; Third
    INT 21H

    ;EXIT And Show Result this DOS
    MOV AH,4CH
    INT 21H
MAIN ENDP
    END MAIN

    ;AH AL DL
    
ORG 0000H
START:
    SETB P3.3
    SETB P3.4
    MOV P1, #10100100B
    CALL DELAY
    CLR P3.3
    MOV P1, #10110000B
    CALL DELAY
    CLR P3.4
    SETB P3.3
    MOV P1, #10011001B
    CALL DELAY
    CLR P3.3
    MOV P1, #10010010B
    CALL DELAY
    SETB P3.3
    SETB P3.4
    MOV P1, #10000010B
    CALL DELAY
    CLR P3.3
    MOV P1, #11111000B
    CALL DELAY
    CLR P3.4
    SETB P3.3
    MOV P1, #10000000B
    CALL DELAY
    CLR P3.3
    MOV P1, #10011000B
    CALL DELAY
    JMP START
DELAY: MOV R0, #45H
    DJNZ R0, $
    RET
END
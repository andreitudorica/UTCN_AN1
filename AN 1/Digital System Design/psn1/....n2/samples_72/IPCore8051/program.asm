$MOD51

;KEYBOARD
ACKA	BIT	P3.5		;Interrupt acknowledge.

;DISPLAY
CTR	BIT	P3.4		;0/1 - Data/Control registers.
nCS	BIT	P2.6		;Chip select of dispaly.
	
;EXTERNAL MEMORY ADDRESS
LA	EQU	08H		;Low byte.


	ORG	0000H
	LJMP	START

	ORG	0003H		; External interrupt 0 vector
	LJMP	KEY		; Keyboard interrupt.

	ORG	000BH		; Timer 0 overflow vector
	RETI			; Undefined	       

	ORG	0013H		; External interrupt 1 vector
	LJMP	PSR		; Parallel - serial register interrupt

	ORG	001BH		; Timer 1 overflow vector
	RETI			; Undefined

	ORG	0023H		; Serial I/O interrupt vector
	LJMP	PORTS		; Read character from serial port


	;TABLE OF STRINGS
HELLO:	DB	'**** HELLO **** '	
	DB	10H
ACTIVE:	DB	'  IP Core 8051  '
	DB	10H
PRESS:	DB	' PRESS ANY KEY  '
	DB	10H
KEY_0:	DB	' KEY  NUMBER 0  '
	DB	10H
KEY_1:	DB	' KEY  NUMBER 1  '
	DB	10H
KEY_2:	DB	' KEY  NUMBER 2  '
	DB	10H
KEY_3:	DB	' KEY  NUMBER 3  '
	DB	10H
KEY_4:	DB	' KEY  NUMBER 4  '
	DB	10H
KEY_5:	DB	' KEY  NUMBER 5  '
	DB	10H
KEY_6:	DB	' KEY  NUMBER 6  '
	DB	10H
KEY_7:	DB	' KEY  NUMBER 7  '
	DB	10H
KEY_8:	DB	' KEY  NUMBER 8  '
	DB	10H
KEY_9:	DB	' KEY  NUMBER 9  '
	DB	10H

	;KEY TABLE
K_TAB:
	DB	KEY_0
	DB	KEY_1
	DB	KEY_2
	DB	KEY_3
	DB	KEY_4
	DB	KEY_5
	DB	KEY_6
	DB	KEY_7
	DB	KEY_8
	DB	KEY_9




START:  MOV	SP,#60H		;Load Stack Pointer
	MOV	LA,#00H		;Low byte of memory address.

	CLR	nCS
	SETB	CTR
	MOV	A,#01H
	MOVX	@R0,A		;Clear display.
	SETB	nCS

	MOV	DPTR,#HELLO
	LCALL	UPPER
	MOV	DPTR,#ACTIVE	
	LCALL 	LOWER		;Display prompt.

	MOV	SCON,#00H	;Serial Port mode 0.
	MOV	TCON,#05H	;External interrupts edge triggered.			
	MOV	IP,#10H		;Serial port interrupt - high priority.
	
	MOV	IE,#95H		;Enable serial port and external interrupts.

	MOV	DPTR,#PRESS	
	LCALL	UPPER		;Display PRESS ANY KEY

LOOP:	SJMP	LOOP






	;INTERRUPT SERVICE ROUTINE.
	;INTERRUPT GENERATED BY PARALLEL - SERIAL REGISTER.

PSR:	SETB 	REN		;Run serial port.
	RETI

	;INTERRUPT SERVICE ROUTINE.
	;INTERRUPT GENERAYED BY SERIAL PORT.

PORTS:	PUSH 	ACC
	PUSH 	DPL
	PUSH 	DPH
	PUSH	PSW
	
	MOV	DPH,#7FH
	MOV	DPL,LA
	MOV	A,SBUF		;Read byte from buffer of serial port.
	MOVX	@DPTR,A		;Put it into external memory.
	INC	DPL		;Inc address.
	MOV	LA,DPL		;Save address.
	
	MOV	SCON,#00H	;Clear all flags.

	POP	PSW
	POP	DPH
	POP	DPL
	POP	ACC	
	RETI

	;INTERRUPT SERVICE ROUTINE.
	;INTERRUPT GENERATED BY KEYBOARD.

KEY:	PUSH	ACC
	PUSH	DPL
	PUSH	DPH
	PUSH	00H
	PUSH	PSW

	MOV	A,P1		;Read key code.
	ANL	A,#0FH
	MOV	DPTR,#K_TAB	
	MOVC	A,@A+DPTR	;Read address of string appropriate to code of key.
	MOV	DPL,A
	MOV	DPH,#00H

	LCALL	LOWER		;Display string.
	

	CLR	ACKA
	SETB	ACKA		;Acknowlege interrupt.

	POP	PSW
	POP	00H
	POP	DPH
	POP	DPL
	POP	ACC
	RETI


	;DISPLAY UPPER ROW.	
	;DPTR - ADDRESS OF STRING
	;ACC - changed by this subroutine.

UPPER:	PUSH	00H
	MOV	R0,#00H		;Upper row.
	CLR	nCS		;Chip select of display.
	CLR	CTR		;Data registers of display
	
U_LOOP:	MOV	A,#00H
	MOVC	A,@A+DPTR
	XRL	A,#10H
	JZ	END_U		;End of string.

	MOV 	A,#00H
	MOVC	A,@A+DPTR

	MOVX	@R0,A		;Write character to display memory.	

	INC	DPTR
	INC	R0
	MOV	A,R0
	XRL	A,#10H
	JZ	END_U		;Overflow.
	SJMP	U_LOOP

END_U: 	SETB	CTR
	MOV	A,#02H
	MOVX	@R0,A		;Print buffer.
	SETB	nCS
	POP	00H
	RET
	

	;DISPLAY LOWER ROW.	
	;DPTR - ADDRESS OF STRING
	;ACC - changed by this subroutine.

LOWER:	PUSH	00H
	MOV	R0,#10H		;Lower row.
	CLR	nCS		;Chip select of display.
	CLR	CTR		;Data registers of display
	
L_LOOP:	MOV	A,#00H
	MOVC	A,@A+DPTR
	XRL	A,#10H
	JZ	END_L		;End of string.

	MOV 	A,#00H
	MOVC	A,@A+DPTR

	MOVX	@R0,A		;Write character to display memory.	

	INC	DPTR
	INC	R0
	MOV	A,R0
	XRL	A,#20H
	JZ	END_L		;Overflow.
	SJMP	L_LOOP

END_L: 	SETB	CTR
	MOV	A,#02H
	MOVX	@R0,A		;Print buffer.
	SETB	nCS	
	POP	00H
	RET




end
	 						
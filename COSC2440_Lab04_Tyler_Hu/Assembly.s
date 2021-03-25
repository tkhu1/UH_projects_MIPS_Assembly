	AREA Lab_04_Tyler_Hu, CODE, READONLY
	EXPORT __main
		
__main

	MOV R1, #-6
	MOV R2, #-18
	
	MOVS R3, R1
	RSBLT R3, R1, #0
	
	MOVS R4, R2
	RSBLT R4, R2, #0
	
	CMP R3, R4
	BGT goToElse
	
	MOV R5, #0
	MOV R6, R3

loopSummation
	CMP R6, R4
	
	ADD R7, R3, R4
	ADD R7, R7, #50
	SUB R7, R7, R6
	SUB R7, R7, R6
	
	ADD R5, R5, R7
	
	ADDLE R6, R6, #1
	BLT loopSummation
	
goToElse
	
stop B stop

	END
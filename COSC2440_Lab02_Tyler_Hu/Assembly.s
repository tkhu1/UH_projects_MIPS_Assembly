	AREA Lab_02_Tyler_Hu, CODE, READONLY
	EXPORT __main
		
__main
	
	MOV R0, #1
	MOV R1, #2
	
	ADD R2, R1, R1
	
	SUB R3, R2, R0
	
	ADD R4, R1, #4
	
	ADD R6, R0, R1
	ADD R6, R6, R2
	ADD R6, R6, R3
	ADD R6, R6, R4
	
	RSB R5, R6, #20

	END
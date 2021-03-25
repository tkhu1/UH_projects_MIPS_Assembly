	AREA Lab_06_Tyler_Hu, CODE, READONLY
	EXPORT __main
__main
	;MOV R0, SP ; Replace ___ with base register.
	MOV R1, #2 ; R1 will be used to increment the loop.
	MOV R2, #4; R2 will represent the number of iterations.
	MOV R3, #0 ; R3 will be used to hold the sum of the array.
	
	div R3, R2, R1

	END
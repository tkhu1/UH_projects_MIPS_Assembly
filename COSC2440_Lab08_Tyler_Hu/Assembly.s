	AREA Lab_08_Tyler_Hu, CODE, READONLY
	EXPORT __main
		
__main

	LDR	R0,	=0x7E0C0A2B ;assigns large value to R0.
	MOV R1, #0 ;holds solution
	
loop
	CMP R0, #0
	BEQ exitLoop ;exits loop if R0 is 0
	CLZ R2, R0   ;counts leading zeros and puts in R2
	ADD R2, #1   ;number of leading zeros + 1
	ADD R1, #1   ;adds loop iteration counter to solution
	LSL R0, R2   ;shifts R0
	BNE loop

exitLoop

stop B stop

	END
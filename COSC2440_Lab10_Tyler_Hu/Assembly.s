	AREA Lab_10_Tyler_Hu, CODE, READONLY
	EXPORT __main
		
__main

	LDR R0, =0x2345ABCD ;assigns large value to R0.
	MOV R1, #0
	
loop
	LSRS R0, R0, #1
	ADC R1, R1, #0
	
	BNE loop

stop B stop

	END
	AREA Lab_03_Tyler_Hu, CODE, READONLY
	EXPORT __main
		
__main

	MOV R0, #5
	MOV R1, #10
	
loopWithCMP
	CMP R0, #10
	ADDLE R0, R0, #1
	BLE loopWithCMP
	
loopNoCMP
	SUBS R1, R1, #1
	BGT loopNoCMP
	
	CMP R0, #0
	BLT goToElse
	MOV R0, #10
	MOV R1, #10
	B goToConditionInstructions
	
goToElse
	MOV R0, #20
	MOV R1, #30
	
goToConditionInstructions
	MOV R2, R0
	MOV R3, R1
	CMP R2, #10
	MOVEQ R2, #5
	MOVEQ R3, #6
	MOVNE R2, #2
	MOVNE R3, #3
	
stop B stop

	END
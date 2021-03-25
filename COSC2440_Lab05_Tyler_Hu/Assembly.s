	AREA Lab_05_Tyler_Hu, CODE, READONLY
	EXPORT __main
		
__main

	MOV R0, SP  ;R0 holds base ptr
	MOV R1, #1  ;loop incrementer
	MOV R2, #16 ;loop max iteration
	MOV R3, #0  ;holds sum of array values
	
storeValuesLoop
	STR R1, [R0], #4 ;stores R1 into array via auto increment
	ADD R1, #1
	CMP R1, R2
	BLE storeValuesLoop ;loops if R1 <= R2
	
	MOV R1, #8        ;resets R1 to start from the middle 
	MOV R0, SP        ;resets base ptr
	STR R5, [R0], #28 ;moves ptr to element 7 in array
	
readValuesLoop
	LDR R4, [R0], #4 ;loads array value into R4 via auto increment
	ADD R3, R4       ;adds the value in [R4] to the sum [R3]
	ADD R1, #1
	CMP R1, R2
	BLE readValuesLoop ;loops if R1 <= R2
	
stop B stop	

	END
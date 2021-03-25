; Write Your Macro Here
	MACRO
	
$GetArrSumAvg ArrCalc $resultSum, $resultAvg, $inputPtr, $inputSize
$GetArrSumAvg
	
	LDR R0, $inputPtr  
	LDR R1, $inputSize
	LDR R4, $inputSize ;copies array size to R4 for temp use
	
	MOV R2, #0 ;resets temp registers
	MOV R3, #0
	
$GetArrSumAvg.loop
	CMP R1, #0              ;if input size = 0, exit loop
	BEQ $GetArrSumAvg.stop
	LDR R2, [R0], #4        ;loads value from array into R2
	ADD $resultSum, R2      ;adds values to sum result register
	ADD R3, R2              ;adds values to temp avg register
	SUB R1, R1, #1          ;decrements array size for exit cond.
	
	BNE $GetArrSumAvg.loop
	
$GetArrSumAvg.stop	
	SDIV $resultAvg, R3, R4 ;divides to find avg

	MEND

	AREA Lab_12_Tyler_Hu, CODE, READONLY
	EXPORT __main
		
Array_1 		DCD 3, -7, 2, -3, 10
Array_1_Size 	DCD 5
Array_1_Pointer DCD Array_1
	
Array_2 		DCD -8, -43, -3
Array_2_Size 	DCD 3
Array_2_Pointer DCD Array_2
	
Array_3 		DCD 9, 34, 2, 6, 2, 8, 2
Array_3_Size 	DCD 7
Array_3_Pointer DCD Array_3
	
__main

Arr1_SumAvg ArrCalc R5, R6, Array_1_Pointer, Array_1_Size
Arr2_SumAvg ArrCalc R7, R8, Array_2_Pointer, Array_2_Size
Arr3_SumAvg ArrCalc R9, R10, Array_3_Pointer, Array_3_Size

stop B stop
	END
; Your First Macro.
	MACRO
	
$Count1s_a Count1s_Lab08 $result, $input2, $input1
$Count1s_a

$Count1s_a.loop
	CMP $input1, #0
	BEQ $Count1s_a.stop
	CLZ $input2, $input1
	ADD $input2, #1
	ADD $result, #1
	LSL $input1, $input2
	
	BNE $Count1s_a.loop
	
$Count1s_a.stop	

	MEND
	
; Your Second macro.
	MACRO
	
$Count1s_b Count1s_Lab10 $result, $input1
$Count1s_b

$Count1s_b.loop
	LSRS $input1, #1
	ADC $result, #0
	BNE $Count1s_b.loop

	MEND
	
	
	AREA Lab_11_Tyler_Hu, CODE, READONLY
	EXPORT __main
__main

							LDR R1, =0x2345ABCD
							LDR R2, =0x2345ABCD
Case_1_Lab_08 Count1s_Lab08 R4, R3, R1
Case_1_Lab_10 Count1s_Lab10 R5, R2

							LDR R1, =0x0
							LDR R2, =0x0
Case_2_Lab_08 Count1s_Lab08 R6, R3, R1
Case_2_Lab_10 Count1s_Lab10 R7, R2

							LDR R1, =0xFFFFFFFF
							LDR R2, =0xFFFFFFFF
Case_3_Lab_08 Count1s_Lab08 R8, R3, R1
Case_3_Lab_10 Count1s_Lab10 R9, R2

stop B stop

	END
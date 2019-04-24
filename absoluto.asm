//calcular o valor absoluto é o proprio numero ou numero*-1 (é preciso negativá-lo n vezes)

	@1
	M = 0 //R1=0
	@2
	M = 0 //R2=0
	@i 
	M = 1 //i=1
	@0
	D=M //D=M[0]
	@LOOP
	D;JGE //if (R0 >= 0) goto LOOP
	@NEGATIVELOOP
	0;JMP //else goto NEGATIVELOOP
(LOOP)
	@2
	M=D //R2 = R0
	@END 
	0;JMP
(NEGATIVELOOP)
	@1
	D=M-1 //D=R1-1 -> -1
	M=D //R1 = -1 
	@2
	M=D //R2 = R1 -> -1
	//criterio de parada => i + R2 = 0
	@i
	D=M //D=i
	@2
	D=D+M //i + R2 
	@END	
	D;JEQ //if (i + R@) = 0 then goto END  
	@NEGATIVELOOP
	0;JMP //else goto NEGATIVELOOP
 	 	
(END)
	@END
	0;JMP 

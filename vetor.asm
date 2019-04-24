	@2
	M=0
	@sum
	M=0
	@0
	D=M //d=R0 d=137
(LOOP)	
	@2
	M=D+1 //proxima posicao do vetor D = 2 
	A=D //a = 137
	D=M //D = 1
	@sum
	M=M+D //soma do primeiro elemento	
	@1
	M=M-1 //tamanho do vetor - 1 = 0 para ir pro end
	D=M
	@END 
	D;JEQ
	@2
	D=M //faz D apontar para a proxima posicao
	@LOOP
	0;JMP
(END)
	@END
	0;JMP

	@2
	M=0
	@3
	M=0 //resultado
	@i
	M=0 //elemento corrente 
	@0
	D=M
(LOOP)	
	@2
	M=D+1 //R2 eh o proximo elemento 

	A=D //a eh igual o conteudo de D (pular para o inicio do array)
	D=M //D eh igual o conteudo do primeiro elemento
	@i
	M=D //i == D

	@2
	D = D-M //primeiro elemento - segundo elemento < 0
	@STORE
	D;JLT
	
	@1
	M=M-1
	D=M
	@END
	D;JMP
	@2
	D=M
	@LOOP
	0;JMP
(STORE)
	@i
	D=M
	@3
	M=D
	@LOOP
	0;JMP
(END)
	@END
	0;JMP	
	
	

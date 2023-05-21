//add
@SP
A=M
A=A-1
D=M
A=A-1
M=M+D
@SP
M=M-1


//sub
@SP
A=M
A=A-1
D=M
A=A-1
M=M-D
@SP
M=M-1


//eq
@SP
A=M
A=A-1
D=M
A=A-1
D=M-D
@TRUE1
D;JEQ
@SP
A=M
A=A-1
A=A-1
M=0
@ENDCMP1
0;JMP
(TRUE1)
@SP
A=M
A=A-1
A=A-1
M=-1
(ENDCMP1)

//gt
@SP
A=M
A=A-1
D=M
A=A-1
D=M-D
@TRUE1
D;JGT
@SP
A=M
A=A-1
A=A-1
M=0
@ENDCMP1
0;JMP
(TRUE1)
@SP
A=M
A=A-1
A=A-1
M=-1
(ENDCMP1)


//lt
@SP
A=M
A=A-1
D=M
A=A-1
D=M-D
@TRUE1
D;JLT
@SP
A=M
A=A-1
A=A-1
M=0
@ENDCMP1
0;JMP
(TRUE1)
@SP
A=M
A=A-1
A=A-1
M=-1
(ENDCMP1)


//and
@SP
A=M
A=A-1
D=M
A=A-1
M=D&M
@SP
M=M-1

//or
@SP
A=M
A=A-1
D=M
A=A-1
M=D||M
@SP
M=M-1

//not
@SP
A=M
A=A-1
M=!M


//neg
@SP
A=M
A=A-1
M=-M

//push
@SEG
D=A
@index
A=A+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop
@SEG
D=A
@index
A=A+D
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

//constant push
@index
D=A
@SP
A=M
M=D
@SP
M=M+1


//static push
@filename.index
D=M
@SP
A=M
M=D
@SP
M=M+1

//static pop
@SP
M=M-1
A=M
D=M
@filename.index
M=D
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
A=A-1
M=-M
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP 
A=M
A=A-1
D=M
A=A-1
M=M-D
@SP
M=M-1
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
A=A-1
D=M
@R14
M=D
@SP
A=M
A=A-1
A=A-1
D=M
@R13
M=D
@X_POS0.T3
D;JGE
@X_NEG0.T3
0;JMP
(X_POS0.T3)
@R14
D=M
@EQ_SIGN0.T3
D;JGE
@X_POS_Y_NEG0.T3
0;JMP
(X_NEG0.T3)
@R14
D=M
@X_NEG_Y_POS0.T3
D;JGE
@EQ_SIGN0.T3
0;JMP
(X_POS_Y_NEG0.T3)
@SP
M=M-1
A=M
A=A-1
M=0
@ENDCMP0.T3
0;JMP
(X_NEG_Y_POS0.T3)
@SP
M=M-1
A=M
A=A-1
M=-1
@ENDCMP0.T3
0;JMP
(EQ_SIGN0.T3)
@R14
D=M
@R13
D=M-D
@TRUE0.T3
D;JLT
@SP
M=M-1
A=M
A=A-1
M=0
@ENDCMP0.T3
0;JMP
(TRUE0.T3)
@SP
M=M-1
A=M
A=A-1
M=-1
(ENDCMP0.T3)
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
A=A-1
M=-M
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP 
A=M
A=A-1
D=M
A=A-1
M=M-D
@SP
M=M-1
@SP
A=M
A=A-1
D=M
@R14
M=D
@SP
A=M
A=A-1
A=A-1
D=M
@R13
M=D
@X_POS1.T3
D;JGE
@X_NEG1.T3
0;JMP
(X_POS1.T3)
@R14
D=M
@EQ_SIGN1.T3
D;JGE
@X_POS_Y_NEG1.T3
0;JMP
(X_NEG1.T3)
@R14
D=M
@X_NEG_Y_POS1.T3
D;JGE
@EQ_SIGN1.T3
0;JMP
(X_POS_Y_NEG1.T3)
@SP
M=M-1
A=M
A=A-1
M=-1
@ENDCMP1.T3
0;JMP
(X_NEG_Y_POS1.T3)
@SP
M=M-1
A=M
A=A-1
M=0
@ENDCMP1.T3
0;JMP
(EQ_SIGN1.T3)
@R14
D=M
@R13
D=M-D
@TRUE1.T3
D;JGT
@SP
M=M-1
A=M
A=A-1
M=0
@ENDCMP1.T3
0;JMP
(TRUE1.T3)
@SP
M=M-1
A=M
A=A-1
M=-1
(ENDCMP1.T3)
@20000
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
A=A-1
M=-M
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP 
A=M
A=A-1
D=M
A=A-1
M=M-D
@SP
M=M-1
@30000
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
A=A-1
D=M
@R14
M=D
@SP
A=M
A=A-1
A=A-1
D=M
@R13
M=D
@X_POS2.T3
D;JGE
@X_NEG2.T3
0;JMP
(X_POS2.T3)
@R14
D=M
@EQ_SIGN2.T3
D;JGE
@X_POS_Y_NEG2.T3
0;JMP
(X_NEG2.T3)
@R14
D=M
@X_NEG_Y_POS2.T3
D;JGE
@EQ_SIGN2.T3
0;JMP
(X_POS_Y_NEG2.T3)
@SP
M=M-1
A=M
A=A-1
M=-1
@ENDCMP2.T3
0;JMP
(X_NEG_Y_POS2.T3)
@SP
M=M-1
A=M
A=A-1
M=0
@ENDCMP2.T3
0;JMP
(EQ_SIGN2.T3)
@R14
D=M
@R13
D=M-D
@TRUE2.T3
D;JGT
@SP
M=M-1
A=M
A=A-1
M=0
@ENDCMP2.T3
0;JMP
(TRUE2.T3)
@SP
M=M-1
A=M
A=A-1
M=-1
(ENDCMP2.T3)
@20000
D=A
@SP
A=M
M=D
@SP
M=M+1
@30000
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
A=A-1
M=-M
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP 
A=M
A=A-1
D=M
A=A-1
M=M-D
@SP
M=M-1
@SP
A=M
A=A-1
D=M
@R14
M=D
@SP
A=M
A=A-1
A=A-1
D=M
@R13
M=D
@X_POS3.T3
D;JGE
@X_NEG3.T3
0;JMP
(X_POS3.T3)
@R14
D=M
@EQ_SIGN3.T3
D;JGE
@X_POS_Y_NEG3.T3
0;JMP
(X_NEG3.T3)
@R14
D=M
@X_NEG_Y_POS3.T3
D;JGE
@EQ_SIGN3.T3
0;JMP
(X_POS_Y_NEG3.T3)
@SP
M=M-1
A=M
A=A-1
M=-1
@ENDCMP3.T3
0;JMP
(X_NEG_Y_POS3.T3)
@SP
M=M-1
A=M
A=A-1
M=0
@ENDCMP3.T3
0;JMP
(EQ_SIGN3.T3)
@R14
D=M
@R13
D=M-D
@TRUE3.T3
D;JGT
@SP
M=M-1
A=M
A=A-1
M=0
@ENDCMP3.T3
0;JMP
(TRUE3.T3)
@SP
M=M-1
A=M
A=A-1
M=-1
(ENDCMP3.T3)

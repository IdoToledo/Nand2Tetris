"@SP\n" +
"M=M-1\n" +
"A=M\n" +
"D=M\n" +
"@R14\n" +
"M=D\n" +
"@SP\n" +
"M=M-1\n" +
"A=M\n" +
"D=M\n" +
"@R13\n" +
"M=D\n" +
"@X_POSi\n" +
"D;JGE\n" +
"@X_NEGi\n" +
"0;JMP\n" +

"(X_POSi)\n" +
"@R14\n" +
"D=M\n" +
"@EQ_SIGNi\n" +
"D;JGE\n" +
"@X_POS_Y_NEGi\n" +
"0;JMP\n" +

(X_NEGi)
@R14
D=M
@X_NEG_Y_POSi
D;JGE
@EQ_SIGNi
0;JMP


"(X_POS_Y_NEGi)\n" + 
"@SP\n" + 
"A=M\n" + 
"M= val\n" + 
"@SP\n" + 
"M=M+1\n" + 
"@ENDCMPi\n" + 
"0;JMP\n" + 

"(X_NEG_Y_POSi)\n" + 
"@SP\n" + 
"A=M\n" + 
"M= val\n" + 
"@SP\n" + 
"M=M+1\n" + 
"@ENDCMPi\n" + 
"0;JMP\n"

"(EQ_SIGNi)\n" +
"@R14\n" +
"D=M\n" +
"@R13\n" +
"D=M-D\n" +
"@TRUEi\n" +
"D;jump_comm \n" +
"@SP\n" +
"A=M\n" +
"A=A-1\n" +
"M=0\n" +
"@ENDCMPi\n" +
"0;JMP\n" +
"(TRUEi)\n" +
"@SP\n" +
"A=M\n" +
"A=A-1\n" +
"M=-1\n" +
"(ENDCMPi)\n"


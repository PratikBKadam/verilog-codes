module fullhalfadder(A,B,S,cin,cout);
input [3:0] A,B;
output [3:0] S;
output cout;
input cin;
wire [2:0] C;
ha u1(A[0],B[0],cin,S[0],C[0]);
ha u2(A[1],B[1],C[0],S[1],C[1]);
ha u3(A[2],B[2],C[1],S[2],C[2]);
ha u4(A[3],B[3],C[2],S[3],cout);
endmodule

module mux(X,S,y);
input [3:0] X;
input [1:0] S;
output y;
assign y=S[1]?(S[0]?X[3]:X[2]):(S[0]?X[1]:X[0]);
endmodule

module muxbool(a,b,X,S,y);
input [3:0] X;
input [1:0]S;
input a,b;
output y;
assign y=(~a&~b&X[0])|(~a&b&X[1])|(a&~b&X[2])|(a&b&X[3]);
endmodule

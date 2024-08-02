module muxstruct(in,sel,y);
	input [0:3] in;
	input [1:0]sel;
	output y;
	wire [0:1]t;
	
	Mux2_1 u1(in[0],in[1],sel[0],t[0]);
	Mux2_1 u2(in[2],in[3],sel[0],t[1]);
	Mux2_1 u3(t[0],t[1],sel[1],y);
	
endmodule

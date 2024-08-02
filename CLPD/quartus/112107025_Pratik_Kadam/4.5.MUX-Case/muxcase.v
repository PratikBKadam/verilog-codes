module muxcase(X,S,y);
input [1:0]S;
input [3:0]X;
output reg y;
always @(S,X)
begin
case(S)
2'b00:y=X[0];
2'b01:y=X[1];
2'b10:y=X[2];
2'b11:y=X[3];
endcase
end
endmodule

module muxif(S,X,y);
input [3:0]X;
input [1:0]S;
output reg y;
always @(S,X)
begin
if(S[1])
begin
if(S[0]) y=X[3];
else y=X[2];
end
else
begin
if(S[0]) y=X[1];
else y=X[0];
end
end
endmodule


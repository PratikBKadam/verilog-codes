module priority( en,D,a,b,valid);
input en;
input [3:0]D;
output reg a,b,valid;
always @(en,D)
begin
casex({en,D})
5'b1xxxx:
begin
valid=0;
a=0;
b=0;
end
5'b01xxx:
begin
valid=1;
a=1;
b=1;
end
5'b001xx:
begin
valid=1;
a=1;
b=0;
end
5'b0001x:
begin
valid=1;
a=0;
b=1;
end
5'b00001:
begin
valid=1;
a=0;
b=0;
end
5'b00000:
begin
valid=0;
a=0;
b=0;
end
default:valid=0;
endcase
end
endmodule

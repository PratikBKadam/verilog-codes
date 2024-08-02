module alu1(sel,a,b,y);
input [2:0] sel,a,b; 
output reg [2:0]y;
always @(sel,a,b)
begin
case(sel)
3'b000:y=a&b;
3'b001:y=a|b;
3'b010:y=~(a&b);
3'b011:y=a+b;
3'b100:y=a^b;
default:y=0;
endcase
end
endmodule

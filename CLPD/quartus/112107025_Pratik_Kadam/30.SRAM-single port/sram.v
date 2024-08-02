module sram(din,addr,clk,ce,wre,out);
input [7:0] din;
input wre,clk,ce;
input [4:0] addr;
reg [7:0] regi [31:0];
output [7:0]out;
always @(posedge clk or negedge ce)
begin
if(!ce)
begin
regi[32]=8'b00000000;
regi[31]=8'b00000000;
regi[30]=8'b00000000;
regi[29]=8'b00000000;
regi[28]=8'b00000000;
regi[27]=8'b00000000;
regi[26]=8'b00000000;
regi[25]=8'b00000000;
regi[24]=8'b00000000;
regi[23]=8'b00000000;
regi[22]=8'b00000000;
regi[21]=8'b00000000;
regi[20]=8'b00000000;
regi[19]=8'b00000000;
regi[18]=8'b00000000;
regi[17]=8'b00000000;
regi[16]=8'b00000000;
regi[15]=8'b00000000;
regi[14]=8'b00000000;
regi[13]=8'b00000000;
regi[12]=8'b00000000;
regi[11]=8'b00000000;
regi[10]=8'b00000000;
regi[9]=8'b00000000;
regi[8]=8'b00000000;
regi[7]=8'b00000000;
regi[6]=8'b00000000;
regi[5]=8'b00000000;
regi[4]=8'b00000000;
regi[3]=8'b00000000;
regi[2]=8'b00000000;
regi[1]=8'b00000000;
regi[0]=8'b00000000;
end
else
begin
if(wre) regi[addr]=din;
else regi [addr]=regi[addr];
end
end
assign out=regi[addr];
endmodule

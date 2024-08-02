module Data_path(data_in,rst,clk,lda,ldb,ldc,data_out);
input [7:0]data_in;
input clk,rst,lda,ldb,ldc;
output [7:0]data_out;
wire [7:0]x,y,z;

shift_register sa(clk,data_in,x,rst,lda);
shift_register sb(clk,data_in,y,rst,ldb);
adder a1(x,y,z);
shift_register sc(clk,z,data_out,rst,ldc);
endmodule

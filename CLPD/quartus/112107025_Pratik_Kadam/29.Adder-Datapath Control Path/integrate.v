module integrate(data_in,clk,rst,start,data_out);
input [7:0]data_in;
input clk,rst,start;
output [7:0]data_out;
wire lda,ldb,ldc;


Data_path d1(data_in,rst,clk,lda,ldb,ldc,data_out);
control_path c1(clk,rst,start,lda,ldb,ldc);
endmodule

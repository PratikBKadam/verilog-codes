module integrate_tb;
reg [7:0]data_in;
reg clk,rst,start;
wire [7:0]data_out;

integrate dut(.data_in(data_in),.clk(clk),.rst(rst),.start(start),.data_out(data_out));

initial
begin
clk = 1'b0;
#10;
forever
begin
clk = ~clk;
#10;
end
end

initial
begin
rst = 0;
start = 0;
#5;
rst = 1;
start = 1;
#10;
data_in = 8'b01101101;
#50;
data_in = 8'b00110001;
#100;
$stop;
end
endmodule


module testtask;

reg in,mod;
wire out;

task1 fre( .clk(in), .mod(mod), .clk2(out) );

initial 
begin
$monitor(in,out);
in=1'b0;
mod=1'b0;
#1000;
$stop;
end

always begin
#50 in = ~in;
#55 mod= ~mod;
end

endmodule

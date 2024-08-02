module testalu;
reg [2:0]sel,a,b;
wire [2:0]y;
alu1 dut(.sel(sel),.a(a),.b(b),.y(y));
initial $monitor("monitor changes in value at time %t, a=%b,b=%b,sel=%b and output=%b",$time,a,b,sel,y);
initial begin
repeat(10)
begin
sel=$random;
a=$random;
b=$random;
$display("display random values at time %t,a=%b,b=%b,sel=%b and output=%b",$time,a,b,sel,y);
#1;
$strobe("strobe output is %b",y);
end
end
endmodule

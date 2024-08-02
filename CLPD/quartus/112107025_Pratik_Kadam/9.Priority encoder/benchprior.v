module benchprior;
reg [3:0]D;
reg en;
wire a,b,v;
priority dut(.valid(v),.D(D),.en(en),.a(a),.b(b));
initial begin
#10;
en=1;
D=4'b1000;
#10;
en=0;
D=4'b1000;
#10;
en=0;
D=4'b1100;
#10;
en=0;
D=4'b0100;
#10;
en=0;
D=4'b0110;
#10;
en=0;
D=4'b0010;
#10;
en=0;
D=4'b0011;
#10;
en=0;
D=4'b0001;
#10;
en=0;
D=4'b0000;
#10;
end
endmodule

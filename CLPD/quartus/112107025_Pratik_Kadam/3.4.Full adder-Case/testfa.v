module testfa;
reg in1,in2,in3;
wire s,c;
fabehave dut(.a(in1),.b(in2),.cin(in3),.s(s),.c(c));
initial begin
#10;
in1=0;
in2=0;
in3=0;
#10;
in1=0;
in2=0;
in3=1;
#10;
in1=0;
in2=1;
in3=0;
#10;
in1=0;
in2=1;
in3=1;
#10;
in1=1;
in2=0;
in3=0;
#10;
in1=1;
in2=0;
in3=1;
#10;
in1=1;
in2=1;
in3=0;
#10;
in1=1;
in2=1;
in3=1;
end
endmodule
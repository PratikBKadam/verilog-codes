module tb_fsm;
reg in,clk,state_select_in;
wire state_out,out1;
wire[1:0] ps;
state1 uut(.in(in),.clk(clk),.ps(ps),.state_select_in(state_select_in),.out1(out1),.state_out(state_out));
initial
begin
clk=0;
forever
begin 
#5;
clk=~clk;
end
end 
initial 
begin
in=0;
state_select_in=1;
#12;
state_select_in=0;
#10;
in=1;
#10;
in=0;
#10;
end
endmodule

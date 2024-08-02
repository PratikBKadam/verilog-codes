module siso(si,rst,clk,so);
input rst,clk,si;
output so;
reg [3:0] regi;
always @(posedge(clk),negedge(rst))
begin
	if(!rst) 
	begin
		regi=4'b0000;
	end
	else
	begin
		regi[3]=regi[2];
		regi[2]=regi[1];
		regi[1]=regi[0];
		regi[0]=si;



	end
end
assign so=regi[3];
endmodule

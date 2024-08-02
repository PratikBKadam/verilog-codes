/*
function can only process on input to return a single value
task is more general and can give multiple results and return them using output or inout
task can contain contain @,posedge,etc
task doesn't return a value but can give same result via output
*/
/*
Syntax-

style1-
	task[name];
		input [port_list];
		inout [port_list];
		output [port_list];
		begin
			[statements]
		end
	endtask
style2-
	task[name](input [port_list],inout[port_list],output[port_list]);
	begin
		[statements]
	end
	endtask
style3-
	task[name]();
	begin
		[statements]
	end
	endtask
*/
/*
static variable exits for entire simulation as the same
but the dynamic variable is different in each of its iteration 
*/
module tasks(z);
reg [7:0] x,y;
output reg [7:0] z;
task sum(input [7:0]a,b, output [7:0]c);
begin
c=a+b;
end
endtask
initial begin
x=14;
y=18;
sum(x,y,z);
end
endmodule

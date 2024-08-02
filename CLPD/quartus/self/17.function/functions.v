/*
Syntax-


	function [automatic] [return_type] name ([port_list]);
	
				[statements]
				
	endfunction

	
	
[automatic] will make function reentrant and items defined dynamically allocated, 
hence recursive functions can also be allocated

Reentrant means function can be interrupted to call other function 
and restarted again

function name can't be used as other variable
function can't have #,@,wait,posedge,negedge
function can't start a task but can call other functions
function must have atleast one input
function can't have non-blocking assignments or assign-deassign or force-release
function can't have triggers
function can't have output or inout
*/

module functions(a,b,result);
input [7:0]a,b;
output [7:0] result;

function [7:0] and2;
	input [7:0] a,b;
	begin
	and2=a&b;
	end
endfunction
assign result = and2(a,b);
endmodule


/*
recursive factorial

module tb;

initial begin
	integer result=factorial(4);
	$display("factorial(4)=%d",result);
end
function automatic integer factorial(integer i);
	
	integer result=i;
	if(i)
		result=i*factorial(i-1);
	else 
		result=1;
	return result;

endfunction

endmodule

*/






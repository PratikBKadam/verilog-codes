module trafficlight_timer(rst,clk,output_state,timer);
input clk,rst;
output reg [3:0] timer;
reg [1:0] next_state,current_state;
output [1:0] output_state;
parameter red=2'b00,yellow=2'b01,green=2'b10;
parameter redtime=4'b1010,yellowtime=4'b0101,greentime=4'b1010;
always @(timer,current_state)
	begin 
	if(timer)
		begin
				next_state<=current_state;
		end
	else
		begin
		case(current_state)
			red:
				begin
				next_state<=green;
				end			
			yellow:
				begin
				next_state<=red;
				end
			green:
				begin
				next_state<=yellow;
				end
			default:
				begin
				next_state<=red;
				end
		endcase	
		end
	end
always @(negedge(clk),posedge(rst))
begin
	if(rst)
		begin
			timer<=redtime;
			current_state<=red;
		end
	else
		begin
			current_state<=next_state;
			if(timer)
				begin
					timer<=timer-1'b1;
				end
			else
				begin
					case(next_state)
						red:timer<=redtime;
						green:timer<=greentime;
						yellow:timer<=yellowtime;
						default:timer<=redtime;
					endcase
					
				end
		end
end

assign output_state = current_state;
endmodule
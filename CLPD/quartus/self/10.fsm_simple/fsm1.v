module fsm1(out, in1,in2, rst, clk);
output out;
input in1,in2;
input clk, rst;
reg out;
reg[1:0] state;
parameter s0=2'd0, s1=2'd1, s2=2'd2, s3=2'd3;
always @(posedge clk or negedge rst)
begin
	if(rst==0) 
	begin 
		state=s0; 
		out=0; 
	end
	else 
	begin
		case (state)
		s0: 
		begin
			if(in1==0 && in2==1) 
			begin 
				out=0; 
				state=s1; 
			end
			else if(in1==1 && in2==0)
			begin 
				out=0; 
				state=s2; 
			end
			else
			begin
				out=0; 
				state=s0; 
			end
		end
		s1: 
		begin
			if(in1==0) 
			begin 
				out=0; 
				state=s1; 
			end
			else 
			begin 
				out=0; 
				state=s2; 
			end
		end
		s2: 
		begin
			if(in1==0) 
			begin 
				out=0; 
				state=s3; 
			end
			else 
			begin 
				out=0; 
				state=s0; 
			end
		end
		s3: 
		begin
			if(in1==0) 
			begin 
				out=0; 
				state=s1; 
			end
			else 
			begin 
				out=1; 
				state=s2;
			end
		end
		default: 
		begin
			state=s0;
			out=0;
		end
		endcase
	end
end
endmodule

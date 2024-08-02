module Ring_Counter(clk,rst,preset,out);
	input clk,rst,preset;
	output reg [3:0] out;

	always @(posedge clk or negedge rst or negedge preset) 
		begin
			if (!rst) 
				begin
					out <= 4'b0000;
				end 
			else if (!preset)
				begin
					out <= 4'b1000;
				end
			else 
				begin
					out <= {out[2:0], out[3]};
				end
		end
endmodule

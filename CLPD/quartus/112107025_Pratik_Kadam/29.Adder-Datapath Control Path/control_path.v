module control_path(clk,rst,start,lda,ldb,ldc);
input clk,rst,start;
output reg lda,ldb,ldc;
reg [1:0]y,Y;
parameter s0=2'b00, s1=2'b01, s2=2'b11, s3=2'b10;

always@(posedge clk, negedge rst)
begin
	if(!rst)
		y <= s0;
	else
		y <= Y;
end

always@(start,y)
begin
	case(y)
		s0: begin
			if(start)
				Y <= s1;
			else
				Y <= s0;
			end
		s1: Y <= s2;
		s2: Y <= s3;
		s3: Y <= s0;
	endcase
end

always@(posedge clk, negedge rst)
begin
case(y)
s0: begin
		lda=0;
		ldb=0;
		ldc=0;
	end
s1: begin
		lda=1;
		ldb=0;
		ldc=0;
	end
s2: begin
		lda=0;
		ldb=1;
		ldc=0;
	end
s3: begin
		lda=0;
		ldb=0;
		ldc=1;
	end
endcase
end
endmodule

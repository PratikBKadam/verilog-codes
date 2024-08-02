module ha(input a,b, 
output sum,cout);
assign sum=a^b;
assign cout=a&b;
endmodule
module test4 #(parameter N=4)
(input [N-1:0] a,b,
output [N-1:0] sum,cout);
genvar i;
generate
for (i=0;i<N;i=i+1)
begin :loop
ha u0(a[i],b[i],sum[i],cout[i]);
end
endgenerate
endmodule

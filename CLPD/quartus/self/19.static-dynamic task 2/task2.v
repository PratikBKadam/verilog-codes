module task2;
initial begin

display();
display();
display();
display();
end
task display();
integer i=0;
i=i+1;
$display("i=%0d",i);
endtask
endmodule

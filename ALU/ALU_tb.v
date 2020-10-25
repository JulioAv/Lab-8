//Testbench
module testbench();
reg [3:0]A, B;
reg [2:0]F;
wire [3:0]Y;

ALU m1(A, B, F, Y);

initial begin
#1
$display("  A    B   F   Y  ");
$display("------------------");
$monitor("  %b   %b  %b %b  ", A, B, F, Y);
end

initial begin
F=3'b000; A=4; B=7;
#5 F=3'b001;
#5 F=3'b010;
#5 F=3'b100;
#5 F=3'b101;
#5 F=3'b110;
#5 F=3'b111;


end

initial
#40 $finish;
initial begin
$dumpfile("ALU_tb.vcd");
$dumpvars(0, testbench);
end

endmodule

module testbench();
reg [11:0]D;
wire [7:0]Y;

ROM r(D, Y);

initial begin
  #1
  $display("D   Y   ");
  $display("--------");
  $monitor("%b   %b  ", D, Y);
  D=0;
  #1 D=12'b00000000;
  #1 D=12'b00000001;
  #1 D=12'b00000010;
  #1 D=12'b00000011;
  #1 D=12'b00000100;
  #1 D=12'b00000101;
  #1 D=12'b00000110;
  #1 D=12'b00000111;
  #1 D=12'b00001000;
end

initial
  #15 $finish;
initial begin
  $dumpfile("ROM_tb.vcd");
  $dumpvars(0, testbench);
end


endmodule

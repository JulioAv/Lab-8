module testbench();
reg clk, reset, load, enabled;
reg [11:0]D;
wire [11:0]Q;

 contador c1(clk, enabled, load, reset, D, Q);
always
  #1 clk<=~clk;

  initial begin
  #1
  $display("Contador de 12 bits");
  $display("clk Q load  D reset enabled");
  $display("------------------------");
  $monitor("%b  %b %b   %b  b%b     %b", clk, Q, load, D, reset, enabled);
  end
  initial begin
    reset=1; clk=0; enabled=1; load=0; D=100;
    #1 reset=0;
    #10 enabled=0;
    #5 enabled=1;
    #10 reset=1;
    #1  reset=0;
    #10 load=1;
    #1 load=0;
  end

  initial
    #50 $finish;
  initial begin
    $dumpfile("contador_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule

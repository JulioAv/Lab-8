module contador(input wire clk, enabled, load, reset, input wire [11:0]D, output reg [11:0]Q);
always @(posedge clk or posedge reset or posedge load) begin //todos deben estar entre las sensibilidades del timer

  if (reset) // el reset va primero para definir que inicialmente el valor es 0
    Q<=0;
  else if (load) // D pasa a Q y como el REG recuerda su valor anterior no hay necesidad de definir que pasa si load es 0
    Q<=D;
  else if (enabled)//suma 1 y al igual que en el load no hay necesidad del else
    Q<=Q+1'b1;
  end

endmodule

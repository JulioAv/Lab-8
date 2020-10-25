//Alu
module ALU (input wire [3:0]A, B, input wire [2:0]F, output reg [3:0]Y); //inputs de 4 bits y selector de operación de 3 bits
  always @(*) begin
    case (F) //case con todas las operaciones a realizar
      3'b000: Y= A & B;
      3'b001: Y= A | B;
      3'b010: Y= A + B;
      3'b100: Y= A & ~B;
      3'b101: Y= A | ~B;
      3'b110: Y= A - B;
      3'b111: Y= (A<B) ? 4'b0001: 4'b0000;
      default: Y= A & B; //default por si comienza en un valor no especificado
    endcase
  end
endmodule

module ROM (input wire [11:0]D, output [7:0]Y ); //12 bits de direccionamiento y datos de 8 bits de ancho

assign Y = m[D]; //la salida será el valor del dato en el direccionamiento
reg[7:0] m[0:4095]; //esta instruccion es para el array 2D

initial begin
  $readmemb("memoria.list", m); //comando para leer los datos de la lista
end

endmodule

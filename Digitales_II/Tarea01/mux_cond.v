// Multiplexor 2-1. Descripción Conductual.
// Cuando c=1, out=a; y cuando c=0, out=b
module mux_cond (out, c, a, b);
  //salidas del Mux
  output out;
  // Entradas al Mux
  input c, a, b;
  reg out;
  always @(*) //asterisco representa
  //todas las entradas que pueden modificar la salida
  out= (~c&b) | (c&a);
endmodule

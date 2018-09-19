// Mux 2-1. Descripción Estructural.
// Cuando c=1, out=a; y cuando c=0, out=b
module mux_estruc (out, c, a, b);
  // salidas del mux
  output out;
  input c, a, b;
  wire n1, n0;
  // nodos internos
  and(n0, b, ~c);
  and(n1, a, c);
  or(out, n1, n0);
endmodule

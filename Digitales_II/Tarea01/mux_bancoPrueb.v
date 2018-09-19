//Banco de pruebas multiplexor

`timescale 1ns/100ps
// escala unidad temporal (valor de "#1") / precisión
// includes de archivos de verilog
// Pueden omitirse y llamarse desde el testbench
`include "mux_cond.v"
`include "mux_estruc.v"
`include "mux_prob.v"

module mux_bancoPrueba ();
  wire out_estr, out_cond, a, b, c;
  mux_cond m_cond(.out (out_cond),.a  (a),.b  (b),.c  (c));
  mux_estruc m_estruc(.out (out_estr),.a  (a),.b  (b),.c  (c));
  mux_prob mux_prob_(.out_estr (out_estr),.out_cond (out_cond),.a  (a),.b  (b),.c  (c));

endmodule

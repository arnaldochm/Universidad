//Modulo probador.

module mux_prob (out_cond, out_estr, a, b, c);
  input out_estr;
  input out_cond;

  output reg a;
  output reg b;
  output reg c;

  output reg clk;

  initial begin
    $dumpfile("multiplexor.vcd");// Nombre de archivo del "dump"
    $dumpvars; // Directiva para "dumpear" variables
    // Mensaje que se imprime en consola una vez
    $display ("a\tb\tc\tout_estr\tout_cond");
    $monitor("%b\t%b\t%b\t%b\t\t%b", a, b, c, out_estr, out_cond);
    a=0; b=1; c=0;
    #10 a=1; b=0; c=0;
    #2 c=1;
    #10 a=0; b=1; c=0;
    #10 $finish;
  end
  //Reloj
  initial clk <=0;
  always #2 clk <= ~clk;

endmodule

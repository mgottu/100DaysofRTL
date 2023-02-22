`include "mux_allstyles.v"
`timescale 1ns/1ns

module mux_allstyles_tb;

reg a, b, s;
wire mux_out;

mux_allstyles dut(.a(a), .b(b), .sel(s), .mux_out(mux_out));

initial begin
    $dumpfile("mux_allstyles_waveform.vcd");
    $dumpvars(0, mux_allstyles_tb);
    $monitor("a=%b, b= %b, s=%b, mux_out=%b", a, b, s, mux_out);
    a = 1;
    b = 1;

    #5 s = 0;

    #5 a = 0;

    #5 s = 1;

    #15 b = 0;

    #30 a = 1;

    #100 $display("Completed! congratz babe");

end

initial #100 $finish;

endmodule
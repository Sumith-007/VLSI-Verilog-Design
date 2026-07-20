`timescale 1ns/1ps

module Mux_tb;

    parameter N = 4;

    reg  [N-1:0] I;
    reg  [$clog2(N)-1:0] Sel;
    wire Y;

    Mux #(N) uut (
        .I(I),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin
        $dumpfile("Mux.vcd");
        $dumpvars(0, Mux_tb);

        I = 4'b1010;

        Sel = 2'b00; #10;
        Sel = 2'b01; #10;
        Sel = 2'b10; #10;
        Sel = 2'b11; #10;

        $finish;
    end

endmodule
`timescale 1ns/1ps

module RCA_4bit_tb;

    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    RCA_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("RCA_4bit.vcd");
        $dumpvars(0, RCA_4bit_tb);

        A = 4'b0011; B = 4'b0101; Cin = 0; #10; // 3 + 5
        A = 4'b0111; B = 4'b1000; Cin = 0; #10; // 7 + 8
        A = 4'b1111; B = 4'b0001; Cin = 0; #10; // 15 + 1
        A = 4'b1001; B = 4'b0110; Cin = 0; #10; // 9 + 6

        $finish;
    end

endmodule
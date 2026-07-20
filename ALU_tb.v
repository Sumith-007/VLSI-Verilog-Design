`timescale 1ns/1ps

module ALU_tb;

    reg  [3:0] A, B;
    reg  [2:0] Sel;
    wire [3:0] Result;
    wire       Cout;

    ALU uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .Result(Result),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("ALU.vcd");
        $dumpvars(0, ALU_tb);

        // AND
        A = 4'b1010; B = 4'b1100; Sel = 3'b000; #10;

        // OR
        A = 4'b1010; B = 4'b1100; Sel = 3'b001; #10;

        // XOR
        A = 4'b1010; B = 4'b1100; Sel = 3'b010; #10;

        // ADD 3 + 5
        A = 4'b0011; B = 4'b0101; Sel = 3'b011; #10;

        // SUB 9 - 6
        A = 4'b1001; B = 4'b0110; Sel = 3'b100; #10;

        // SUB 6 - 9 (negative case)
        A = 4'b0110; B = 4'b1001; Sel = 3'b100; #10;

        $finish;
    end

endmodule
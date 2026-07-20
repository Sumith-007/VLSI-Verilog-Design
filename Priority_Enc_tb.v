`timescale 1ns/1ps

module Priority_Enc_tb;

    reg Y3, Y2, Y1, Y0;
    wire A, B;

    Priority_Enc uut (
        .Y3(Y3),
        .Y2(Y2),
        .Y1(Y1),
        .Y0(Y0),
        .A(A),
        .B(B)
    );

    initial begin
        $dumpfile("Priority_Enc.vcd");
        $dumpvars(0, Priority_Enc_tb);

        
        Y3=0; Y2=0; Y1=0; Y0=1; #10;

        Y3=0; Y2=0; Y1=1; Y0=0; #10;

        Y3=0; Y2=1; Y1=0; Y0=0; #10;
        
        Y3=1; Y2=0; Y1=0; Y0=0; #10;

        Y3=0; Y2=1; Y1=1; Y0=0; #10;

        Y3=1; Y2=1; Y1=0; Y0=0; #10;

        $finish;
    end

endmodule
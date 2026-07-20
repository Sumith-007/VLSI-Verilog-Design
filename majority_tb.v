module majority_tb;

reg A;
reg B;
reg C;
wire F;

// Instantiate the module
majority uut (
    .A(A),
    .B(B),
    .C(C),
    .F(F)
);

initial begin
    $dumpfile("majority.vcd");
    $dumpvars(0, majority_tb);

    // Test all combinations
    A=0; B=0; C=0; #10;
    A=0; B=0; C=1; #10;
    A=0; B=1; C=0; #10;
    A=0; B=1; C=1; #10;
    A=1; B=0; C=0; #10;
    A=1; B=0; C=1; #10;
    A=1; B=1; C=0; #10;
    A=1; B=1; C=1; #10;

    $finish;
end

endmodule

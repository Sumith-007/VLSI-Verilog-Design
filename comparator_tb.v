module comparator_tb;

    reg A, B;
    wire A_gt_B, A_eq_B, A_lt_B;

    comparator uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        $dumpfile("comparator.vcd");
        $dumpvars(0, comparator_tb);

        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        $finish;
    end

endmodule
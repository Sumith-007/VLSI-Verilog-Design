module logic_p_tb;

reg a,b;
wire [6:0]y;

logic_p uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("logic_p.vcd");
    $dumpvars(0, logic_p_tb);
    
    a=0;b=0; #10;
    a=1;b=0; #10;
    a=0;b=1; #10;
    a=1;b=1; #10;
    
    $finish;
end

endmodule

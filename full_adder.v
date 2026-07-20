module full_adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

assign Cout=A&B|A&Cin|B&Cin;
assign Sum=A^B^Cin;

endmodule   
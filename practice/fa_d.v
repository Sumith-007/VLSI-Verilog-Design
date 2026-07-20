module fa_d(
    input a,b,cin,
    output sum, carry
);

assign sum=a^b^cin;
assign carry=(a&b)|(a&cin)|(b&cin);

endmodule
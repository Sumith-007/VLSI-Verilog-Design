module majority (
    input A,
    input B,
    input C,
    output F
);

assign F = (A & B) | (A & C) | (B & C);

endmodule

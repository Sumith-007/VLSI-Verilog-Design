module Priority_Enc(
    input Y3,
    input Y2,
    input Y1,
    input Y0,
    output A,
    output B
);

assign A=Y3|Y2;

assign B = Y3 | (~Y2 & Y1);
endmodule
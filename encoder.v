module encoder(
    input Y0, 
    input Y1, 
    input Y2, 
    input Y3, 
    output A,
    output B
);

assign A=Y2 | Y3;
assign B=Y1 | Y3;

endmodule
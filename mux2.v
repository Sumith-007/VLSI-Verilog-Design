module mux2(
    input I0,
      input I1,
      input I2,
      input I3,
      input S,
      output Y
);
 assign Y=S?I1:I0;
endmodule
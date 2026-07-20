module Mux#(parameter N=4)(
    input [N-1:0]I,
    input [$clog2(N)-1:0]Sel,
    output Y
);

assign Y=I[Sel];
endmodule
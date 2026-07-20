module ALU(
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] Sel,
    output reg [3:0] Result,
    output reg Cout
);

wire [3:0] add_result;
wire [3:0] sub_result;
wire add_cout;
wire sub_cout;

RCA_4bit ADDER (
    .A(A),
    .B(B),
    .Cin(1'b0),
    .Sum(add_result),
    .Cout(add_cout)
);

wire [3:0] B_inverted;
assign B_inverted = ~B;

RCA_4bit SUBTRACTOR (
    .A(A),
    .B(B_inverted),
    .Cin(1'b1),
    .Sum(sub_result),
    .Cout(sub_cout)
);

always @(*) begin
    case(Sel)

        3'b000: begin
            Result = A & B;
            Cout   = 0;
        end

        3'b001: begin
            Result = A | B;
            Cout   = 0;
        end

        3'b010: begin
            Result = A ^ B;
            Cout   = 0;
        end

        3'b011: begin
            Result = add_result;
            Cout   = add_cout;
        end

        3'b100: begin
            Result = sub_result;
            Cout   = sub_cout;
        end

        default: begin
            Result = 4'b0000;
            Cout   = 0;
        end

    endcase
end

endmodule
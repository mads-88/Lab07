module ones_compliment(
    input  wire [3:0] A,
    input  wire [3:0] B,
    output wire [3:0] Y
);
    wire [3:0] sum1;
    wire c1, c2, c3, carry_out;

    full_adder fa0 (.A(A[0]), .B(B[0]), .Cin(1'b0), .Y(sum1[0]), .Cout(c1));
    full_adder fa1 (.A(A[1]), .B(B[1]), .Cin(c1),   .Y(sum1[1]), .Cout(c2));
    full_adder fa2 (.A(A[2]), .B(B[2]), .Cin(c2),   .Y(sum1[2]), .Cout(c3));
    full_adder fa3 (.A(A[3]), .B(B[3]), .Cin(c3),   .Y(sum1[3]), .Cout(carry_out));

    wire d1, d2, d3;

    full_adder ea0 (.A(sum1[0]), .B(carry_out), .Cin(1'b0), .Y(Y[0]), .Cout(d1));
    full_adder ea1 (.A(sum1[1]), .B(1'b0),      .Cin(d1),   .Y(Y[1]), .Cout(d2));
    full_adder ea2 (.A(sum1[2]), .B(1'b0),      .Cin(d2),   .Y(Y[2]), .Cout(d3));
    full_adder ea3 (.A(sum1[3]), .B(1'b0),      .Cin(d3),   .Y(Y[3]), .Cout());
endmodule

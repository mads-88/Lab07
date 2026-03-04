module twos_compliment(
    input  wire [7:0] A,
    output wire [7:0] Y
);
    wire [7:0] inv;
    assign inv = ~A;

    wire c1, c2, c3, c4, c5, c6, c7;

    full_adder t0 (.A(inv[0]), .B(1'b1), .Cin(1'b0), .Y(Y[0]), .Cout(c1));
    full_adder t1 (.A(inv[1]), .B(1'b0), .Cin(c1),   .Y(Y[1]), .Cout(c2));
    full_adder t2 (.A(inv[2]), .B(1'b0), .Cin(c2),   .Y(Y[2]), .Cout(c3));
    full_adder t3 (.A(inv[3]), .B(1'b0), .Cin(c3),   .Y(Y[3]), .Cout(c4));
    full_adder t4 (.A(inv[4]), .B(1'b0), .Cin(c4),   .Y(Y[4]), .Cout(c5));
    full_adder t5 (.A(inv[5]), .B(1'b0), .Cin(c5),   .Y(Y[5]), .Cout(c6));
    full_adder t6 (.A(inv[6]), .B(1'b0), .Cin(c6),   .Y(Y[6]), .Cout(c7));
    full_adder t7 (.A(inv[7]), .B(1'b0), .Cin(c7),   .Y(Y[7]), .Cout());
endmodule


module half_sub(
    input  wire A,
    input  wire B,
    output wire Y,
    output wire Borrow
);
    assign Y = A ^ B;
    assign Borrow = (~A) & B;
endmodule

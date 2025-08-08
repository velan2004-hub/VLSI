module nand_gate (
    input wire A,
    input wire B,
    output wire Y
);
    assign Y = ~(A & B);
endmodule

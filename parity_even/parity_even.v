
module parity_even(input wire [3:0] d, output wire p);
    assign p = ^d; // XOR of all bits
endmodule
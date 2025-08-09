
module parity_checker_even(input wire [3:0] d, input wire p, output wire error);
    assign error = (^d) ^ p;
endmodule
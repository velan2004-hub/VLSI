
module full_adder(input wire a, b, cin, output wire sum, carry);
    assign sum   = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);
endmodule
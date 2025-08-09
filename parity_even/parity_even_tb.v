
`timescale 1ns/1ps
module tb_parity_even;
    reg [3:0] d;
    wire p;
    parity_even uut(d, p);
    initial begin
        d=4'b1011; #10; $display("D=%b -> Parity=%b", d, p);
        d=4'b1100; #10; $display("D=%b -> Parity=%b", d, p);
        $finish;
    end
endmodule
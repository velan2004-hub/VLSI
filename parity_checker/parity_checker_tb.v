
`timescale 1ns/1ps
module tb_parity_checker_even;
    reg [3:0] d;
    reg p;
    wire error;
    parity_checker_even uut(d, p, error);
    initial begin
        d=4'b1011; p=1; #10; $display("Error=%b", error);
        d=4'b1011; p=0; #10; $display("Error=%b", error);
        $finish;
    end
endmodule
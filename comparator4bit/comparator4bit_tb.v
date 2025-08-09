
`timescale 1ns/1ps
module tb_comparator4bit;
    reg [3:0] a, b;
    wire eq, gt, lt;
    comparator4bit uut(a, b, eq, gt, lt);
    initial begin
        a=4'b1010; b=4'b1010; #10;
        $display("EQ=%b GT=%b LT=%b", eq, gt, lt);
        a=4'b1100; b=4'b1010; #10;
        $display("EQ=%b GT=%b LT=%b", eq, gt, lt);
        $finish;
    end
endmodule
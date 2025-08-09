
`timescale 1ns/1ps
module tb_counter_async;
    reg clk, rst;
    wire [3:0] Q;
    counter_async uut(clk, rst, Q);
    initial begin clk=0; forever #5 clk=~clk; end
    initial begin
        rst=1; #10;
        rst=0; #100;
        $finish;
    end
endmodule
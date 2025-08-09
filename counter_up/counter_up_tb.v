
`timescale 1ns/1ps
module tb_counter_up;
    reg clk, rst;
    wire [3:0] Q;
    counter_up uut(clk, rst, Q);
    initial begin clk=0; forever #5 clk=~clk; end
    initial begin
        rst=1; #10;
        rst=0; #50;
        $finish;
    end
endmodule
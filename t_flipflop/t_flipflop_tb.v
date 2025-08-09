
`timescale 1ns/1ps
module tb_t_ff;
    reg T, clk;
    wire Q;
    t_ff uut(T, clk, Q);
    initial begin clk=0; forever #5 clk=~clk; end
    initial begin
        T=0; #10;
        T=1; #50;
        $finish;
    end
endmodule
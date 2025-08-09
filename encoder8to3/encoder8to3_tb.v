
`timescale 1ns/1ps
module tb_encoder8to3;
    reg [7:0] y;
    wire [2:0] a;
    encoder8to3 uut(y, a);
    initial begin
        y = 8'b00001000; #10; $display("Y=%b -> A=%b", y, a);
        y = 8'b00100000; #10; $display("Y=%b -> A=%b", y, a);
        $finish;
    end
endmodule
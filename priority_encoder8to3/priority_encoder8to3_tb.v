
`timescale 1ns/1ps
module tb_priority_encoder8to3;
    reg [7:0] y;
    wire [2:0] a;
    priority_encoder8to3 uut(y, a);
    initial begin
        y = 8'b00010000; #10; $display("Y=%b -> A=%b", y, a);
        y = 8'b10000010; #10; $display("Y=%b -> A=%b", y, a);
        $finish;
    end
endmodule
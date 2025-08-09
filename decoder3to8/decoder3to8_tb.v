
`timescale 1ns/1ps
module tb_decoder3to8;
    reg [2:0] a;
    wire [7:0] y;
    decoder3to8 uut(a, y);
    initial begin
        for(a=0; a<8; a=a+1) begin
            #10 $display("A=%b -> Y=%b", a, y);
        end
        $finish;
    end
endmodule
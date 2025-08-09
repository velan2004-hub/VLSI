
`timescale 1ns/1ps
module tb_demux1to4;
    reg d;
    reg [1:0] sel;
    wire [3:0] y;
    demux1to4 uut(d, sel, y);
    initial begin
        d=1;
        for(sel=0; sel<4; sel=sel+1) begin
            #10 $display("SEL=%b -> Y=%b", sel, y);
        end
        $finish;
    end
endmodule

`timescale 1ns/1ps
module tb_not_gate;
    reg a;
    wire y;
    not_gate uut(a, y);
    initial begin
        $display("A | Y");
        a=0; #10; $display("%b | %b", a,y);
        a=1; #10; $display("%b | %b", a,y);
        $finish;
    end
endmodule
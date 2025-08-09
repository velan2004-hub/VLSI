
`timescale 1ns/1ps
module tb_xnor_gate;
    reg a, b;
    wire y;
    xnor_gate uut(a, b, y);
    initial begin
        $display("A B | Y");
        a=0; b=0; #10; $display("%b %b | %b", a,b,y);
        a=0; b=1; #10; $display("%b %b | %b", a,b,y);
        a=1; b=0; #10; $display("%b %b | %b", a,b,y);
        a=1; b=1; #10; $display("%b %b | %b", a,b,y);
        $finish;
    end
endmodule
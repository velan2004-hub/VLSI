
`timescale 1ns/1ps
module tb_mux2to1;
    reg a, b, sel;
    wire y;
    mux2to1 uut(a, b, sel, y);
    initial begin
        $display("A B Sel | Y");
        a=0; b=1; sel=0; #10; $display("%b %b  %b  | %b", a,b,sel,y);
        sel=1; #10; $display("%b %b  %b  | %b", a,b,sel,y);
        $finish;
    end
endmodule
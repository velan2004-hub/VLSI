
`timescale 1ns/1ps
module tb_full_adder;
    reg a, b, cin;
    wire sum, carry;
    full_adder uut(a, b, cin, sum, carry);
    initial begin
        $display("A B Cin | SUM CARRY");
        {a,b,cin} = 3'b000; repeat(8) begin
            #10 $display("%b %b  %b  | %b   %b", a,b,cin,sum,carry);
            {a,b,cin} = {a,b,cin} + 1;
        end
        $finish;
    end
endmodule
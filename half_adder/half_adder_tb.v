module tb_half_adder;

    reg A, B;
    wire SUM, CARRY;

    half_adder uut (
        .A(A),
        .B(B),
        .SUM(SUM),
        .CARRY(CARRY)
    );

    initial begin
        $display("A B | SUM CARRY");
        $monitor("%b %b |  %b    %b", A, B, SUM, CARRY);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

endmodule

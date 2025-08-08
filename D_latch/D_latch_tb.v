module tb_d_latch;

    reg D, EN;
    wire Q;

    d_latch uut (
        .D(D),
        .EN(EN),
        .Q(Q)
    );

    initial begin
        $display("Time\tEN\tD\tQ");
        $monitor("%g\t%b\t%b\t%b", $time, EN, D, Q);


        EN = 0; D = 0; #10;
        D = 1; #10;
        EN = 1; #10;
        D = 0; #10;
        EN = 0; #10;
        D = 1; #10;

        $finish;
    end

endmodule

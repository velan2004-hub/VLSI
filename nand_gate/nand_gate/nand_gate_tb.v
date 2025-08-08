`timescale 1ns / 1ps
module nand_gate_tb;

    reg A, B;       // Inputs
    wire Y;         // Output

    // Instantiate the NAND gate module
    nand_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        // Monitor changes
        $monitor("Time=%0t A=%b B=%b => Y=%b", $time, A, B, Y);

        // Test all input combinations
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $stop; // End simulation
    end
endmodule
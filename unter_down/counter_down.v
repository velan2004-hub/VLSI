
module counter_down(input wire clk, rst, output reg [3:0] Q);
    always @(posedge clk) begin
        if (rst) Q <= 4'b1111;
        else Q <= Q - 1;
    end
endmodule
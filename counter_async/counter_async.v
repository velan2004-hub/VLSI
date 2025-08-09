
module counter_async(input wire clk, rst, output reg [3:0] Q);
    always @(posedge clk or posedge rst) begin
        if (rst) Q <= 0;
        else Q <= Q + 1;
    end
endmodule
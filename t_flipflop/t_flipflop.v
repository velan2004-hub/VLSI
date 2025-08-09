
module t_ff(input wire T, clk, output reg Q);
    always @(posedge clk) begin
        if (T) Q <= ~Q;
    end
endmodule
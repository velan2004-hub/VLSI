
module sr_latch(input wire S, R, output reg Q, Qbar);
    always @(*) begin
        if (S && !R) begin
            Q = 1; Qbar = 0;
        end
        else if (!S && R) begin
            Q = 0; Qbar = 1;
        end
        else if (!S && !R) begin
            // No change
        end
        else begin
            Q = 1'bx; Qbar = 1'bx; // Invalid
        end
    end
endmodule
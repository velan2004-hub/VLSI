
module encoder8to3(input wire [7:0] y, output reg [2:0] a);
    always @(*) begin
        case (y)
            8'b00000001: a = 3'b000;
            8'b00000010: a = 3'b001;
            8'b00000100: a = 3'b010;
            8'b00001000: a = 3'b011;
            8'b00010000: a = 3'b100;
            8'b00100000: a = 3'b101;
            8'b01000000: a = 3'b110;
            8'b10000000: a = 3'b111;
            default:     a = 3'bxxx;
        endcase
    end
endmodule

module priority_encoder8to3(input wire [7:0] y, output reg [2:0] a);
    always @(*) begin
        casex (y)
            8'b1xxxxxxx: a = 3'b111;
            8'b01xxxxxx: a = 3'b110;
            8'b001xxxxx: a = 3'b101;
            8'b0001xxxx: a = 3'b100;
            8'b00001xxx: a = 3'b011;
            8'b000001xx: a = 3'b010;
            8'b0000001x: a = 3'b001;
            8'b00000001: a = 3'b000;
            default:     a = 3'bxxx;
        endcase
    end
endmodule
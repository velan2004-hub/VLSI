
module comparator4bit(input wire [3:0] a, b, output wire eq, gt, lt);
    assign eq = (a == b);
    assign gt = (a > b);
    assign lt = (a < b);
endmodule
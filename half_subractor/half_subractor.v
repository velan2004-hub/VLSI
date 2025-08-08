module half_subtractor (
    input wire A,        
    input wire B,        
    output wire DIFF,    
    output wire BORROW   
);

    assign DIFF = A ^ B;

    assign BORROW = (~A) & B;

endmodule

module OddParityChecker (
    input  [7:0] data_in,      
    input        parity_bit,   
    output       parity_error  
);
    wire calculated_parity;

    assign calculated_parity = ^data_in; 
    assign parity_error = ~(calculated_parity ^ parity_bit);

endmodule

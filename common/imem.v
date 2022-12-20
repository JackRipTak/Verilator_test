`include "defines.v"

module imem (
    
    input wire clk,
    input wire [`ADDR_WIDTH] addr,
    output reg [`INS_WIDTH] ins 
);
    reg [`INS_WIDTH] inst [`INS_LIM];
    always @(posedge clk) begin
        ins = inst [addr[6:2]];
    end

    
endmodule
`include "defines.v"

module pc (
    input wire clk,
    input wire rst,
    input wire [`ADDR_WIDTH] in,
    output reg [`ADDR_WIDTH] out
);

    always @(posedge clk ,posedge rst) begin
        if(rst) out = 0;
        else out = in;
    end
    
endmodule
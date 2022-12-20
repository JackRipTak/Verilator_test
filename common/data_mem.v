
`include "defines.v"


module data_mem #(
    parameter W=`WORD_WIDTH
) ( 
    input wire clk,
    input wire[`ADDR_WIDTH-1:0] addr,
    input wire write,
    input wire[W-1:0] wdata,
    output reg[W-1:0] rdata
    
);
    reg [W-1:0] res [0:`ADDR_WIDTH-1];
    always @(posedge clk)
    begin
        if (write) begin
            res [addr] = wdata;
        end
    end
    
    always @(posedge clk)
    begin
        if (!write) begin
            rdata = res[addr];
        end
    end

    


    
endmodule
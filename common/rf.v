`include "defines.v"

module rf (
    input wire clk,
    input wire [`RADDR_WIDTH] rs_addr,
    input wire [`RADDR_WIDTH] rt_addr,
    input wire [`RADDR_WIDTH] rd_addr,
    input wire [`WORD_WIDTH] resdata,
    input wire write,
    output reg [`WORD_WIDTH] rs_val,
    output reg [`WORD_WIDTH] rt_val
);
    reg [`WORD_WIDTH] re [`RADDR_WIDTH];
    integer i;
    initial begin
        for (i=0; i<32; i+=1) begin
            re[i] = 0;
        end
    end

    always @(posedge clk) begin
        if (write) begin
            re[rd_addr] = resdata;
        end
        rs_val = re[rs_addr];
        rt_val = re[rt_addr];
    end
    
endmodule
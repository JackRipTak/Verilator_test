`include "defines.v"

module decode (
    input clk,
    input wire [`OP_WIDTH] ins,

    output reg [`OP_WIDTH] op,
    output reg [`RADDR_WIDTH] rs_addr,
    output reg [`RADDR_WIDTH] rt_addr,
    output reg [`RADDR_WIDTH] rd_addr,
    output reg [`ALUOP_WIDTH] aluop,
    output reg [`ORI_IMM_WIDTH] imm,
    output reg [`ORI_ADDR_WIDTH] addr
);

    always @(posedge clk) begin
        rs_addr = ins[25:21];
        rt_addr = ins[20:16];
        rd_addr = ins[15:11];
        imm = ins[15:0];
        aluop = ins[5:0];
        addr = ins[25:0];
    end

    
endmodule
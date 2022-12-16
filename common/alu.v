`include "defines.v"


module alu #(
    parameter W = `WORD_WIDTH
) (
    input wire[W-1:0] X,
    input wire[W-1:0] Y,
    input wire[`ALUOP_WIDTH-1:0] op,

    output reg[W-1:0] ans
); 

always @ (*)
begin
    case (op)
        `ALU_ADD: ans=X+Y;
        `ALU_SUB: ans=X-Y;
        `ALU_AND: ans<=X&Y;
        `ALU_OR: ans<=X|Y;
        `ALU_XOR: ans<=X^Y;
        `ALU_SL: ans<=X<<Y;
        `ALU_SR: ans<=X>>Y;


    endcase
end
    
endmodule

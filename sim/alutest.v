`include "defines.v"

`timescale 10ns/1ns

module alu_tb ();

reg [`WORD_WIDTH-1:0] X;
reg [`WORD_WIDTH-1:0] Y;
reg [`ALUOP_WIDTH-1:0] op;
wire [`WORD_WIDTH-1:0] ans ;

alu dut(X,Y,op,ans);

initial begin
    #50 X=`WORD_WIDTH'h0000;
    Y=`WORD_WIDTH'h0001;
    op=`ALUOP_WIDTH'd1;
    #50 X=`WORD_WIDTH'h0110;
    #50 Y=`WORD_WIDTH'h0100;
    #50 op=`WORD_WIDTH'd2;
    #50 $finish;

end

initial begin
    $dumpfile("sim.vcd");
    $dumpvars;
end

endmodule

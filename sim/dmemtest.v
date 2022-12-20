`include "defines.v"

`timescale 10ns/1ns

module data_mem_tb ();

reg clk;
reg [`ADDR_WIDTH-1:0] addr;
reg write;
reg [`WORD_WIDTH-1:0] wdata;
wire [`WORD_WIDTH-1:0] rdata;

data_mem dut(clk,addr,write,wdata,rdata);

always begin
    #10 clk=~clk;
end

initial begin
    clk=0;
    #10; 
    write=1;
    addr=`ADDR_WIDTH'h00000001;
    wdata=`WORD_WIDTH'h00000002;
    #20;
    write=0;
    addr=`ADDR_WIDTH'h00000002;
    #50 $finish;

end

initial begin
    $dumpfile("sim.vcd");
    $dumpvars;
end

endmodule

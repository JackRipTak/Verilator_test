INCLUDES = includes
COMMON = common
SIM = sim

TARGET = target
ALU_TARGET = $(TARGET)/alu_target
DMEM_TARGET = $(TARGET)/dmem_target


alu : $(SIM)/alutest.v $(COMMON)/alu.v
	mkdir -p $(ALU_TARGET)
	iverilog -o $(ALU_TARGET)/sim.vvp -I $(INCLUDES) $^
	cd $(ALU_TARGET) && vvp sim.vvp

dmem : $(SIM)/dmemtest.v $(COMMON)/data_mem.v
	mkdir -p $(DMEM_TARGET)
	iverilog -o $(DMEM_TARGET)/sim.vvp -I $(INCLUDES) $^
	cd $(DMEM_TARGET) && vvp sim.vvp


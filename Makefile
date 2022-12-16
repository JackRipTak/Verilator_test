INCLUDES = includes
COMMON = common
SIM = sim

TARGET = target
ALU_TARGET = $(TARGET)/alu_target


alu : $(SIM)/alutest.v $(COMMON)/alu.v
	mkdir -p $(ALU_TARGET)
	iverilog -o $(ALU_TARGET)/sim.vvp -I $(INCLUDES) $^
	cd $(ALU_TARGET) && vvp sim.vvp 

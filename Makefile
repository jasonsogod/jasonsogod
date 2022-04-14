VERILOG = iverilog
TARGET = simple.vcd
TEMP = temp.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): simple_tb.v simple.v
	$(VERILOG) -o $(TEMP) simple_tb.v simple.v
clean:
	-del $(TARGET)
	-del $(TEMP)
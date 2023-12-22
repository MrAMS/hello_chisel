NAME = Hello
NXDC_FILES = constr/$(NAME).nxdc
INC_PATH += /usr/include/c++/11

VERILATOR = verilator
VERILATOR_CFLAGS += -MMD --build -cc  \
				-O3 --x-assign fast --x-initial fast --noassert

BUILD_DIR = ./build
OBJ_DIR = $(BUILD_DIR)/obj_dir
BIN = $(BUILD_DIR)/$(NAME)

default: $(BIN)

$(shell mkdir -p $(BUILD_DIR))

# constraint file
SRC_AUTO_BIND = $(abspath $(BUILD_DIR)/auto_bind.cpp)
$(SRC_AUTO_BIND): $(NXDC_FILES)
	python3 $(NVBOARD_HOME)/scripts/auto_pin_bind.py $^ $@

# project source
SVSRC = $(abspath ./generated/$(NAME).sv )
CSRCS = $(shell find $(abspath ./csim) -name "*.c" -or -name "*.cc" -or -name "*.cpp")
CSRCS += $(SRC_AUTO_BIND)
INC_PATH += $(abspath ./csim/inc )
SSRCS = $(shell find $(abspath ./src/main ) -name "*.scala")

# rules for NVBoard
include $(NVBOARD_HOME)/scripts/nvboard.mk

# rules for verilator
INCFLAGS = $(addprefix -I, $(INC_PATH))
CFLAGS += $(INCFLAGS) -DTOP_NAME="\"$(NAME)\""
LDFLAGS += -lSDL2 -lSDL2_image

$(SVSRC): $(SSRCS)
	mill $(NAME)

$(BIN): $(SVSRC) $(CSRCS) $(NVBOARD_ARCHIVE)
	@rm -rf $(OBJ_DIR)
	$(VERILATOR) $(VERILATOR_CFLAGS) \
		--top-module $(NAME) $^ \
		$(addprefix -CFLAGS , $(CFLAGS)) $(addprefix -LDFLAGS , $(LDFLAGS)) \
		--Mdir $(OBJ_DIR) --exe -o $(abspath $(BIN))

test:
	mill $(NAME).test

all: default

run: $(BIN)
	@$^

bear:
	@make clean
	@bear -- make

clean:
	-rm -rf $(BUILD_DIR)
	-rm $(SVSRC)

.PHONY: default all clean run bear

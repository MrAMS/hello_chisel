#include <nvboard.h>
#include "marco.h"

#define TOP_MODULE CAT2(V,TOP_NAME)

#include TOSTR(TOP_MODULE.h)

static TOP_MODULE dut;

void nvboard_bind_all_pins(TOP_MODULE* top);

static void single_cycle() {
  dut.clock = 0; dut.eval();
  dut.clock = 1; dut.eval();
}

static void reset(int n) {
  dut.reset = 1;
  while (n -- > 0) single_cycle();
  dut.reset = 0;
}

int main() {
  nvboard_bind_all_pins(&dut);
  nvboard_init();

  reset(10);

  while(1) {
    nvboard_update();
    single_cycle();
  }
}

#include "resistor_color.h"

static const resistor_band_t color_codes_constant[] = {
  BLACK, BROWN, RED,
  ORANGE, YELLOW, GREEN,
  BLUE, VIOLET, GREY, WHITE
 };

const resistor_band_t* colors() {
  return color_codes_constant;
}

int color_code(resistor_band_t code) {
  return (int) code;
}

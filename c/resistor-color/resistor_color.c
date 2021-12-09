#include "resistor_color.h"

resistor_band_t* colors() {
    static resistor_band_t color[TYPES];

    for(int i = BLACK; i < TYPES; ++i){
        color[i] = i;
    }

    return color;
}

int color_code(resistor_band_t code) {
  return (int) code;
}

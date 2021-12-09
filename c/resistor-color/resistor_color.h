#ifndef RESISTOR_COLOR_H
#define RESISTOR_COLOR_H

typedef enum {
  BLACK = 0,
  BROWN,
  RED,
  ORANGE,
  YELLOW,
  GREEN,
  BLUE,
  VIOLET,
  GREY,
  WHITE
} resistor_band_t;

const resistor_band_t* colors();
int color_code(resistor_band_t code);

#endif

#ifndef RESISTOR_COLOR_H
#define RESISTOR_COLOR_H

typedef enum RESISTOR_BAND {
  BLACK = 0,
  BROWN,
  RED,
  ORANGE,
  YELLOW,
  GREEN,
  BLUE,
  VIOLET,
  GREY,
  WHITE,
  TYPES
} resistor_band_t;

resistor_band_t* colors();
int color_code(resistor_band_t code);

#endif

#include <math.h>

#include "armstrong_numbers.h"

bool is_armstrong_number(int candidate) {
  int exponent, final = candidate;
  int sum = 0;

  exponent = floor(log10(candidate) + 1);

  while (candidate > 0) {
    int digit = candidate % 10;
    sum = sum + pow(digit, exponent);
    candidate /= 10;
  }

  return sum == final;
}

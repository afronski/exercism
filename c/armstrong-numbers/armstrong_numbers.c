#include <math.h>

#include "armstrong_numbers.h"

bool is_armstrong_number(int candidate) {
  int remainder, originalNum, n = 0;
  float result = 0.0;

  for (originalNum = candidate; originalNum != 0; ++n) {
    originalNum /= 10;
  }

  for (originalNum = candidate; originalNum != 0; originalNum /= 10) {
    remainder = originalNum % 10;
    result += pow(remainder, n);
  }

  return ((int) result) == candidate;
}

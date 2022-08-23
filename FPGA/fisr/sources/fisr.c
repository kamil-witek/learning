#include "fisr.h"


void fisr (
	float x,
	float *y
  ) {

    float xhalf = 0.5f * x;
    int i = *(int*)&x;            // store floating-point bits in integer
    i = 0x5f3759df - (i >> 1);    // initial guess for Newton's method
    x = *(float*)&i;              // convert new bits into float
    *y = x*(1.5f - xhalf*x*x);     // One round of Newton's method
}

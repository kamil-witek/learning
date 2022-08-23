#include <stdio.h>
#include <stdint.h>

int main(){
	
	float x = 4;
	uint32_t x_hex = *(uint32_t*)&x;
	float x_in = x;
	
	float xhalf = 0.5f * x;
	int i = *(int*)&x;            // store floating-point bits in integer
	
	i = 0x5f3759df - (i >> 1);    // initial guess for Newton's method
	x = *(float*)&i;              // convert new bits into float
	float y = x*(1.5f - xhalf*x*x);     // One round of Newton's method
	uint32_t y_hex = *(uint32_t*)&y;

	printf("in: %f, hex: %x, \nout: %f, hex: %x", x_in, x_hex, y, y_hex);

return 0;
}










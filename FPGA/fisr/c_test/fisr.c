#include <stdio.h>
#include <stdint.h>
#include <math.h>


uint32_t fisr_fpga(uint32_t x_in){
	float x = *(float*)&x_in;					// convert bits into float
	
	float xhalf = 0.5f * x;
	int i = *(int*)&x;					// store floating-point bits in integer
	
	i = 0x5f3759df - (i >> 1);			// initial guess for Newton's method
	x = *(float*)&i;					// convert new bits into float
	float y = x*(1.5f - xhalf*x*x);		// One round of Newton's method
	uint32_t y_hex = *(uint32_t*)&y;
	return y_hex;
}


float fisr(float x){
	return 1/sqrt(x);
}

#define N_VAL 5

int main(){
	
	float x_tab[N_VAL] = {1, 2, 3, 4, 5};
	float y_tab[N_VAL];
	float y_tab_ref[N_VAL];
	
	int i = 0;
	for(i=0 ; i<N_VAL ; i++){
		float x = x_tab[i];
		
		y_tab_ref[i] = fisr(x);
		uint32_t x_int        = *(uint32_t*)&x;					// store floating-point bits in integer
		uint32_t y_int        = fisr_fpga(x_int);
		y_tab[i]     = *(float*)&y_int;				// convert new bits into float
	}
	
	
	
	printf("\nin:\n");
	for(i=0 ; i<N_VAL ; i++){
		printf("%.2f ", x_tab[i]);
	}
	
	printf("\nout ref:\n");
	for(i=0 ; i<N_VAL ; i++){
		printf("%.2f ", y_tab_ref[i]);
	}	
	
	printf("\nout fisr fpga:\n");
	for(i=0 ; i<N_VAL ; i++){
		printf("%.2f ", y_tab[i]);
	}
	
	printf("\nout fisr fpga formated:\n");
	printf("{");
	for(i=0 ; i<N_VAL ; i++){
		printf("\"%.2f \"", y_tab[i]);
		if (i != N_VAL-1){
			printf(", ");
		}
	}
	printf("};");
	
	const char *strings[] = {"one","two","three"};
	printf("\n%s\n", strings[0]);
	
	
	float a = 0.45;
	int b = (int)(a*100);
	int c = (int)(a)*100;
	printf("%d.%02d\n", (int)a, (int)(a*100)-((int)a)*100      );
	printf("%d, %d", b, c);
	
	
return 0;
}










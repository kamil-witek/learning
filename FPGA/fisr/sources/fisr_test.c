#include <stdio.h>
#include <math.h>
#include "fisr.h"




int main () {
  FILE         *fp;
  float x;
  float y_out;
  int i;

  
  x = 0;
  fisr(x, &y_out);

  fp=fopen("out.dat","w");

  // Save the results.
  fprintf(fp,"%f",y_out);

  fclose(fp);
  

  printf ("Comparing against output data \n");
  printf ("%f \n", y_out);
  if (system("diff -w out.dat out.gold.dat")) {

	fprintf(stdout, "*******************************************\n");
	fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
	fprintf(stdout, "*******************************************\n");
     return 0;
  } else {
	fprintf(stdout, "*******************************************\n");
	fprintf(stdout, "PASS: The output matches the golden output!\n");
	fprintf(stdout, "*******************************************\n");
     return 0;
  }
 // return 0;
}

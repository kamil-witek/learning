# 1 "C:/Users/Kamil/Desktop/fisr/sources/fisr.c"
# 1 "C:/Users/Kamil/Desktop/fisr/sources/fisr.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/Kamil/Desktop/fisr/sources/fisr.c" 2
# 1 "C:/Users/Kamil/Desktop/fisr/sources/fisr.h" 1




void fisr (
 float x,
 float *y
  ) ;
# 2 "C:/Users/Kamil/Desktop/fisr/sources/fisr.c" 2


void fisr (
 float x,
 float *y
  ) {

    float xhalf = 0.5f * x;
    int i = *(int*)&x;
    i = 0x5f3759df - (i >> 1);
    x = *(float*)&i;
    *y = x*(1.5f - xhalf*x*x);
}

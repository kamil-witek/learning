#include <iostream>

int main(){
	
	int i = 5;	
	auto j = i++ - 1 + ++i;		//zwróæ 5 (potem dodaj 1), odejmij 1, zwiêksz i, zwróæ i
								//      5                         4          7          7 = 4+7=11

	printf("%d", j);	
return 0;
}

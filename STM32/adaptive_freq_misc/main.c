#include <stdio.h>
#include <string.h>

int main(){
	#define BUFFER_SIZE 20
	
	char test[BUFFER_SIZE];
	test[0] = 'a'; 
	test[1] = 'b'; 
	test[2] = ':'; 
	test[3] = '0'; 
	test[4] = '6'; 
	test[5] = '.'; 
	
	
	char order[10];
	char argmnt[10];
	int  index = 0;
	int  phase = 0;		// 0-order 1-argmnt 2-end
	int i;
	for( i=0 ; i<BUFFER_SIZE ; i++){
		if( test[i] == ':' ){
			phase = 1;
			order[index] = '\0';
			index = 0;
			continue;
		}else if( test[i] == '.' ){
			phase = 2;
			argmnt[index] = '\0';
		}else if (phase == 0){
			order[index] = test[i];
		}else if (phase == 1){
			argmnt[index] = test[i];
		}else if (phase == 2){
			break;
		}
		index++;
	}
	
	char order_set_freq[] = "ab";
	int  argmnt_int = 0;
	
	if(strcmp(order, order_set_freq) == 0){
		argmnt_int = atoi(argmnt);
		printf("SET FREQ, %02x\n", argmnt_int);
	}
	
	printf(">%s<   >%s<", order, argmnt);
	
	
	return 0;
}

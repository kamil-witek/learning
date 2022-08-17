#include <iostream>
#include <cstdlib>
#include <ctime>
#include <conio.h>
#include <stdlib.h>


int generate_number(int min, int max){
	return rand()%(max-min+1)+min;
}


int main(){
	
	srand(time(NULL));
	int right_ans = 0;
	int wrong_ans = 0;
	
	while(true){
		char generated_character = generate_number(97,122);
		char read_character;
		
		std::cout << " " << generated_character << std::endl;
		read_character = _getch();
		system("cls");
		
		std::cout << " +:" << right_ans << ", -:" << wrong_ans << std::endl;
		if( read_character == generated_character ){
			std::cout << "+OK+" << std::endl;
			right_ans++;
		}else{
			std::cout << "----   right: <" << generated_character << ">, wrong: <" << read_character << ">" << std::endl;
			wrong_ans++;
		}
	}
	
	
return 0;
}

#include <iostream>
#include <string>

//TODO: implement modifyString()
//it should modify passed string to text "other string"

void modifyString(std::string& str){
	str = "other string";
}


int main(){
	std::string str{"Some string"};
	modifyString(str);
	std::cout << str << '\n';
return 0;
}

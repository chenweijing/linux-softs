#include <stdio.h>
#include <iostream>
#include <string>
#include <memroy>


using namespace std;



void testFunc(){
	std::string test_str;
	test_str = "hello, 1234.";
}


int main(int argc, char *agrv[]){
	std::cout << "hello, this is only a test!" << std::endl;
	
	testFunc();
	return 0;
}

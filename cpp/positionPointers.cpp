#include <iostream>
#include<fstream>
using namespace std;
int main(){
    ifstream fin("test.txt");
    fin.seekg(-4,ios::end);
}
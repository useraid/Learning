#include <iostream>
#include<fstream>
using namespace std;
int main(){
    ofstream fin("test.txt");
    fin << "added through ofstream";
    fin.close();
}
#include <iostream>
#include<fstream>
using namespace std;
int main() {
    char c;
    ifstream fin("test.txt");
    if(!fin) {
        cout<<"File Does not Exist"; 
    }
    while(!fin.eof()) {
        fin.get(c); 
        cout<<c;
    }
    fin.close();
}
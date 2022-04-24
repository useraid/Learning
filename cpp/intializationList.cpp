#include <iostream>
#include <string.h>
using namespace std;
class cats{
    public:
    string name;
    const int age;

    cats(string n, int a) : age(a), name(n){ 
       // or use  this -> name = name;
    }

    void display(){
        cout<< name << "  " << age;
    }

};

int main(){
    cats meow("siam", 5);
    meow.display();
    return 0;
}
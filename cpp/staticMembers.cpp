#include <iostream>
#include <string.h>
using namespace std;
class cats{
    public:
    string name;
    const int age;
    static int totalCats;

    cats(string n, int a) : age(a), name(n){ 
        totalCats++; // add cats 
       // or use  this -> name = name;
    }

    void display(){
        cout<< name << "  " << age<<endl;
    }

};

int cats::totalCats=0;

int main(){
    cats meow("siam", 5);
    meow.display();
    cout<<cats::totalCats<<endl;
    return 0;
}

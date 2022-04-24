#include <iostream>
#include <string.h>
using namespace std;
class cats{
    private:
    char *name;
    int age;

    public:
    int getAge(){
        return age;
    }
 
    cats(char *name,int age){
        this -> name = new char[strlen(name)+1];
        strcpy(this -> name, name);
        this -> age = age;
    }
    void display(){
        cout <<name<<"  "<<age;
    }

};

int main(){
    char name[] = "siam";
    cats meow(name, 5);
    //cout<<meow.getAge();
    meow.display();
    return 0;
}
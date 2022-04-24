#include <iostream>
using namespace std;
class cats{
    private:
    int id;
    string name;
    string breed;
    int age;

    public:
    int getAge(){
        return age;
    }
 
    cats(int id,string name,string breed,int age){
        this -> id = id;
        this -> name = name;
        this -> breed = breed;
        this -> age = age;
    }

};

int main(){
    cats meow(12, "abcd", "siam", 5);
    cout<<meow.getAge();
    return 0;
}
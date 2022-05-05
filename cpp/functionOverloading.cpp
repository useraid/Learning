#include <iostream>
using namespace std;
class adding{
    public:
    int add(int x, int y){
        return x+y;
    }
    int add(){
        string a = "hey, ";
        string b = "how are you??";
        cout<<a+b;
        return 0;

    
    }
    
};
int main(){
    adding a;
    cout<<a.add(5, 2);
    cout<<a.add()<<endl;

}
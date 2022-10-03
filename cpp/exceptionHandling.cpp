#include <iostream>
using namespace std;
int fun(int x, int y){ 
    if (y==0)
        throw "multiplication with zero leads to zero";
    return (x*y);
    }
int main(){
    try{
        int m = fun(50,0);
        cout << m;
    } catch (const char* msg){ // or use ... 
        cerr <<msg<<endl;
    }

}
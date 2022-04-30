#include <iostream>
#include <vector>
using namespace std;
int main(){
    vector <int> v1;
    v1.push_back(55);
    v1.push_back(69);
    vector<int>::iterator i;
    for (i=v1.begin();i!=v1.end(); ++i){
        cout<<*i<<" ";
    }

}
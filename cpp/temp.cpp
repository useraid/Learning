#include<iostream>
using namespace std;
int main()
{int a,b;
cout<<"Enter the values of a and b";
cin>>a>>b;
int x = a- b;
try
{
if(x!=0)
{cout<<'result(a/x) = '<<a/x<<'\n';
}
else{
throw(x);}}
catch(int i)
{
cout<<'exception caught : 
x = '<<x<<'\n';
}
cout<<'End';
return 0;
}

#include <stdio.h>

int main(){
    int r,rev=0,n = 45644;
    int temp = n;
    while(n>0){
        r = n%10;
        rev = (rev*10)+r;
        n=n/10;   
    }
    if (temp == rev){
        printf("Yea");
    }
    else {
        printf("na");
    }

}
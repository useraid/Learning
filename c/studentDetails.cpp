#include <stdio.h>

struct Student {
    char name[50];
    float marks;
};

int main(){
    int n;
    scanf("%d",&n);
    struct Student student[n] ;   

    for (int i = 0; i < n; i++ ){
        printf("Enter name");
        scanf("%s", &student[i].name);
        printf("Enter Marks");
        scanf("%f", &student[i].marks);
    }

    FILE *file = fopen("meow.txt","w");

    for (int i = 0; i<n; i++){
        fprintf(file, "Name %s, Marks %.2f\n", student[i].name, student[i].marks);
    }

    fclose(file);

    return 0;
}



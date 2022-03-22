#include <iostream>
using namespace std;
class cats {
public:
    string name;
    int age;
    float weight;
    string breed;
    string gender;

    void getdata(){
        cout << "Name: "<<name;
        cout << "\nAge: "<<age<<" Days";
        cout << "\nWeight: "<<weight<<" pounds";
        cout << "\nBreed: "<<breed;
        cout << "\nGender: "<<gender;

    }
    
    cats(string Name, int Age, float Weight, string Breed, string Gender){
        name=Name;
        age=Age;
        weight=Weight;
        breed=Breed;
        gender=Gender;

    }
};
int main(){
    cats info=cats("lucy", 5, 10.2, "Siamese", "Female");
    info.getdata();
    return 0;

}
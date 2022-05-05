#include <iostream>
using namespace std;
class Base {
   public:
    void print() {
        cout << "Base Function" << endl;
    }
};
class Derived : public Base {
   public:
    void print() {
        cout << "Derived Function" << endl;
    }
};
int main() {
    Derived da, db;
    da.print();
    db.Base::print();
    return 0;
}
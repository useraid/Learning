#include <iostream>
using namespace std;
class y {
   private:
    int value;
   public:
    y() : value(5) {}
    void operator ++ () {
        ++value;
    }

    void display() {
        cout << "Value: " << value << endl;
    }
};

int main() {
    y c;
    ++c;

    c.display();
    return 0;
}
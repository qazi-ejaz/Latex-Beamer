#include <iostream>
int x;
using namespace std;
int main ()
{
    cout<<"Enter value of x:\t";
    cin>>x;
switch (x) {
  case 1:
    cout << "x is 1\n";
    break;
  case 2:
    cout << "x is 2\n";
    break;
  default:
    cout << "value of x unknown\n";
  }
}

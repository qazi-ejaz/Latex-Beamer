// strings and NTCS:
#include <iostream>
#include <string>
using namespace std;

int main ()
{
 har myntcs[] = "some text";
string mystring = myntcs;  // convert c-string to string
cout << mystring;          // printed as a library string
cout << mystring.c_str();  // printed as a c-string 
}

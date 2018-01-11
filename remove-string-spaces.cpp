#include <iostream>
#include <string>

using std::string;
using std::remove;
using std::cout;
using std::endl;

string no_space(string x)
{
  string::iterator end_pos = remove(x.begin(), x.end(), ' ');
  x.erase(end_pos, x.end());
  return x;
}

int main() {

  cout << no_space("Hello there, my dear fellow!") << endl;

  return 0;

}

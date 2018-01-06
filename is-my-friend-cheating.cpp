#include <vector>

using namespace std;

class RemovedNumbers {
  public:
    static vector<vector<long long>> removNb(long long n) {
      vector<vector<long long>> result;
      long long sequence_sum = n * (n + 1) / 2;
      for (long long x = 1; x <= n; x++) {
        long long y = (sequence_sum - x) / (x + 1);
        if (y <= n && x * y == sequence_sum - x - y) {
          result.push_back({x, y});
        }
      }
      return result;
    }
};

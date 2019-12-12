#include <algorithm>
#include <cassert>
#include <execution>
#include <vector>

int main() {
  std::vector<int> a(100'000);
  std::vector<int> b(a.size());
  std::copy(std::execution::par_unseq, std::begin(a), std::end(a),
            std::begin(b));
  assert(b == a);
}
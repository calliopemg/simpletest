#include <format>
#include <iostream>
#include <numbers>

auto main() -> int {
  std::cout << std::format("Hello {} - from std::format\n", "World");
  std::cout << std::format("Sqrt(2): {:.2f} - from std::format\n", std::numbers::sqrt2_v<float>);
  return 0;
}

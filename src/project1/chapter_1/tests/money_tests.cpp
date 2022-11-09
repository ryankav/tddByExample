#include <catch2/catch_test_macros.hpp>

#include "money.hpp"

TEST_CASE("Test multiplication", "[Money]") {
  Dollar five(5);
  five.times(2);
  REQUIRE(five.amount == 10);
} 

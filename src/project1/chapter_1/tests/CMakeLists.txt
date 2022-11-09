add_executable(MoneyTest money_tests.cpp)

target_link_libraries(MoneyTest PRIVATE 
  MONEY
  Catch2::Catch2WithMain
)

catch_discover_tests(MoneyTest)

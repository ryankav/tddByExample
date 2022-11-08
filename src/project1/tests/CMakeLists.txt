add_executable(MoneyTest money_tests.cpp)

target_link_libraries(MoneyTest PRIVATE Catch2::Catch2)

catch_discover_tests(MoneyTest)

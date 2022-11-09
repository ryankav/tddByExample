add_library(MONEY STATIC)

target_sources(MONEY_1 PRIVATE
  include/money.hpp
)

set_target_properties(MONEY_1 PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(MONEY_1 PUBLIC include)

if (PACKAGE_TESTS)
  add_subdirectory(tests)
endif()


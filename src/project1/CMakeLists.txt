if (PACKAGE_TESTS)
  add_subdirectory(tests)
endif()

add_library(MONEY STATIC)

target_sources(MONEY PRIVATE
  include/money.hpp
)

set_target_properties(MONEY PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(MONEY PUBLIC include)


if (PACKAGE_TESTS)
  add_subdirectory(tests)
endif()

add_library(Money STATIC public include)


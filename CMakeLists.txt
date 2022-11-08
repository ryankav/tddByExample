cmake_minimum_required(VERSION 3.11..3.24)

project(
  TddByExample
  VERSION 1.0
  DESCRIPTION "Project based on K.Beck book"
  LANGUAGES CXX
)

include(FetchContent)

if(${CMAKE_VERSION} VERSION_LESS 3.14)
  include(cmake/add_FetchContent_MakeAvailable.cmake)
endif()

#if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
  
  #TODO: Look into what the difference of below is
  #ensure that -std=c++xx instead of -std=g++xx

  #  set(CMAKE_CXX_EXTENSIONS OFF)

  #support folders in IDEs
  #set_property(GLOBAL PROPERTY USE_FOLDERS ON)

  #endif()

option(PACKAGE_TESTS "Build the tests" ON)

if(PACKAGE_TESTS)
  FetchContent_Declare(
    Catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG 97c48e0c343d26d50764fafdc90b1e630fbd10ce
  )

  FetchContent_MakeAvailable(Catch2)

  list(APPEND CMAKE_MODULE_PATH ${catch2_SOURCE_DIR}/extras)

  include(CTest)
  include(Catch)
endif()

add_subdirectory(src)


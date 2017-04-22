cmake_minimum_required(VERSION 2.6.4)

project (gtest-cmake)

set(BUILD_SHARED_LIBS OFF)
option(BUILD_SHARED_LIBS "Build shared libraries (DLLs)." OFF)

add_subdirectory(googletest)
add_subdirectory(src)
add_subdirectory(tests)

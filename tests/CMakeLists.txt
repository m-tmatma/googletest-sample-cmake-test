cmake_minimum_required(VERSION 2.6.4)

include (../runtime.cmake)
set( project_name gtest_exe)
project (${project_name})

file(GLOB SRC *.cpp *.h)

include_directories(../googletest/googletest/include)
include_directories(../src)

add_executable(${project_name} ${SRC})
target_link_libraries(${project_name} gtest)
target_link_libraries(${project_name} gtest_main)
target_link_libraries(${project_name} calc)

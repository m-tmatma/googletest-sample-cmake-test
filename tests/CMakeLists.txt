cmake_minimum_required(VERSION 2.6.4)

include (../runtime.cmake)

# define a variable of project name
set( project_name tests)

# define a project name
project (${project_name})

# define a variable SRC with file GLOB
file(GLOB SRC *.cpp *.h)

# add include directories
include_directories(../googletest/googletest/include)
include_directories(../src)

# add include directory for ${project_name}_Export.h
include_directories(${PROJECT_BINARY_DIR}/../src)

# define sources files of an executable
add_executable(${project_name} ${SRC})

# link libraries
target_link_libraries(${project_name} gtest)
target_link_libraries(${project_name} gtest_main)
target_link_libraries(${project_name} calc)

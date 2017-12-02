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

# use shared library version
# this is required when using parameterized test
if (BUILD_SHARED_LIBS)
  # fix linker error "class testing::internal::Mutex testing::internal::g_linked_ptr_mutex"
  target_compile_definitions(${project_name} PUBLIC -DGTEST_LINKED_AS_SHARED_LIBRARY=1)
endif (BUILD_SHARED_LIBS)

# link libraries
target_link_libraries(${project_name} gtest)
target_link_libraries(${project_name} gtest_main)
target_link_libraries(${project_name} calc)

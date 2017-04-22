cmake_minimum_required(VERSION 2.6.4)

set( project_name gtest_exe)
project (${project_name})

file(GLOB SRC *.cpp)

include_directories(../googletest/googletest/include)
include_directories(../src)

########################################################################################################
# see https://cmake.org/Wiki/CMake_FAQ#How_can_I_build_my_MSVC_application_with_a_static_runtime.3F
########################################################################################################
foreach(flag_var
        CMAKE_CXX_FLAGS CMAKE_CXX_FLAGS_DEBUG CMAKE_CXX_FLAGS_RELEASE
        CMAKE_CXX_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_RELWITHDEBINFO)
   if(${flag_var} MATCHES "/MD")
      string(REGEX REPLACE "/MD" "/MT" ${flag_var} "${${flag_var}}")
   endif(${flag_var} MATCHES "/MD")
endforeach(flag_var)

link_directories(${PROJECT_BINARY_DIR}/googletest/googlemock/gtest)
link_directories(${PROJECT_BINARY_DIR}/src)
add_executable(${project_name} ${SRC})
target_link_libraries(${project_name} gtest)
target_link_libraries(${project_name} gtest_main)
target_link_libraries(${project_name} calc)

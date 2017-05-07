cmake_minimum_required(VERSION 3.6)

project (gtest-cmake)

set(BUILD_SHARED_LIBS OFF)
option(BUILD_SHARED_LIBS "Build shared libraries (DLLs)." OFF)
set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT "gtest_exe" )

add_subdirectory(googletest)
add_subdirectory(src)
add_subdirectory(tests)

# turn on solution folder
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# create solution folder
set_target_properties(gmock       PROPERTIES FOLDER GoogleTest)
set_target_properties(gmock_main  PROPERTIES FOLDER GoogleTest)
set_target_properties(gtest       PROPERTIES FOLDER GoogleTest)
set_target_properties(gtest_main  PROPERTIES FOLDER GoogleTest)
set_target_properties(calc        PROPERTIES FOLDER library)
set_target_properties(gtest_exe   PROPERTIES FOLDER executable)

cmake_minimum_required(VERSION 2.6.4)

include (../runtime.cmake)
set( project_name calc)

project (${project_name})

file(GLOB SRC *.cpp *.h)

ADD_LIBRARY(${project_name} STATIC ${SRC})

cmake_minimum_required(VERSION 3.10)

project(Name)

set(PROJECT_NAME Name)

file(GLOB_RECURSE SOURCES 
  src/*.cpp
  )

add_executable(main ${SOURCES})

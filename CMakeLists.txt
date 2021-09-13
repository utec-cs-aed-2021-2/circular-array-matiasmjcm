# cmake_minimum_required(VERSION <specify CMake version here>)
project(circular_array_matiasmjcm)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(circular_array_matiasmjcm
        circulararray.h
        main.cpp
        queue.h
        stack.h
        tester.h)

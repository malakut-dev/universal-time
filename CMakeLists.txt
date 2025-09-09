cmake_minimum_required(VERSION 3.10)
project(universal_time C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_executable(universal_time src/main.c)
target_link_libraries(universal_time m)

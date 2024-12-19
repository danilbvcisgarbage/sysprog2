cmake_minimum_required(VERSION 3.10)

project(calculator)

# Add the include directory
include_directories(include)

# Add the library
add_library(calculator STATIC src/calculator.cpp)

# Add the executable
add_executable(calculator_exec src/main.cpp)

# Link the library to the executable
target_link_libraries(calculator_exec calculator)

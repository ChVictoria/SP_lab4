cmake_minimum_required (VERSION 3.5)

project(calculator)
set(SOURCE calculator.cpp advanced_calculator.cpp)
set(HEADER calculator.h)
set(SOURCE_EXE main.cpp)
set(SOURCE_LIB advanced_calculator.cpp)
add_library(advcalc STATIC ${SOURCE_LIB})
add_executable(calc ${SOURCE_EXE} ${SOURCE} ${HEADER})


cmake_minimum_required(VERSION 3.16)

set(PROJECT_NAME pico_project)

include(pico-sdk/pico_sdk_init.cmake)

project(${PROJECT_NAME})

pico_sdk_init()

file(GLOB PROJECT_SOURCES *.cpp *.c *.cxx)
add_executable(${PROJECT_NAME} ${PROJECT_SOURCES})

# Link with the pico stdlib
target_link_libraries(${PROJECT_NAME} pico_stdlib)
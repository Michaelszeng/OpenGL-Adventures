cmake_minimum_required(VERSION 3.0.0)
project(opengl_adventures VERSION 0.1.0)

include_directories(${CMAKE_SOURCE_DIR}/include)

add_executable(opengl_adventures
    src/main.cpp
    src/glad.c
    src/shaderClass.cpp
)

target_link_libraries(opengl_adventures glfw dl)
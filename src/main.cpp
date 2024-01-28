#include <iostream>
#include <unistd.h>

#include "../include/glad.h"
#include <GLFW/glfw3.h>

int main() {
    glfwInit();

    // GLFW version hints
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow* window = glfwCreateWindow(800, 800, "OpenGL Advetures", NULL, NULL);
    if (window == NULL) {
        std::cout << "Failed to crate GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    while(!glfwWindowShouldClose(window)) {  // wait for window close button to be pressed
        glfwPollEvents();  // make window respond to events like resizing
    }

    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
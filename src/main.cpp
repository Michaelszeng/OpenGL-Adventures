#include <iostream>
#include <unistd.h>

#include "../include/glad.h"
#include <GLFW/glfw3.h>

#include "shaderClass.h"

int main() {
    glfwInit();

    // GLFW version hints
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);

    // Use GLFW core profile
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLfloat vertices[] = {
        -0.6, -0.8, 0.0,
        0.0, 0.9, 0.0,
        0.4, -0.4, 0.0,
    };

    GLFWwindow* window = glfwCreateWindow(800, 800, "OpenGL Advetures", NULL, NULL);
    if (window == NULL) {
        std::cout << "Failed to crate GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    gladLoadGL();  // load configs from glad

    glViewport(0, 0, 800, 800);


    Shader shaderProgram("../shaders/default.vert", "../shaders/default.frag");

    /**
     * Bindings:
     * 
     * Each type of object (i.e. vertex array, buffer, texture) has a binding.
     * 
     * By binding an object, you are making the "current" or "working" object;
     * future operation will modify the "working" object.
     */
    GLuint VAO, VBO;  // Vertex Array Object, Vertex Buffer Object
    glGenVertexArrays(1, &VAO);  // buffer contains only 1 object
    glGenBuffers(1, &VBO);  
    glBindVertexArray(VAO);  // Make VAO the current VABO by binding it
    glBindBuffer(GL_ARRAY_BUFFER, VBO);  // Specify that the VBO is an array buffer
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);  // Set the data in the buffer
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3*sizeof(float), (void*)0);  // Tell OpenGL how to read the data in th ebuffer
    glEnableVertexAttribArray(0);

    // Binding 0 removes the previously bound object. Good practice so we can't accidentally modify old objects.
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);



    glClearColor(0.07, 0.13, 0.17, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);  // Clear then put new color in back buffer
    glfwSwapBuffers(window);  // Swap back buffer to current window

    while(!glfwWindowShouldClose(window)) {  // wait for window close button to be pressed
        // Set background
        glClearColor(0.07, 0.13, 0.17, 1.0);
        glClear(GL_COLOR_BUFFER_BIT);  // Clear then put new color in back buffer

        shaderProgram.Activate();

        glBindVertexArray(VAO);  // Bind the VAO we made as the "working object" that OpenGL will operate on
        glDrawArrays(GL_TRIANGLES, 0, 3);

        glfwSwapBuffers(window);  // Swap back buffer to actually update window

        glfwPollEvents();  // make window respond to events like resizing
    }

    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    shaderProgram.Delete();

    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
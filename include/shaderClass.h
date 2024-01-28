#ifndef SHADER_CLASS_H
#define SHADER_CLASS_H

#include "glad.h"
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <cerrno>

std::string get_fle_contents(const char* filename);

class Shader {
    public:
        GLuint ID;
        Shader(const char* vertexFle, const char* fragmentFile);

        void Activate();
        void Delete();
};

#endif
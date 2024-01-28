# include "../include/shaderClass.h"

// Reads a text file and outputs a string with everything in the text file
std::string get_file_contents(const char* filename)
{
	std::ifstream in(filename, std::ios::binary);
	if (in)
	{
		std::string contents;
		in.seekg(0, std::ios::end);
		contents.resize(in.tellg());
		in.seekg(0, std::ios::beg);
		in.read(&contents[0], contents.size());
		in.close();
		return(contents);
	}
	throw(errno);
}

// Constructor that build the Shader Program from 2 different shaders
Shader::Shader(const char* vertexFile, const char* fragmentFile) {
    // Read vertexFile and fragmentFile and store the strings
	std::string vertexCode = get_file_contents(vertexFile);
	std::string fragmentCode = get_file_contents(fragmentFile);

    // Convert vertexFile and fragmentFile to char arrays using c_str
    const char* vertexSource = vertexCode.c_str();
    const char* fragmentSource = fragmentCode.c_str();

    // Create Vertex Shader object reference, assign its souce, and compile into machine code
    GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexSource, NULL);
    glCompileShader(vertexShader);

    // Create Fragment Shader object reference, assign its souce, and compile into machine code
    GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentSource, NULL);
    glCompileShader(fragmentShader);

    // Create Shader Program to wrap all of the shaders 
    ID = glCreateProgram();
    glAttachShader(ID, vertexShader);
    glAttachShader(ID, fragmentShader);
    glLinkProgram(ID);

    // Now that Shader objects are part of the Shader Program, delete them
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
}

void Shader::Activate() {
	glUseProgram(ID);
}

void Shader::Delete() {
	glDeleteProgram(ID);
}
# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/michaelszeng/OpenGL-Adventures

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/michaelszeng/OpenGL-Adventures/build

# Include any dependencies generated for this target.
include CMakeFiles/opengl_adventures.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/opengl_adventures.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opengl_adventures.dir/flags.make

CMakeFiles/opengl_adventures.dir/src/main.cpp.o: CMakeFiles/opengl_adventures.dir/flags.make
CMakeFiles/opengl_adventures.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/michaelszeng/OpenGL-Adventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/opengl_adventures.dir/src/main.cpp.o"
	/usr/bin/clang++-12  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_adventures.dir/src/main.cpp.o -c /home/michaelszeng/OpenGL-Adventures/src/main.cpp

CMakeFiles/opengl_adventures.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_adventures.dir/src/main.cpp.i"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/michaelszeng/OpenGL-Adventures/src/main.cpp > CMakeFiles/opengl_adventures.dir/src/main.cpp.i

CMakeFiles/opengl_adventures.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_adventures.dir/src/main.cpp.s"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/michaelszeng/OpenGL-Adventures/src/main.cpp -o CMakeFiles/opengl_adventures.dir/src/main.cpp.s

CMakeFiles/opengl_adventures.dir/src/glad.c.o: CMakeFiles/opengl_adventures.dir/flags.make
CMakeFiles/opengl_adventures.dir/src/glad.c.o: ../src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/michaelszeng/OpenGL-Adventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/opengl_adventures.dir/src/glad.c.o"
	/usr/bin/clang-12 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/opengl_adventures.dir/src/glad.c.o   -c /home/michaelszeng/OpenGL-Adventures/src/glad.c

CMakeFiles/opengl_adventures.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opengl_adventures.dir/src/glad.c.i"
	/usr/bin/clang-12 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/michaelszeng/OpenGL-Adventures/src/glad.c > CMakeFiles/opengl_adventures.dir/src/glad.c.i

CMakeFiles/opengl_adventures.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opengl_adventures.dir/src/glad.c.s"
	/usr/bin/clang-12 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/michaelszeng/OpenGL-Adventures/src/glad.c -o CMakeFiles/opengl_adventures.dir/src/glad.c.s

CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.o: CMakeFiles/opengl_adventures.dir/flags.make
CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.o: ../src/shaderClass.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/michaelszeng/OpenGL-Adventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.o"
	/usr/bin/clang++-12  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.o -c /home/michaelszeng/OpenGL-Adventures/src/shaderClass.cpp

CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.i"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/michaelszeng/OpenGL-Adventures/src/shaderClass.cpp > CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.i

CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.s"
	/usr/bin/clang++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/michaelszeng/OpenGL-Adventures/src/shaderClass.cpp -o CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.s

# Object files for target opengl_adventures
opengl_adventures_OBJECTS = \
"CMakeFiles/opengl_adventures.dir/src/main.cpp.o" \
"CMakeFiles/opengl_adventures.dir/src/glad.c.o" \
"CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.o"

# External object files for target opengl_adventures
opengl_adventures_EXTERNAL_OBJECTS =

opengl_adventures: CMakeFiles/opengl_adventures.dir/src/main.cpp.o
opengl_adventures: CMakeFiles/opengl_adventures.dir/src/glad.c.o
opengl_adventures: CMakeFiles/opengl_adventures.dir/src/shaderClass.cpp.o
opengl_adventures: CMakeFiles/opengl_adventures.dir/build.make
opengl_adventures: CMakeFiles/opengl_adventures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/michaelszeng/OpenGL-Adventures/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable opengl_adventures"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opengl_adventures.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opengl_adventures.dir/build: opengl_adventures

.PHONY : CMakeFiles/opengl_adventures.dir/build

CMakeFiles/opengl_adventures.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opengl_adventures.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opengl_adventures.dir/clean

CMakeFiles/opengl_adventures.dir/depend:
	cd /home/michaelszeng/OpenGL-Adventures/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/michaelszeng/OpenGL-Adventures /home/michaelszeng/OpenGL-Adventures /home/michaelszeng/OpenGL-Adventures/build /home/michaelszeng/OpenGL-Adventures/build /home/michaelszeng/OpenGL-Adventures/build/CMakeFiles/opengl_adventures.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opengl_adventures.dir/depend


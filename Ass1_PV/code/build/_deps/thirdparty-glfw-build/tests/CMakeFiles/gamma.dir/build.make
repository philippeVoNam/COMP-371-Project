# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build

# Include any dependencies generated for this target.
include _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/depend.make

# Include the progress variables for this target.
include _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/flags.make

_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/gamma.c.o: _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/flags.make
_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/gamma.c.o: _deps/thirdparty-glfw-src/tests/gamma.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/gamma.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gamma.dir/gamma.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/tests/gamma.c

_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/gamma.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gamma.dir/gamma.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/tests/gamma.c > CMakeFiles/gamma.dir/gamma.c.i

_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/gamma.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gamma.dir/gamma.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/tests/gamma.c -o CMakeFiles/gamma.dir/gamma.c.s

_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o: _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/flags.make
_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o: _deps/thirdparty-glfw-src/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gamma.dir/__/deps/glad_gl.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/deps/glad_gl.c

_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gamma.dir/__/deps/glad_gl.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/deps/glad_gl.c > CMakeFiles/gamma.dir/__/deps/glad_gl.c.i

_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gamma.dir/__/deps/glad_gl.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/deps/glad_gl.c -o CMakeFiles/gamma.dir/__/deps/glad_gl.c.s

# Object files for target gamma
gamma_OBJECTS = \
"CMakeFiles/gamma.dir/gamma.c.o" \
"CMakeFiles/gamma.dir/__/deps/glad_gl.c.o"

# External object files for target gamma
gamma_EXTERNAL_OBJECTS =

_deps/thirdparty-glfw-build/tests/gamma: _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/gamma.c.o
_deps/thirdparty-glfw-build/tests/gamma: _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/__/deps/glad_gl.c.o
_deps/thirdparty-glfw-build/tests/gamma: _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/build.make
_deps/thirdparty-glfw-build/tests/gamma: _deps/thirdparty-glfw-build/src/libglfw3.a
_deps/thirdparty-glfw-build/tests/gamma: /usr/lib/libm.so
_deps/thirdparty-glfw-build/tests/gamma: /usr/lib/librt.so
_deps/thirdparty-glfw-build/tests/gamma: /usr/lib/libm.so
_deps/thirdparty-glfw-build/tests/gamma: /usr/lib/libX11.so
_deps/thirdparty-glfw-build/tests/gamma: _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable gamma"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gamma.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/build: _deps/thirdparty-glfw-build/tests/gamma

.PHONY : _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/build

_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/clean:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && $(CMAKE_COMMAND) -P CMakeFiles/gamma.dir/cmake_clean.cmake
.PHONY : _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/clean

_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/depend:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/tests /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/thirdparty-glfw-build/tests/CMakeFiles/gamma.dir/depend


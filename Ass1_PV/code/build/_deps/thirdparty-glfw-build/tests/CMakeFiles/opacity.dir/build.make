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
include _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/depend.make

# Include the progress variables for this target.
include _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/flags.make

_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/opacity.c.o: _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/flags.make
_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/opacity.c.o: _deps/thirdparty-glfw-src/tests/opacity.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/opacity.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/opacity.dir/opacity.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/tests/opacity.c

_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/opacity.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opacity.dir/opacity.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/tests/opacity.c > CMakeFiles/opacity.dir/opacity.c.i

_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/opacity.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opacity.dir/opacity.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/tests/opacity.c -o CMakeFiles/opacity.dir/opacity.c.s

_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o: _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/flags.make
_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o: _deps/thirdparty-glfw-src/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/opacity.dir/__/deps/glad_gl.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/deps/glad_gl.c

_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opacity.dir/__/deps/glad_gl.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/deps/glad_gl.c > CMakeFiles/opacity.dir/__/deps/glad_gl.c.i

_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opacity.dir/__/deps/glad_gl.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/deps/glad_gl.c -o CMakeFiles/opacity.dir/__/deps/glad_gl.c.s

# Object files for target opacity
opacity_OBJECTS = \
"CMakeFiles/opacity.dir/opacity.c.o" \
"CMakeFiles/opacity.dir/__/deps/glad_gl.c.o"

# External object files for target opacity
opacity_EXTERNAL_OBJECTS =

_deps/thirdparty-glfw-build/tests/opacity: _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/opacity.c.o
_deps/thirdparty-glfw-build/tests/opacity: _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/__/deps/glad_gl.c.o
_deps/thirdparty-glfw-build/tests/opacity: _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/build.make
_deps/thirdparty-glfw-build/tests/opacity: _deps/thirdparty-glfw-build/src/libglfw3.a
_deps/thirdparty-glfw-build/tests/opacity: /usr/lib/libm.so
_deps/thirdparty-glfw-build/tests/opacity: /usr/lib/librt.so
_deps/thirdparty-glfw-build/tests/opacity: /usr/lib/libm.so
_deps/thirdparty-glfw-build/tests/opacity: /usr/lib/libX11.so
_deps/thirdparty-glfw-build/tests/opacity: _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable opacity"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opacity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/build: _deps/thirdparty-glfw-build/tests/opacity

.PHONY : _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/build

_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/clean:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests && $(CMAKE_COMMAND) -P CMakeFiles/opacity.dir/cmake_clean.cmake
.PHONY : _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/clean

_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/depend:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/tests /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/thirdparty-glfw-build/tests/CMakeFiles/opacity.dir/depend


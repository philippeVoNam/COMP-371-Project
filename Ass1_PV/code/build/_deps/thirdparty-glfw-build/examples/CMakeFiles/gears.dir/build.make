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
include _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/depend.make

# Include the progress variables for this target.
include _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/flags.make

_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/gears.c.o: _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/flags.make
_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/gears.c.o: _deps/thirdparty-glfw-src/examples/gears.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/gears.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gears.dir/gears.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/examples/gears.c

_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/gears.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gears.dir/gears.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/examples/gears.c > CMakeFiles/gears.dir/gears.c.i

_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/gears.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gears.dir/gears.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/examples/gears.c -o CMakeFiles/gears.dir/gears.c.s

_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/__/deps/glad_gl.c.o: _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/flags.make
_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/__/deps/glad_gl.c.o: _deps/thirdparty-glfw-src/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/__/deps/glad_gl.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gears.dir/__/deps/glad_gl.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/deps/glad_gl.c

_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gears.dir/__/deps/glad_gl.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/deps/glad_gl.c > CMakeFiles/gears.dir/__/deps/glad_gl.c.i

_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gears.dir/__/deps/glad_gl.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/deps/glad_gl.c -o CMakeFiles/gears.dir/__/deps/glad_gl.c.s

# Object files for target gears
gears_OBJECTS = \
"CMakeFiles/gears.dir/gears.c.o" \
"CMakeFiles/gears.dir/__/deps/glad_gl.c.o"

# External object files for target gears
gears_EXTERNAL_OBJECTS =

_deps/thirdparty-glfw-build/examples/gears: _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/gears.c.o
_deps/thirdparty-glfw-build/examples/gears: _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/__/deps/glad_gl.c.o
_deps/thirdparty-glfw-build/examples/gears: _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/build.make
_deps/thirdparty-glfw-build/examples/gears: _deps/thirdparty-glfw-build/src/libglfw3.a
_deps/thirdparty-glfw-build/examples/gears: /usr/lib/libm.so
_deps/thirdparty-glfw-build/examples/gears: /usr/lib/librt.so
_deps/thirdparty-glfw-build/examples/gears: /usr/lib/libm.so
_deps/thirdparty-glfw-build/examples/gears: /usr/lib/libX11.so
_deps/thirdparty-glfw-build/examples/gears: _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable gears"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gears.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/build: _deps/thirdparty-glfw-build/examples/gears

.PHONY : _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/build

_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/clean:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples && $(CMAKE_COMMAND) -P CMakeFiles/gears.dir/cmake_clean.cmake
.PHONY : _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/clean

_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/depend:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-src/examples /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/_deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/thirdparty-glfw-build/examples/CMakeFiles/gears.dir/depend


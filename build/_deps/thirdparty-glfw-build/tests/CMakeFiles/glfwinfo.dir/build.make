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
CMAKE_SOURCE_DIR = /home/namv/Documents/School/Winter-2021/COMP-371/Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/namv/Documents/School/Winter-2021/COMP-371/Project/build

# Include any dependencies generated for this target.
include _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/depend.make

# Include the progress variables for this target.
include _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/flags.make

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/flags.make
_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o: _deps/thirdparty-glfw-src/tests/glfwinfo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/glfwinfo.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/tests/glfwinfo.c

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/glfwinfo.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/tests/glfwinfo.c > CMakeFiles/glfwinfo.dir/glfwinfo.c.i

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/glfwinfo.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/tests/glfwinfo.c -o CMakeFiles/glfwinfo.dir/glfwinfo.c.s

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/flags.make
_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o: _deps/thirdparty-glfw-src/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/deps/getopt.c

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/deps/getopt.c > CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/deps/getopt.c -o CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/flags.make
_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o: _deps/thirdparty-glfw-src/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/deps/glad_gl.c

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/deps/glad_gl.c > CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.i

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/deps/glad_gl.c -o CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.s

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/flags.make
_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o: _deps/thirdparty-glfw-src/deps/glad_vulkan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/deps/glad_vulkan.c

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.i"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/deps/glad_vulkan.c > CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.i

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.s"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/deps/glad_vulkan.c -o CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.s

# Object files for target glfwinfo
glfwinfo_OBJECTS = \
"CMakeFiles/glfwinfo.dir/glfwinfo.c.o" \
"CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o" \
"CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o" \
"CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o"

# External object files for target glfwinfo
glfwinfo_EXTERNAL_OBJECTS =

_deps/thirdparty-glfw-build/tests/glfwinfo: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o
_deps/thirdparty-glfw-build/tests/glfwinfo: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o
_deps/thirdparty-glfw-build/tests/glfwinfo: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o
_deps/thirdparty-glfw-build/tests/glfwinfo: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o
_deps/thirdparty-glfw-build/tests/glfwinfo: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/build.make
_deps/thirdparty-glfw-build/tests/glfwinfo: _deps/thirdparty-glfw-build/src/libglfw3.a
_deps/thirdparty-glfw-build/tests/glfwinfo: /usr/lib/libm.so
_deps/thirdparty-glfw-build/tests/glfwinfo: /usr/lib/librt.so
_deps/thirdparty-glfw-build/tests/glfwinfo: /usr/lib/libm.so
_deps/thirdparty-glfw-build/tests/glfwinfo: /usr/lib/libX11.so
_deps/thirdparty-glfw-build/tests/glfwinfo: _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable glfwinfo"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfwinfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/build: _deps/thirdparty-glfw-build/tests/glfwinfo

.PHONY : _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/build

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/clean:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests && $(CMAKE_COMMAND) -P CMakeFiles/glfwinfo.dir/cmake_clean.cmake
.PHONY : _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/clean

_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/depend:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/namv/Documents/School/Winter-2021/COMP-371/Project /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-src/tests /home/namv/Documents/School/Winter-2021/COMP-371/Project/build /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/thirdparty-glfw-build/tests/CMakeFiles/glfwinfo.dir/depend

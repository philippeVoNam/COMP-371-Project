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
include CMakeFiles/lab03.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab03.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab03.dir/flags.make

CMakeFiles/lab03.dir/src/lab03.cpp.o: CMakeFiles/lab03.dir/flags.make
CMakeFiles/lab03.dir/src/lab03.cpp.o: ../src/lab03.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab03.dir/src/lab03.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab03.dir/src/lab03.cpp.o -c /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/src/lab03.cpp

CMakeFiles/lab03.dir/src/lab03.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab03.dir/src/lab03.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/src/lab03.cpp > CMakeFiles/lab03.dir/src/lab03.cpp.i

CMakeFiles/lab03.dir/src/lab03.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab03.dir/src/lab03.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/src/lab03.cpp -o CMakeFiles/lab03.dir/src/lab03.cpp.s

# Object files for target lab03
lab03_OBJECTS = \
"CMakeFiles/lab03.dir/src/lab03.cpp.o"

# External object files for target lab03
lab03_EXTERNAL_OBJECTS =

lab03: CMakeFiles/lab03.dir/src/lab03.cpp.o
lab03: CMakeFiles/lab03.dir/build.make
lab03: lib/libGLEWd.a
lab03: _deps/thirdparty-glfw-build/src/libglfw3.a
lab03: /usr/lib/libGLX.so
lab03: /usr/lib/libOpenGL.so
lab03: /usr/lib/libOpenGL.so
lab03: /usr/lib/libGLX.so
lab03: /usr/lib/libGLU.so
lab03: /usr/lib/librt.so
lab03: /usr/lib/libm.so
lab03: /usr/lib/libX11.so
lab03: CMakeFiles/lab03.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lab03"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab03.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab03.dir/build: lab03

.PHONY : CMakeFiles/lab03.dir/build

CMakeFiles/lab03.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab03.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab03.dir/clean

CMakeFiles/lab03.dir/depend:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build /home/namv/Documents/School/Winter-2021/COMP-371/Lab/Lab03/code/build/CMakeFiles/lab03.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab03.dir/depend

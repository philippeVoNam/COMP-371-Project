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
CMAKE_SOURCE_DIR = /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild

# Utility rule file for thirdparty-glew-populate.

# Include the progress variables for this target.
include CMakeFiles/thirdparty-glew-populate.dir/progress.make

CMakeFiles/thirdparty-glew-populate: CMakeFiles/thirdparty-glew-populate-complete


CMakeFiles/thirdparty-glew-populate-complete: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-install
CMakeFiles/thirdparty-glew-populate-complete: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-mkdir
CMakeFiles/thirdparty-glew-populate-complete: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-download
CMakeFiles/thirdparty-glew-populate-complete: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-patch
CMakeFiles/thirdparty-glew-populate-complete: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-configure
CMakeFiles/thirdparty-glew-populate-complete: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-build
CMakeFiles/thirdparty-glew-populate-complete: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-install
CMakeFiles/thirdparty-glew-populate-complete: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'thirdparty-glew-populate'"
	/usr/bin/cmake -E make_directory /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles/thirdparty-glew-populate-complete
	/usr/bin/cmake -E touch /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-done

thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-install: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'thirdparty-glew-populate'"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-build && /usr/bin/cmake -E echo_append
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-build && /usr/bin/cmake -E touch /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-install

thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'thirdparty-glew-populate'"
	/usr/bin/cmake -E make_directory /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-src
	/usr/bin/cmake -E make_directory /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-build
	/usr/bin/cmake -E make_directory /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix
	/usr/bin/cmake -E make_directory /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp
	/usr/bin/cmake -E make_directory /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src
	/usr/bin/cmake -E make_directory /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp
	/usr/bin/cmake -E touch /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-mkdir

thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-download: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-urlinfo.txt
thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-download: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (verify and extract) for 'thirdparty-glew-populate'"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps && /usr/bin/cmake -P /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/verify-thirdparty-glew-populate.cmake
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps && /usr/bin/cmake -P /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/extract-thirdparty-glew-populate.cmake
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps && /usr/bin/cmake -E touch /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-download

thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-patch: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No patch step for 'thirdparty-glew-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-patch

thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-configure: thirdparty-glew-populate-prefix/tmp/thirdparty-glew-populate-cfgcmd.txt
thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-configure: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No configure step for 'thirdparty-glew-populate'"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-build && /usr/bin/cmake -E echo_append
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-build && /usr/bin/cmake -E touch /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-configure

thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-build: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No build step for 'thirdparty-glew-populate'"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-build && /usr/bin/cmake -E echo_append
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-build && /usr/bin/cmake -E touch /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-build

thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-test: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'thirdparty-glew-populate'"
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-build && /usr/bin/cmake -E echo_append
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-build && /usr/bin/cmake -E touch /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-test

thirdparty-glew-populate: CMakeFiles/thirdparty-glew-populate
thirdparty-glew-populate: CMakeFiles/thirdparty-glew-populate-complete
thirdparty-glew-populate: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-build
thirdparty-glew-populate: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-configure
thirdparty-glew-populate: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-download
thirdparty-glew-populate: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-install
thirdparty-glew-populate: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-mkdir
thirdparty-glew-populate: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-patch
thirdparty-glew-populate: thirdparty-glew-populate-prefix/src/thirdparty-glew-populate-stamp/thirdparty-glew-populate-test
thirdparty-glew-populate: CMakeFiles/thirdparty-glew-populate.dir/build.make

.PHONY : thirdparty-glew-populate

# Rule to build all files generated by this target.
CMakeFiles/thirdparty-glew-populate.dir/build: thirdparty-glew-populate

.PHONY : CMakeFiles/thirdparty-glew-populate.dir/build

CMakeFiles/thirdparty-glew-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/thirdparty-glew-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/thirdparty-glew-populate.dir/clean

CMakeFiles/thirdparty-glew-populate.dir/depend:
	cd /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild /home/namv/Documents/School/Winter-2021/COMP-371/Project/build/_deps/thirdparty-glew-subbuild/CMakeFiles/thirdparty-glew-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/thirdparty-glew-populate.dir/depend

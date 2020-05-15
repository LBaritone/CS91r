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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.16.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.16.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build"

# Include any dependencies generated for this target.
include software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/depend.make

# Include the progress variables for this target.
include software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/progress.make

# Include the compile flags for this target's objects.
include software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/flags.make

software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/domset.cc.o: software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/flags.make
software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/domset.cc.o: /Users/lucas/OneDrive\ -\ Harvard\ University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering/domSetLibrary/domset.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/domset.cc.o"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering/domSetLibrary" && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/domset.dir/domset.cc.o -c "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering/domSetLibrary/domset.cc"

software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/domset.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/domset.dir/domset.cc.i"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering/domSetLibrary" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering/domSetLibrary/domset.cc" > CMakeFiles/domset.dir/domset.cc.i

software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/domset.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/domset.dir/domset.cc.s"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering/domSetLibrary" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering/domSetLibrary/domset.cc" -o CMakeFiles/domset.dir/domset.cc.s

# Object files for target domset
domset_OBJECTS = \
"CMakeFiles/domset.dir/domset.cc.o"

# External object files for target domset
domset_EXTERNAL_OBJECTS =

Darwin-x86_64-RELEASE/libdomset.a: software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/domset.cc.o
Darwin-x86_64-RELEASE/libdomset.a: software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/build.make
Darwin-x86_64-RELEASE/libdomset.a: software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../Darwin-x86_64-RELEASE/libdomset.a"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering/domSetLibrary" && $(CMAKE_COMMAND) -P CMakeFiles/domset.dir/cmake_clean_target.cmake
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering/domSetLibrary" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/domset.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/build: Darwin-x86_64-RELEASE/libdomset.a

.PHONY : software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/build

software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/clean:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering/domSetLibrary" && $(CMAKE_COMMAND) -P CMakeFiles/domset.dir/cmake_clean.cmake
.PHONY : software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/clean

software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/depend:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering/domSetLibrary" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering/domSetLibrary" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : software/SfM/clustering/domSetLibrary/CMakeFiles/domset.dir/depend


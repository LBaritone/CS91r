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
include software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/depend.make

# Include the progress variables for this target.
include software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/progress.make

# Include the compile flags for this target's objects.
include software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/flags.make

software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.o: software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/flags.make
software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.o: /Users/lucas/OneDrive\ -\ Harvard\ University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering/main_ComputeClusters.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.o"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering" && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.o -c "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering/main_ComputeClusters.cpp"

software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.i"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering/main_ComputeClusters.cpp" > CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.i

software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.s"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering/main_ComputeClusters.cpp" -o CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.s

# Object files for target openMVG_main_ComputeClusters
openMVG_main_ComputeClusters_OBJECTS = \
"CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.o"

# External object files for target openMVG_main_ComputeClusters
openMVG_main_ComputeClusters_EXTERNAL_OBJECTS =

Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/main_ComputeClusters.cpp.o
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/build.make
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_system.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_image.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_features.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_sfm.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libdomset.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_stlplus.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_system.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_image.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: /usr/local/lib/libjpeg.dylib
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: /usr/local/lib/libpng.dylib
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: /usr/lib/libz.dylib
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: /usr/local/lib/libtiff.dylib
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_geometry.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_lInftyComputerVision.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_multiview.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_lemon.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: third_party/ceres-solver/lib/libopenMVG_ceres.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_cxsparse.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_linearProgramming.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_numeric.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/liblib_clp.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/liblib_OsiClpSolver.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/liblib_CoinUtils.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/liblib_Osi.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_matching.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_features.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_fast.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: Darwin-x86_64-RELEASE/libopenMVG_stlplus.a
Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters: software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openMVG_main_ComputeClusters.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/build: Darwin-x86_64-RELEASE/openMVG_main_ComputeClusters

.PHONY : software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/build

software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/clean:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering" && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_main_ComputeClusters.dir/cmake_clean.cmake
.PHONY : software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/clean

software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/depend:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/clustering" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : software/SfM/clustering/CMakeFiles/openMVG_main_ComputeClusters.dir/depend


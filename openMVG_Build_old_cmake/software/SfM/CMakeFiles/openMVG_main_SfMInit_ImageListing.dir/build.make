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
include software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/depend.make

# Include the progress variables for this target.
include software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/progress.make

# Include the compile flags for this target's objects.
include software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/flags.make

software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.o: software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/flags.make
software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.o: /Users/lucas/OneDrive\ -\ Harvard\ University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/main_SfMInit_ImageListing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.o"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM" && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.o -c "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/main_SfMInit_ImageListing.cpp"

software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.i"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/main_SfMInit_ImageListing.cpp" > CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.i

software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.s"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM/main_SfMInit_ImageListing.cpp" -o CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.s

# Object files for target openMVG_main_SfMInit_ImageListing
openMVG_main_SfMInit_ImageListing_OBJECTS = \
"CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.o"

# External object files for target openMVG_main_SfMInit_ImageListing
openMVG_main_SfMInit_ImageListing_EXTERNAL_OBJECTS =

Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/main_SfMInit_ImageListing.cpp.o
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/build.make
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_system.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_image.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_features.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_sfm.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_exif.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_stlplus.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_system.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_image.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: /usr/local/lib/libjpeg.dylib
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: /usr/local/lib/libpng.dylib
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: /usr/lib/libz.dylib
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: /usr/local/lib/libtiff.dylib
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_geometry.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_matching.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_features.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_fast.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_stlplus.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_lInftyComputerVision.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_multiview.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_lemon.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: third_party/ceres-solver/lib/libopenMVG_ceres.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_cxsparse.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_linearProgramming.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_numeric.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/liblib_clp.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/liblib_OsiClpSolver.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/liblib_CoinUtils.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/liblib_Osi.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: Darwin-x86_64-RELEASE/libopenMVG_easyexif.a
Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing: software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/build: Darwin-x86_64-RELEASE/openMVG_main_SfMInit_ImageListing

.PHONY : software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/build

software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/clean:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM" && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/cmake_clean.cmake
.PHONY : software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/clean

software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/depend:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : software/SfM/CMakeFiles/openMVG_main_SfMInit_ImageListing.dir/depend


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
include openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/depend.make

# Include the progress variables for this target.
include openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/progress.make

# Include the compile flags for this target's objects.
include openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/flags.make

openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.o: openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/flags.make
openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.o: /Users/lucas/OneDrive\ -\ Harvard\ University/school/Senior/Spring/CS91r/openMVG/src/openMVG_Samples/image_spherical_to_pinholes/main_pano_converter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.o"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG_Samples/image_spherical_to_pinholes" && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.o -c "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG_Samples/image_spherical_to_pinholes/main_pano_converter.cpp"

openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.i"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG_Samples/image_spherical_to_pinholes" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG_Samples/image_spherical_to_pinholes/main_pano_converter.cpp" > CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.i

openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.s"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG_Samples/image_spherical_to_pinholes" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG_Samples/image_spherical_to_pinholes/main_pano_converter.cpp" -o CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.s

# Object files for target openMVG_sample_pano_converter
openMVG_sample_pano_converter_OBJECTS = \
"CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.o"

# External object files for target openMVG_sample_pano_converter
openMVG_sample_pano_converter_EXTERNAL_OBJECTS =

Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/main_pano_converter.cpp.o
Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/build.make
Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: Darwin-x86_64-RELEASE/libopenMVG_image.a
Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: Darwin-x86_64-RELEASE/libopenMVG_stlplus.a
Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: Darwin-x86_64-RELEASE/libopenMVG_numeric.a
Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: /usr/local/lib/libjpeg.dylib
Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: /usr/local/lib/libpng.dylib
Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: /usr/lib/libz.dylib
Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: /usr/local/lib/libtiff.dylib
Darwin-x86_64-RELEASE/openMVG_sample_pano_converter: openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../Darwin-x86_64-RELEASE/openMVG_sample_pano_converter"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG_Samples/image_spherical_to_pinholes" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openMVG_sample_pano_converter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/build: Darwin-x86_64-RELEASE/openMVG_sample_pano_converter

.PHONY : openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/build

openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/clean:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG_Samples/image_spherical_to_pinholes" && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_sample_pano_converter.dir/cmake_clean.cmake
.PHONY : openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/clean

openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/depend:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG_Samples/image_spherical_to_pinholes" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG_Samples/image_spherical_to_pinholes" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : openMVG_Samples/image_spherical_to_pinholes/CMakeFiles/openMVG_sample_pano_converter.dir/depend


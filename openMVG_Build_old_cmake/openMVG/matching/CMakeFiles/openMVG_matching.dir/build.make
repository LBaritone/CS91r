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
include openMVG/matching/CMakeFiles/openMVG_matching.dir/depend.make

# Include the progress variables for this target.
include openMVG/matching/CMakeFiles/openMVG_matching.dir/progress.make

# Include the compile flags for this target's objects.
include openMVG/matching/CMakeFiles/openMVG_matching.dir/flags.make

openMVG/matching/CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.o: openMVG/matching/CMakeFiles/openMVG_matching.dir/flags.make
openMVG/matching/CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.o: /Users/lucas/OneDrive\ -\ Harvard\ University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/indMatch_utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openMVG/matching/CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.o"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.o -c "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/indMatch_utils.cpp"

openMVG/matching/CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.i"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/indMatch_utils.cpp" > CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.i

openMVG/matching/CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.s"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/indMatch_utils.cpp" -o CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.s

openMVG/matching/CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.o: openMVG/matching/CMakeFiles/openMVG_matching.dir/flags.make
openMVG/matching/CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.o: /Users/lucas/OneDrive\ -\ Harvard\ University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/regions_matcher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object openMVG/matching/CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.o"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.o -c "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/regions_matcher.cpp"

openMVG/matching/CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.i"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/regions_matcher.cpp" > CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.i

openMVG/matching/CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.s"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/regions_matcher.cpp" -o CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.s

openMVG/matching/CMakeFiles/openMVG_matching.dir/svg_matches.cpp.o: openMVG/matching/CMakeFiles/openMVG_matching.dir/flags.make
openMVG/matching/CMakeFiles/openMVG_matching.dir/svg_matches.cpp.o: /Users/lucas/OneDrive\ -\ Harvard\ University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/svg_matches.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object openMVG/matching/CMakeFiles/openMVG_matching.dir/svg_matches.cpp.o"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openMVG_matching.dir/svg_matches.cpp.o -c "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/svg_matches.cpp"

openMVG/matching/CMakeFiles/openMVG_matching.dir/svg_matches.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openMVG_matching.dir/svg_matches.cpp.i"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/svg_matches.cpp" > CMakeFiles/openMVG_matching.dir/svg_matches.cpp.i

openMVG/matching/CMakeFiles/openMVG_matching.dir/svg_matches.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openMVG_matching.dir/svg_matches.cpp.s"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching/svg_matches.cpp" -o CMakeFiles/openMVG_matching.dir/svg_matches.cpp.s

# Object files for target openMVG_matching
openMVG_matching_OBJECTS = \
"CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.o" \
"CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.o" \
"CMakeFiles/openMVG_matching.dir/svg_matches.cpp.o"

# External object files for target openMVG_matching
openMVG_matching_EXTERNAL_OBJECTS =

Darwin-x86_64-RELEASE/libopenMVG_matching.a: openMVG/matching/CMakeFiles/openMVG_matching.dir/indMatch_utils.cpp.o
Darwin-x86_64-RELEASE/libopenMVG_matching.a: openMVG/matching/CMakeFiles/openMVG_matching.dir/regions_matcher.cpp.o
Darwin-x86_64-RELEASE/libopenMVG_matching.a: openMVG/matching/CMakeFiles/openMVG_matching.dir/svg_matches.cpp.o
Darwin-x86_64-RELEASE/libopenMVG_matching.a: openMVG/matching/CMakeFiles/openMVG_matching.dir/build.make
Darwin-x86_64-RELEASE/libopenMVG_matching.a: openMVG/matching/CMakeFiles/openMVG_matching.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../Darwin-x86_64-RELEASE/libopenMVG_matching.a"
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_matching.dir/cmake_clean_target.cmake
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openMVG_matching.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openMVG/matching/CMakeFiles/openMVG_matching.dir/build: Darwin-x86_64-RELEASE/libopenMVG_matching.a

.PHONY : openMVG/matching/CMakeFiles/openMVG_matching.dir/build

openMVG/matching/CMakeFiles/openMVG_matching.dir/clean:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" && $(CMAKE_COMMAND) -P CMakeFiles/openMVG_matching.dir/cmake_clean.cmake
.PHONY : openMVG/matching/CMakeFiles/openMVG_matching.dir/clean

openMVG/matching/CMakeFiles/openMVG_matching.dir/depend:
	cd "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/openMVG/matching" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching" "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/openMVG/matching/CMakeFiles/openMVG_matching.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : openMVG/matching/CMakeFiles/openMVG_matching.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\Matias\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5080.54\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Matias\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5080.54\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/circular_array_matiasmjcm.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/circular_array_matiasmjcm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/circular_array_matiasmjcm.dir/flags.make

CMakeFiles/circular_array_matiasmjcm.dir/main.obj: CMakeFiles/circular_array_matiasmjcm.dir/flags.make
CMakeFiles/circular_array_matiasmjcm.dir/main.obj: CMakeFiles/circular_array_matiasmjcm.dir/includes_CXX.rsp
CMakeFiles/circular_array_matiasmjcm.dir/main.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/circular_array_matiasmjcm.dir/main.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\circular_array_matiasmjcm.dir\main.obj -c C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm\main.cpp

CMakeFiles/circular_array_matiasmjcm.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/circular_array_matiasmjcm.dir/main.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm\main.cpp > CMakeFiles\circular_array_matiasmjcm.dir\main.i

CMakeFiles/circular_array_matiasmjcm.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/circular_array_matiasmjcm.dir/main.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm\main.cpp -o CMakeFiles\circular_array_matiasmjcm.dir\main.s

# Object files for target circular_array_matiasmjcm
circular_array_matiasmjcm_OBJECTS = \
"CMakeFiles/circular_array_matiasmjcm.dir/main.obj"

# External object files for target circular_array_matiasmjcm
circular_array_matiasmjcm_EXTERNAL_OBJECTS =

circular_array_matiasmjcm.exe: CMakeFiles/circular_array_matiasmjcm.dir/main.obj
circular_array_matiasmjcm.exe: CMakeFiles/circular_array_matiasmjcm.dir/build.make
circular_array_matiasmjcm.exe: CMakeFiles/circular_array_matiasmjcm.dir/linklibs.rsp
circular_array_matiasmjcm.exe: CMakeFiles/circular_array_matiasmjcm.dir/objects1.rsp
circular_array_matiasmjcm.exe: CMakeFiles/circular_array_matiasmjcm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable circular_array_matiasmjcm.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\circular_array_matiasmjcm.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/circular_array_matiasmjcm.dir/build: circular_array_matiasmjcm.exe
.PHONY : CMakeFiles/circular_array_matiasmjcm.dir/build

CMakeFiles/circular_array_matiasmjcm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\circular_array_matiasmjcm.dir\cmake_clean.cmake
.PHONY : CMakeFiles/circular_array_matiasmjcm.dir/clean

CMakeFiles/circular_array_matiasmjcm.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm\cmake-build-debug C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm\cmake-build-debug C:\Users\Matias\Documents\GitHub\circular-array-matiasmjcm\cmake-build-debug\CMakeFiles\circular_array_matiasmjcm.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/circular_array_matiasmjcm.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/build

# Include any dependencies generated for this target.
include CMakeFiles/MatrixLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MatrixLib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MatrixLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MatrixLib.dir/flags.make

CMakeFiles/MatrixLib.dir/matrix_operations.cpp.o: CMakeFiles/MatrixLib.dir/flags.make
CMakeFiles/MatrixLib.dir/matrix_operations.cpp.o: /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/matrix_operations.cpp
CMakeFiles/MatrixLib.dir/matrix_operations.cpp.o: CMakeFiles/MatrixLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MatrixLib.dir/matrix_operations.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MatrixLib.dir/matrix_operations.cpp.o -MF CMakeFiles/MatrixLib.dir/matrix_operations.cpp.o.d -o CMakeFiles/MatrixLib.dir/matrix_operations.cpp.o -c /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/matrix_operations.cpp

CMakeFiles/MatrixLib.dir/matrix_operations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MatrixLib.dir/matrix_operations.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/matrix_operations.cpp > CMakeFiles/MatrixLib.dir/matrix_operations.cpp.i

CMakeFiles/MatrixLib.dir/matrix_operations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MatrixLib.dir/matrix_operations.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/matrix_operations.cpp -o CMakeFiles/MatrixLib.dir/matrix_operations.cpp.s

# Object files for target MatrixLib
MatrixLib_OBJECTS = \
"CMakeFiles/MatrixLib.dir/matrix_operations.cpp.o"

# External object files for target MatrixLib
MatrixLib_EXTERNAL_OBJECTS =

libMatrixLib.a: CMakeFiles/MatrixLib.dir/matrix_operations.cpp.o
libMatrixLib.a: CMakeFiles/MatrixLib.dir/build.make
libMatrixLib.a: CMakeFiles/MatrixLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libMatrixLib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/MatrixLib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MatrixLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MatrixLib.dir/build: libMatrixLib.a
.PHONY : CMakeFiles/MatrixLib.dir/build

CMakeFiles/MatrixLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MatrixLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MatrixLib.dir/clean

CMakeFiles/MatrixLib.dir/depend:
	cd /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/build /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/build /mnt/c/Users/admasutp/Desktop/Mil/1.1/MatrixProg/MatrixSolution/MatrixLib/build/CMakeFiles/MatrixLib.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/MatrixLib.dir/depend


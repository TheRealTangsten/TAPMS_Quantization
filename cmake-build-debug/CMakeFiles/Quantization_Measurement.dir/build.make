# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Programs\CLion\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Programs\CLion\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Tangsten\CLionProjects\Quantization_Measurement

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Tangsten\CLionProjects\Quantization_Measurement\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Quantization_Measurement.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Quantization_Measurement.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Quantization_Measurement.dir/flags.make

CMakeFiles/Quantization_Measurement.dir/main.cpp.obj: CMakeFiles/Quantization_Measurement.dir/flags.make
CMakeFiles/Quantization_Measurement.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Tangsten\CLionProjects\Quantization_Measurement\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Quantization_Measurement.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Quantization_Measurement.dir\main.cpp.obj -c C:\Users\Tangsten\CLionProjects\Quantization_Measurement\main.cpp

CMakeFiles/Quantization_Measurement.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Quantization_Measurement.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Tangsten\CLionProjects\Quantization_Measurement\main.cpp > CMakeFiles\Quantization_Measurement.dir\main.cpp.i

CMakeFiles/Quantization_Measurement.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Quantization_Measurement.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Tangsten\CLionProjects\Quantization_Measurement\main.cpp -o CMakeFiles\Quantization_Measurement.dir\main.cpp.s

# Object files for target Quantization_Measurement
Quantization_Measurement_OBJECTS = \
"CMakeFiles/Quantization_Measurement.dir/main.cpp.obj"

# External object files for target Quantization_Measurement
Quantization_Measurement_EXTERNAL_OBJECTS =

Quantization_Measurement.exe: CMakeFiles/Quantization_Measurement.dir/main.cpp.obj
Quantization_Measurement.exe: CMakeFiles/Quantization_Measurement.dir/build.make
Quantization_Measurement.exe: CMakeFiles/Quantization_Measurement.dir/linklibs.rsp
Quantization_Measurement.exe: CMakeFiles/Quantization_Measurement.dir/objects1.rsp
Quantization_Measurement.exe: CMakeFiles/Quantization_Measurement.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Tangsten\CLionProjects\Quantization_Measurement\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Quantization_Measurement.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Quantization_Measurement.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Quantization_Measurement.dir/build: Quantization_Measurement.exe

.PHONY : CMakeFiles/Quantization_Measurement.dir/build

CMakeFiles/Quantization_Measurement.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Quantization_Measurement.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Quantization_Measurement.dir/clean

CMakeFiles/Quantization_Measurement.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Tangsten\CLionProjects\Quantization_Measurement C:\Users\Tangsten\CLionProjects\Quantization_Measurement C:\Users\Tangsten\CLionProjects\Quantization_Measurement\cmake-build-debug C:\Users\Tangsten\CLionProjects\Quantization_Measurement\cmake-build-debug C:\Users\Tangsten\CLionProjects\Quantization_Measurement\cmake-build-debug\CMakeFiles\Quantization_Measurement.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Quantization_Measurement.dir/depend


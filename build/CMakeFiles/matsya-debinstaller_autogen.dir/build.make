# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_SOURCE_DIR = /home/tokyo/Documents/GitHub/debinstaller

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tokyo/Documents/GitHub/debinstaller/build

# Utility rule file for matsya-debinstaller_autogen.

# Include the progress variables for this target.
include CMakeFiles/matsya-debinstaller_autogen.dir/progress.make

CMakeFiles/matsya-debinstaller_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tokyo/Documents/GitHub/debinstaller/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target matsya-debinstaller"
	/usr/bin/cmake -E cmake_autogen /home/tokyo/Documents/GitHub/debinstaller/build/CMakeFiles/matsya-debinstaller_autogen.dir/AutogenInfo.json ""

matsya-debinstaller_autogen: CMakeFiles/matsya-debinstaller_autogen
matsya-debinstaller_autogen: CMakeFiles/matsya-debinstaller_autogen.dir/build.make

.PHONY : matsya-debinstaller_autogen

# Rule to build all files generated by this target.
CMakeFiles/matsya-debinstaller_autogen.dir/build: matsya-debinstaller_autogen

.PHONY : CMakeFiles/matsya-debinstaller_autogen.dir/build

CMakeFiles/matsya-debinstaller_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/matsya-debinstaller_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/matsya-debinstaller_autogen.dir/clean

CMakeFiles/matsya-debinstaller_autogen.dir/depend:
	cd /home/tokyo/Documents/GitHub/debinstaller/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tokyo/Documents/GitHub/debinstaller /home/tokyo/Documents/GitHub/debinstaller /home/tokyo/Documents/GitHub/debinstaller/build /home/tokyo/Documents/GitHub/debinstaller/build /home/tokyo/Documents/GitHub/debinstaller/build/CMakeFiles/matsya-debinstaller_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matsya-debinstaller_autogen.dir/depend

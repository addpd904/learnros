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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/addpd904/learnros/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/addpd904/learnros/build

# Include any dependencies generated for this target.
include servecommunicate/CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include servecommunicate/CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include servecommunicate/CMakeFiles/client.dir/flags.make

servecommunicate/CMakeFiles/client.dir/src/client.cpp.o: servecommunicate/CMakeFiles/client.dir/flags.make
servecommunicate/CMakeFiles/client.dir/src/client.cpp.o: /home/addpd904/learnros/src/servecommunicate/src/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/addpd904/learnros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object servecommunicate/CMakeFiles/client.dir/src/client.cpp.o"
	cd /home/addpd904/learnros/build/servecommunicate && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/client.cpp.o -c /home/addpd904/learnros/src/servecommunicate/src/client.cpp

servecommunicate/CMakeFiles/client.dir/src/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/client.cpp.i"
	cd /home/addpd904/learnros/build/servecommunicate && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/addpd904/learnros/src/servecommunicate/src/client.cpp > CMakeFiles/client.dir/src/client.cpp.i

servecommunicate/CMakeFiles/client.dir/src/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/client.cpp.s"
	cd /home/addpd904/learnros/build/servecommunicate && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/addpd904/learnros/src/servecommunicate/src/client.cpp -o CMakeFiles/client.dir/src/client.cpp.s

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/src/client.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

/home/addpd904/learnros/devel/lib/servecommunicate/client: servecommunicate/CMakeFiles/client.dir/src/client.cpp.o
/home/addpd904/learnros/devel/lib/servecommunicate/client: servecommunicate/CMakeFiles/client.dir/build.make
/home/addpd904/learnros/devel/lib/servecommunicate/client: /opt/ros/noetic/lib/libroscpp.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/addpd904/learnros/devel/lib/servecommunicate/client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/addpd904/learnros/devel/lib/servecommunicate/client: /opt/ros/noetic/lib/librosconsole.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/addpd904/learnros/devel/lib/servecommunicate/client: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /opt/ros/noetic/lib/librostime.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/addpd904/learnros/devel/lib/servecommunicate/client: /opt/ros/noetic/lib/libcpp_common.so
/home/addpd904/learnros/devel/lib/servecommunicate/client: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/addpd904/learnros/devel/lib/servecommunicate/client: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/addpd904/learnros/devel/lib/servecommunicate/client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/addpd904/learnros/devel/lib/servecommunicate/client: servecommunicate/CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/addpd904/learnros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/addpd904/learnros/devel/lib/servecommunicate/client"
	cd /home/addpd904/learnros/build/servecommunicate && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
servecommunicate/CMakeFiles/client.dir/build: /home/addpd904/learnros/devel/lib/servecommunicate/client

.PHONY : servecommunicate/CMakeFiles/client.dir/build

servecommunicate/CMakeFiles/client.dir/clean:
	cd /home/addpd904/learnros/build/servecommunicate && $(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : servecommunicate/CMakeFiles/client.dir/clean

servecommunicate/CMakeFiles/client.dir/depend:
	cd /home/addpd904/learnros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/addpd904/learnros/src /home/addpd904/learnros/src/servecommunicate /home/addpd904/learnros/build /home/addpd904/learnros/build/servecommunicate /home/addpd904/learnros/build/servecommunicate/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : servecommunicate/CMakeFiles/client.dir/depend


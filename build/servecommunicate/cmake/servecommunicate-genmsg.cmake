# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "servecommunicate: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(servecommunicate_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv" NAME_WE)
add_custom_target(_servecommunicate_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "servecommunicate" "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(servecommunicate
  "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/servecommunicate
)

### Generating Module File
_generate_module_cpp(servecommunicate
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/servecommunicate
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(servecommunicate_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(servecommunicate_generate_messages servecommunicate_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv" NAME_WE)
add_dependencies(servecommunicate_generate_messages_cpp _servecommunicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(servecommunicate_gencpp)
add_dependencies(servecommunicate_gencpp servecommunicate_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS servecommunicate_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(servecommunicate
  "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/servecommunicate
)

### Generating Module File
_generate_module_eus(servecommunicate
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/servecommunicate
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(servecommunicate_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(servecommunicate_generate_messages servecommunicate_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv" NAME_WE)
add_dependencies(servecommunicate_generate_messages_eus _servecommunicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(servecommunicate_geneus)
add_dependencies(servecommunicate_geneus servecommunicate_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS servecommunicate_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(servecommunicate
  "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/servecommunicate
)

### Generating Module File
_generate_module_lisp(servecommunicate
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/servecommunicate
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(servecommunicate_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(servecommunicate_generate_messages servecommunicate_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv" NAME_WE)
add_dependencies(servecommunicate_generate_messages_lisp _servecommunicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(servecommunicate_genlisp)
add_dependencies(servecommunicate_genlisp servecommunicate_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS servecommunicate_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(servecommunicate
  "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/servecommunicate
)

### Generating Module File
_generate_module_nodejs(servecommunicate
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/servecommunicate
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(servecommunicate_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(servecommunicate_generate_messages servecommunicate_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv" NAME_WE)
add_dependencies(servecommunicate_generate_messages_nodejs _servecommunicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(servecommunicate_gennodejs)
add_dependencies(servecommunicate_gennodejs servecommunicate_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS servecommunicate_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(servecommunicate
  "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/servecommunicate
)

### Generating Module File
_generate_module_py(servecommunicate
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/servecommunicate
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(servecommunicate_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(servecommunicate_generate_messages servecommunicate_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/addpd904/learnros/src/servecommunicate/srv/mydata.srv" NAME_WE)
add_dependencies(servecommunicate_generate_messages_py _servecommunicate_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(servecommunicate_genpy)
add_dependencies(servecommunicate_genpy servecommunicate_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS servecommunicate_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/servecommunicate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/servecommunicate
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(servecommunicate_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/servecommunicate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/servecommunicate
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(servecommunicate_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/servecommunicate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/servecommunicate
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(servecommunicate_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/servecommunicate)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/servecommunicate
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(servecommunicate_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/servecommunicate)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/servecommunicate\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/servecommunicate
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(servecommunicate_generate_messages_py std_msgs_generate_messages_py)
endif()

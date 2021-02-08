# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_tutorials_parameter: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_tutorials_parameter_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv" NAME_WE)
add_custom_target(_ros_tutorials_parameter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_tutorials_parameter" "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ros_tutorials_parameter
  "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tutorials_parameter
)

### Generating Module File
_generate_module_cpp(ros_tutorials_parameter
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tutorials_parameter
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_tutorials_parameter_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_tutorials_parameter_generate_messages ros_tutorials_parameter_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv" NAME_WE)
add_dependencies(ros_tutorials_parameter_generate_messages_cpp _ros_tutorials_parameter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tutorials_parameter_gencpp)
add_dependencies(ros_tutorials_parameter_gencpp ros_tutorials_parameter_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tutorials_parameter_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(ros_tutorials_parameter
  "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tutorials_parameter
)

### Generating Module File
_generate_module_eus(ros_tutorials_parameter
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tutorials_parameter
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_tutorials_parameter_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_tutorials_parameter_generate_messages ros_tutorials_parameter_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv" NAME_WE)
add_dependencies(ros_tutorials_parameter_generate_messages_eus _ros_tutorials_parameter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tutorials_parameter_geneus)
add_dependencies(ros_tutorials_parameter_geneus ros_tutorials_parameter_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tutorials_parameter_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ros_tutorials_parameter
  "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tutorials_parameter
)

### Generating Module File
_generate_module_lisp(ros_tutorials_parameter
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tutorials_parameter
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_tutorials_parameter_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_tutorials_parameter_generate_messages ros_tutorials_parameter_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv" NAME_WE)
add_dependencies(ros_tutorials_parameter_generate_messages_lisp _ros_tutorials_parameter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tutorials_parameter_genlisp)
add_dependencies(ros_tutorials_parameter_genlisp ros_tutorials_parameter_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tutorials_parameter_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(ros_tutorials_parameter
  "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tutorials_parameter
)

### Generating Module File
_generate_module_nodejs(ros_tutorials_parameter
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tutorials_parameter
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_tutorials_parameter_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_tutorials_parameter_generate_messages ros_tutorials_parameter_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv" NAME_WE)
add_dependencies(ros_tutorials_parameter_generate_messages_nodejs _ros_tutorials_parameter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tutorials_parameter_gennodejs)
add_dependencies(ros_tutorials_parameter_gennodejs ros_tutorials_parameter_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tutorials_parameter_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ros_tutorials_parameter
  "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tutorials_parameter
)

### Generating Module File
_generate_module_py(ros_tutorials_parameter
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tutorials_parameter
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_tutorials_parameter_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_tutorials_parameter_generate_messages ros_tutorials_parameter_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/ros_tutorials/ros_tutorials_parameter/srv/SrvTutorial.srv" NAME_WE)
add_dependencies(ros_tutorials_parameter_generate_messages_py _ros_tutorials_parameter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_tutorials_parameter_genpy)
add_dependencies(ros_tutorials_parameter_genpy ros_tutorials_parameter_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_tutorials_parameter_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tutorials_parameter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_tutorials_parameter
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_tutorials_parameter_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tutorials_parameter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_tutorials_parameter
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_tutorials_parameter_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tutorials_parameter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_tutorials_parameter
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_tutorials_parameter_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tutorials_parameter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_tutorials_parameter
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_tutorials_parameter_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tutorials_parameter)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tutorials_parameter\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_tutorials_parameter
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_tutorials_parameter_generate_messages_py std_msgs_generate_messages_py)
endif()

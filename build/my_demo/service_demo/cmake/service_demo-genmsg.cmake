# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "service_demo: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(service_demo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv" NAME_WE)
add_custom_target(_service_demo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "service_demo" "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(service_demo
  "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/service_demo
)

### Generating Module File
_generate_module_cpp(service_demo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/service_demo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(service_demo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(service_demo_generate_messages service_demo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv" NAME_WE)
add_dependencies(service_demo_generate_messages_cpp _service_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(service_demo_gencpp)
add_dependencies(service_demo_gencpp service_demo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS service_demo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(service_demo
  "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/service_demo
)

### Generating Module File
_generate_module_eus(service_demo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/service_demo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(service_demo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(service_demo_generate_messages service_demo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv" NAME_WE)
add_dependencies(service_demo_generate_messages_eus _service_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(service_demo_geneus)
add_dependencies(service_demo_geneus service_demo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS service_demo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(service_demo
  "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/service_demo
)

### Generating Module File
_generate_module_lisp(service_demo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/service_demo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(service_demo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(service_demo_generate_messages service_demo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv" NAME_WE)
add_dependencies(service_demo_generate_messages_lisp _service_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(service_demo_genlisp)
add_dependencies(service_demo_genlisp service_demo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS service_demo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(service_demo
  "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/service_demo
)

### Generating Module File
_generate_module_nodejs(service_demo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/service_demo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(service_demo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(service_demo_generate_messages service_demo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv" NAME_WE)
add_dependencies(service_demo_generate_messages_nodejs _service_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(service_demo_gennodejs)
add_dependencies(service_demo_gennodejs service_demo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS service_demo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(service_demo
  "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/service_demo
)

### Generating Module File
_generate_module_py(service_demo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/service_demo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(service_demo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(service_demo_generate_messages service_demo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/tutorial_ws/src/my_demo/service_demo/srv/Greeting.srv" NAME_WE)
add_dependencies(service_demo_generate_messages_py _service_demo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(service_demo_genpy)
add_dependencies(service_demo_genpy service_demo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS service_demo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/service_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/service_demo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/service_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/service_demo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/service_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/service_demo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/service_demo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/service_demo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/service_demo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/service_demo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/service_demo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()

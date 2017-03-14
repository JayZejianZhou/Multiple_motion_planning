# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "spencer_human_attribute_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ispencer_human_attribute_msgs:/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(spencer_human_attribute_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg" NAME_WE)
add_custom_target(_spencer_human_attribute_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_human_attribute_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/HumanAttributes.msg" NAME_WE)
add_custom_target(_spencer_human_attribute_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_human_attribute_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/HumanAttributes.msg" "spencer_human_attribute_msgs/ScalarAttribute:std_msgs/Header:spencer_human_attribute_msgs/CategoricalAttribute"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg" NAME_WE)
add_custom_target(_spencer_human_attribute_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_human_attribute_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(spencer_human_attribute_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/HumanAttributes.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_human_attribute_msgs
)
_generate_msg_cpp(spencer_human_attribute_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_human_attribute_msgs
)
_generate_msg_cpp(spencer_human_attribute_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_human_attribute_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(spencer_human_attribute_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_human_attribute_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(spencer_human_attribute_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(spencer_human_attribute_msgs_generate_messages spencer_human_attribute_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg" NAME_WE)
add_dependencies(spencer_human_attribute_msgs_generate_messages_cpp _spencer_human_attribute_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/HumanAttributes.msg" NAME_WE)
add_dependencies(spencer_human_attribute_msgs_generate_messages_cpp _spencer_human_attribute_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg" NAME_WE)
add_dependencies(spencer_human_attribute_msgs_generate_messages_cpp _spencer_human_attribute_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_human_attribute_msgs_gencpp)
add_dependencies(spencer_human_attribute_msgs_gencpp spencer_human_attribute_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_human_attribute_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(spencer_human_attribute_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/HumanAttributes.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_human_attribute_msgs
)
_generate_msg_lisp(spencer_human_attribute_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_human_attribute_msgs
)
_generate_msg_lisp(spencer_human_attribute_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_human_attribute_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(spencer_human_attribute_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_human_attribute_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(spencer_human_attribute_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(spencer_human_attribute_msgs_generate_messages spencer_human_attribute_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg" NAME_WE)
add_dependencies(spencer_human_attribute_msgs_generate_messages_lisp _spencer_human_attribute_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/HumanAttributes.msg" NAME_WE)
add_dependencies(spencer_human_attribute_msgs_generate_messages_lisp _spencer_human_attribute_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg" NAME_WE)
add_dependencies(spencer_human_attribute_msgs_generate_messages_lisp _spencer_human_attribute_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_human_attribute_msgs_genlisp)
add_dependencies(spencer_human_attribute_msgs_genlisp spencer_human_attribute_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_human_attribute_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(spencer_human_attribute_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/HumanAttributes.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_human_attribute_msgs
)
_generate_msg_py(spencer_human_attribute_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_human_attribute_msgs
)
_generate_msg_py(spencer_human_attribute_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_human_attribute_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(spencer_human_attribute_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_human_attribute_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(spencer_human_attribute_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(spencer_human_attribute_msgs_generate_messages spencer_human_attribute_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/CategoricalAttribute.msg" NAME_WE)
add_dependencies(spencer_human_attribute_msgs_generate_messages_py _spencer_human_attribute_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/HumanAttributes.msg" NAME_WE)
add_dependencies(spencer_human_attribute_msgs_generate_messages_py _spencer_human_attribute_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_human_attribute_msgs/msg/ScalarAttribute.msg" NAME_WE)
add_dependencies(spencer_human_attribute_msgs_generate_messages_py _spencer_human_attribute_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_human_attribute_msgs_genpy)
add_dependencies(spencer_human_attribute_msgs_genpy spencer_human_attribute_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_human_attribute_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_human_attribute_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_human_attribute_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(spencer_human_attribute_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_human_attribute_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_human_attribute_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(spencer_human_attribute_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_human_attribute_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_human_attribute_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_human_attribute_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(spencer_human_attribute_msgs_generate_messages_py std_msgs_generate_messages_py)

# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "spencer_control_msgs: 7 messages, 4 services")

set(MSG_I_FLAGS "-Ispencer_control_msgs:/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(spencer_control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SystemStatus.msg" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SystemStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointVelocity.msg" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointVelocity.msg" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SafetyRectangle.msg" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SafetyRectangle.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/LocalizationStatus.msg" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/LocalizationStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/GetMaxVelocity.srv" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/GetMaxVelocity.srv" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/ReleaseEmergencyStop.srv" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/ReleaseEmergencyStop.srv" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/ComponentStatus.msg" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/ComponentStatus.msg" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetEmergencyStop.srv" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetEmergencyStop.srv" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointPosition.msg" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointPosition.msg" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetMaxVelocity.srv" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetMaxVelocity.srv" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/CollisionStatus.msg" NAME_WE)
add_custom_target(_spencer_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_control_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/CollisionStatus.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SystemStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/CollisionStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SafetyRectangle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/LocalizationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/ComponentStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)

### Generating Services
_generate_srv_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetMaxVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)
_generate_srv_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetEmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)
_generate_srv_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/GetMaxVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)
_generate_srv_cpp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/ReleaseEmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
)

### Generating Module File
_generate_module_cpp(spencer_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(spencer_control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(spencer_control_msgs_generate_messages spencer_control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SystemStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointVelocity.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SafetyRectangle.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/LocalizationStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/GetMaxVelocity.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/ReleaseEmergencyStop.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/ComponentStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetEmergencyStop.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointPosition.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetMaxVelocity.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/CollisionStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_cpp _spencer_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_control_msgs_gencpp)
add_dependencies(spencer_control_msgs_gencpp spencer_control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_control_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SystemStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/CollisionStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SafetyRectangle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/LocalizationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/ComponentStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)

### Generating Services
_generate_srv_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetMaxVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)
_generate_srv_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetEmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)
_generate_srv_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/GetMaxVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)
_generate_srv_lisp(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/ReleaseEmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
)

### Generating Module File
_generate_module_lisp(spencer_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(spencer_control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(spencer_control_msgs_generate_messages spencer_control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SystemStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointVelocity.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SafetyRectangle.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/LocalizationStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/GetMaxVelocity.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/ReleaseEmergencyStop.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/ComponentStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetEmergencyStop.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointPosition.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetMaxVelocity.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/CollisionStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_lisp _spencer_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_control_msgs_genlisp)
add_dependencies(spencer_control_msgs_genlisp spencer_control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_control_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SystemStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/CollisionStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SafetyRectangle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/LocalizationStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/ComponentStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)
_generate_msg_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)

### Generating Services
_generate_srv_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetMaxVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)
_generate_srv_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetEmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)
_generate_srv_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/GetMaxVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)
_generate_srv_py(spencer_control_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/ReleaseEmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
)

### Generating Module File
_generate_module_py(spencer_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(spencer_control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(spencer_control_msgs_generate_messages spencer_control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SystemStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointVelocity.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SafetyRectangle.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/LocalizationStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/GetMaxVelocity.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/ReleaseEmergencyStop.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/ComponentStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetEmergencyStop.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/SetHeadJointPosition.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/srv/SetMaxVelocity.srv" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/control/spencer_control_msgs/msg/CollisionStatus.msg" NAME_WE)
add_dependencies(spencer_control_msgs_generate_messages_py _spencer_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_control_msgs_genpy)
add_dependencies(spencer_control_msgs_genpy spencer_control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(spencer_control_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(spencer_control_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(spencer_control_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(spencer_control_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(spencer_control_msgs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(spencer_control_msgs_generate_messages_py std_msgs_generate_messages_py)

# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pedsim_srvs: 0 messages, 4 services")

set(MSG_I_FLAGS "-Ipedsim_msgs:/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Inav_msgs:/opt/ros/indigo/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pedsim_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAgentState.srv" NAME_WE)
add_custom_target(_pedsim_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pedsim_srvs" "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAgentState.srv" "pedsim_msgs/AgentState:geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAllAgentsState.srv" NAME_WE)
add_custom_target(_pedsim_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pedsim_srvs" "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAllAgentsState.srv" "pedsim_msgs/AgentState:geometry_msgs/Point:pedsim_msgs/AllAgentsState:geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAllAgentsState.srv" NAME_WE)
add_custom_target(_pedsim_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pedsim_srvs" "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAllAgentsState.srv" "pedsim_msgs/AgentState:geometry_msgs/Point:pedsim_msgs/AllAgentsState:geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/Twist:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAgentState.srv" NAME_WE)
add_custom_target(_pedsim_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pedsim_srvs" "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAgentState.srv" "pedsim_msgs/AgentState:geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Twist"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAgentState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pedsim_srvs
)
_generate_srv_cpp(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAllAgentsState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AllAgentsState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pedsim_srvs
)
_generate_srv_cpp(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAllAgentsState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AllAgentsState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pedsim_srvs
)
_generate_srv_cpp(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAgentState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pedsim_srvs
)

### Generating Module File
_generate_module_cpp(pedsim_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pedsim_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pedsim_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pedsim_srvs_generate_messages pedsim_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAgentState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_cpp _pedsim_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAllAgentsState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_cpp _pedsim_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAllAgentsState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_cpp _pedsim_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAgentState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_cpp _pedsim_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pedsim_srvs_gencpp)
add_dependencies(pedsim_srvs_gencpp pedsim_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pedsim_srvs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAgentState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pedsim_srvs
)
_generate_srv_lisp(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAllAgentsState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AllAgentsState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pedsim_srvs
)
_generate_srv_lisp(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAllAgentsState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AllAgentsState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pedsim_srvs
)
_generate_srv_lisp(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAgentState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pedsim_srvs
)

### Generating Module File
_generate_module_lisp(pedsim_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pedsim_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pedsim_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pedsim_srvs_generate_messages pedsim_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAgentState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_lisp _pedsim_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAllAgentsState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_lisp _pedsim_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAllAgentsState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_lisp _pedsim_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAgentState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_lisp _pedsim_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pedsim_srvs_genlisp)
add_dependencies(pedsim_srvs_genlisp pedsim_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pedsim_srvs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAgentState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pedsim_srvs
)
_generate_srv_py(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAllAgentsState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AllAgentsState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pedsim_srvs
)
_generate_srv_py(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAllAgentsState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AllAgentsState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pedsim_srvs
)
_generate_srv_py(pedsim_srvs
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAgentState.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_msgs/msg/AgentState.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pedsim_srvs
)

### Generating Module File
_generate_module_py(pedsim_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pedsim_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pedsim_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pedsim_srvs_generate_messages pedsim_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAgentState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_py _pedsim_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/SetAllAgentsState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_py _pedsim_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAllAgentsState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_py _pedsim_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs/srv/GetAgentState.srv" NAME_WE)
add_dependencies(pedsim_srvs_generate_messages_py _pedsim_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pedsim_srvs_genpy)
add_dependencies(pedsim_srvs_genpy pedsim_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pedsim_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pedsim_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pedsim_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(pedsim_srvs_generate_messages_cpp pedsim_msgs_generate_messages_cpp)
add_dependencies(pedsim_srvs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pedsim_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pedsim_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(pedsim_srvs_generate_messages_lisp pedsim_msgs_generate_messages_lisp)
add_dependencies(pedsim_srvs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pedsim_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pedsim_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pedsim_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(pedsim_srvs_generate_messages_py pedsim_msgs_generate_messages_py)
add_dependencies(pedsim_srvs_generate_messages_py std_msgs_generate_messages_py)

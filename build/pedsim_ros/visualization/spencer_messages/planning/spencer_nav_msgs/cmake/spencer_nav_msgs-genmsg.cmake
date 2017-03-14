# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "spencer_nav_msgs: 3 messages, 2 services")

set(MSG_I_FLAGS "-Ispencer_nav_msgs:/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/indigo/share/nav_msgs/cmake/../msg;-Ispencer_tracking_msgs:/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg;-Ispencer_mapping_msgs:/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/mapping/spencer_mapping_msgs/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(spencer_nav_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestTopological.msg" NAME_WE)
add_custom_target(_spencer_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_nav_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestTopological.msg" "spencer_tracking_msgs/TrackedGroups:spencer_tracking_msgs/DetectedPersons:geometry_msgs/Point:spencer_nav_msgs/NavParams:geometry_msgs/Quaternion:spencer_tracking_msgs/TrackedPerson:geometry_msgs/PoseWithCovariance:geometry_msgs/TwistWithCovariance:geometry_msgs/Vector3:spencer_tracking_msgs/TrackedPersons:std_msgs/Header:spencer_tracking_msgs/TrackedGroup:spencer_tracking_msgs/DetectedPerson:spencer_mapping_msgs/TopologicalMapNode:geometry_msgs/Twist:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/SetDrivingDirection.srv" NAME_WE)
add_custom_target(_spencer_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_nav_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/SetDrivingDirection.srv" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/StopDriving.srv" NAME_WE)
add_custom_target(_spencer_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_nav_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/StopDriving.srv" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestGeometric.msg" NAME_WE)
add_custom_target(_spencer_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_nav_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestGeometric.msg" "spencer_tracking_msgs/TrackedGroups:spencer_tracking_msgs/DetectedPersons:geometry_msgs/Point:spencer_nav_msgs/NavParams:spencer_tracking_msgs/TrackedPerson:geometry_msgs/PoseWithCovariance:geometry_msgs/TwistWithCovariance:geometry_msgs/Vector3:spencer_tracking_msgs/TrackedPersons:geometry_msgs/Quaternion:spencer_tracking_msgs/TrackedGroup:geometry_msgs/Twist:spencer_tracking_msgs/DetectedPerson:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg" NAME_WE)
add_custom_target(_spencer_nav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "spencer_nav_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestTopological.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroups.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPersons.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPerson.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPersons.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroup.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPerson.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/mapping/spencer_mapping_msgs/msg/TopologicalMapNode.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_nav_msgs
)
_generate_msg_cpp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestGeometric.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroups.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPersons.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPerson.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPersons.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroup.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPerson.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_nav_msgs
)
_generate_msg_cpp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_nav_msgs
)

### Generating Services
_generate_srv_cpp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/SetDrivingDirection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_nav_msgs
)
_generate_srv_cpp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/StopDriving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_nav_msgs
)

### Generating Module File
_generate_module_cpp(spencer_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(spencer_nav_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(spencer_nav_msgs_generate_messages spencer_nav_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestTopological.msg" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_cpp _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/SetDrivingDirection.srv" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_cpp _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/StopDriving.srv" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_cpp _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestGeometric.msg" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_cpp _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_cpp _spencer_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_nav_msgs_gencpp)
add_dependencies(spencer_nav_msgs_gencpp spencer_nav_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_nav_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestTopological.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroups.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPersons.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPerson.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPersons.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroup.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPerson.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/mapping/spencer_mapping_msgs/msg/TopologicalMapNode.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_nav_msgs
)
_generate_msg_lisp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestGeometric.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroups.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPersons.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPerson.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPersons.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroup.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPerson.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_nav_msgs
)
_generate_msg_lisp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_nav_msgs
)

### Generating Services
_generate_srv_lisp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/SetDrivingDirection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_nav_msgs
)
_generate_srv_lisp(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/StopDriving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_nav_msgs
)

### Generating Module File
_generate_module_lisp(spencer_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(spencer_nav_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(spencer_nav_msgs_generate_messages spencer_nav_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestTopological.msg" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_lisp _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/SetDrivingDirection.srv" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_lisp _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/StopDriving.srv" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_lisp _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestGeometric.msg" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_lisp _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_lisp _spencer_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_nav_msgs_genlisp)
add_dependencies(spencer_nav_msgs_genlisp spencer_nav_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_nav_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestTopological.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroups.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPersons.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPerson.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPersons.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroup.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPerson.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/mapping/spencer_mapping_msgs/msg/TopologicalMapNode.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_nav_msgs
)
_generate_msg_py(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestGeometric.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroups.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPersons.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPerson.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedPersons.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/TrackedGroup.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/perception/spencer_tracking_msgs/msg/DetectedPerson.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_nav_msgs
)
_generate_msg_py(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_nav_msgs
)

### Generating Services
_generate_srv_py(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/SetDrivingDirection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_nav_msgs
)
_generate_srv_py(spencer_nav_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/StopDriving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_nav_msgs
)

### Generating Module File
_generate_module_py(spencer_nav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_nav_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(spencer_nav_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(spencer_nav_msgs_generate_messages spencer_nav_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestTopological.msg" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_py _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/SetDrivingDirection.srv" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_py _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/srv/StopDriving.srv" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_py _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavigationPlanRequestGeometric.msg" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_py _spencer_nav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/planning/spencer_nav_msgs/msg/NavParams.msg" NAME_WE)
add_dependencies(spencer_nav_msgs_generate_messages_py _spencer_nav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(spencer_nav_msgs_genpy)
add_dependencies(spencer_nav_msgs_genpy spencer_nav_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS spencer_nav_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/spencer_nav_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(spencer_nav_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(spencer_nav_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(spencer_nav_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
add_dependencies(spencer_nav_msgs_generate_messages_cpp spencer_tracking_msgs_generate_messages_cpp)
add_dependencies(spencer_nav_msgs_generate_messages_cpp spencer_mapping_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_nav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/spencer_nav_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(spencer_nav_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(spencer_nav_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(spencer_nav_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
add_dependencies(spencer_nav_msgs_generate_messages_lisp spencer_tracking_msgs_generate_messages_lisp)
add_dependencies(spencer_nav_msgs_generate_messages_lisp spencer_mapping_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_nav_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_nav_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/spencer_nav_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(spencer_nav_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(spencer_nav_msgs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(spencer_nav_msgs_generate_messages_py nav_msgs_generate_messages_py)
add_dependencies(spencer_nav_msgs_generate_messages_py spencer_tracking_msgs_generate_messages_py)
add_dependencies(spencer_nav_msgs_generate_messages_py spencer_mapping_msgs_generate_messages_py)

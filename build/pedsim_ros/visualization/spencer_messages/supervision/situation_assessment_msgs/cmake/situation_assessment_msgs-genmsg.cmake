# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "situation_assessment_msgs: 13 messages, 8 services")

set(MSG_I_FLAGS "-Isituation_assessment_msgs:/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(situation_assessment_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/QueryDatabase.srv" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/QueryDatabase.srv" "situation_assessment_msgs/Fact"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetMap.srv" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetMap.srv" "situation_assessment_msgs/Node:situation_assessment_msgs/Graph:situation_assessment_msgs/Edge:situation_assessment_msgs/Property:geometry_msgs/Point"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg" "situation_assessment_msgs/Property:geometry_msgs/Point"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/NameRequest.srv" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/NameRequest.srv" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/FactList.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/FactList.msg" "situation_assessment_msgs/Fact"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPoseList.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPoseList.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:situation_assessment_msgs/NamedPose:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/AreaList.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/AreaList.msg" "geometry_msgs/Point32:std_msgs/Header:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg" "situation_assessment_msgs/Property"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetLocations.srv" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetLocations.srv" "geometry_msgs/Point32:geometry_msgs/Point:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/DatabaseRequest.srv" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/DatabaseRequest.srv" "situation_assessment_msgs/Fact"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/SwitchOrientation.srv" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/SwitchOrientation.srv" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg" ""
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg" "situation_assessment_msgs/Node:situation_assessment_msgs/Property:situation_assessment_msgs/Edge:geometry_msgs/Point"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/GroupList.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/GroupList.msg" "situation_assessment_msgs/Group:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/AddArea.srv" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/AddArea.srv" "geometry_msgs/Point32:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntentionList.msg" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntentionList.msg" "situation_assessment_msgs/HumanIntention"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/EmptyRequest.srv" NAME_WE)
add_custom_target(_situation_assessment_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "situation_assessment_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/EmptyRequest.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/FactList.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPoseList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/AreaList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/GroupList.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntentionList.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)

### Generating Services
_generate_srv_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/QueryDatabase.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/NameRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/SwitchOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/DatabaseRequest.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetLocations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/AddArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_cpp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/EmptyRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
)

### Generating Module File
_generate_module_cpp(situation_assessment_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(situation_assessment_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(situation_assessment_msgs_generate_messages situation_assessment_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/QueryDatabase.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/NameRequest.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/FactList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPoseList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/AreaList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetLocations.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/DatabaseRequest.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/SwitchOrientation.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/GroupList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/AddArea.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntentionList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/EmptyRequest.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_cpp _situation_assessment_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(situation_assessment_msgs_gencpp)
add_dependencies(situation_assessment_msgs_gencpp situation_assessment_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS situation_assessment_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/FactList.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPoseList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/AreaList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/GroupList.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntentionList.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)

### Generating Services
_generate_srv_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/QueryDatabase.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/NameRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/SwitchOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/DatabaseRequest.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetLocations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/AddArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_lisp(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/EmptyRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
)

### Generating Module File
_generate_module_lisp(situation_assessment_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(situation_assessment_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(situation_assessment_msgs_generate_messages situation_assessment_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/QueryDatabase.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/NameRequest.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/FactList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPoseList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/AreaList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetLocations.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/DatabaseRequest.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/SwitchOrientation.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/GroupList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/AddArea.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntentionList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/EmptyRequest.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_lisp _situation_assessment_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(situation_assessment_msgs_genlisp)
add_dependencies(situation_assessment_msgs_genlisp situation_assessment_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS situation_assessment_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/FactList.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPoseList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/AreaList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/GroupList.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_msg_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntentionList.msg"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)

### Generating Services
_generate_srv_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/QueryDatabase.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/NameRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/SwitchOrientation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/DatabaseRequest.srv"
  "${MSG_I_FLAGS}"
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetLocations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/AddArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)
_generate_srv_py(situation_assessment_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/EmptyRequest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
)

### Generating Module File
_generate_module_py(situation_assessment_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(situation_assessment_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(situation_assessment_msgs_generate_messages situation_assessment_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/QueryDatabase.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Fact.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Node.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/NameRequest.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/FactList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPoseList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Property.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Group.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/AreaList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Edge.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/GetLocations.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/DatabaseRequest.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/NamedPose.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/SwitchOrientation.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntention.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/Graph.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/GroupList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/AddArea.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg/HumanIntentionList.msg" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/srv/EmptyRequest.srv" NAME_WE)
add_dependencies(situation_assessment_msgs_generate_messages_py _situation_assessment_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(situation_assessment_msgs_genpy)
add_dependencies(situation_assessment_msgs_genpy situation_assessment_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS situation_assessment_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/situation_assessment_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(situation_assessment_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(situation_assessment_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/situation_assessment_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(situation_assessment_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(situation_assessment_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/situation_assessment_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(situation_assessment_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(situation_assessment_msgs_generate_messages_py geometry_msgs_generate_messages_py)

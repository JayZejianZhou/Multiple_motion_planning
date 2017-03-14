# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "animated_marker_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ianimated_marker_msgs:/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(animated_marker_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarkerArray.msg" NAME_WE)
add_custom_target(_animated_marker_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "animated_marker_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarkerArray.msg" "geometry_msgs/Point:animated_marker_msgs/AnimatedMarker:geometry_msgs/Vector3:std_msgs/Header:std_msgs/ColorRGBA:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg" NAME_WE)
add_custom_target(_animated_marker_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "animated_marker_msgs" "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg" "geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/ColorRGBA:geometry_msgs/Pose:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(animated_marker_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarkerArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/animated_marker_msgs
)
_generate_msg_cpp(animated_marker_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/animated_marker_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(animated_marker_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/animated_marker_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(animated_marker_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(animated_marker_msgs_generate_messages animated_marker_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarkerArray.msg" NAME_WE)
add_dependencies(animated_marker_msgs_generate_messages_cpp _animated_marker_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg" NAME_WE)
add_dependencies(animated_marker_msgs_generate_messages_cpp _animated_marker_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(animated_marker_msgs_gencpp)
add_dependencies(animated_marker_msgs_gencpp animated_marker_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS animated_marker_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(animated_marker_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarkerArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/animated_marker_msgs
)
_generate_msg_lisp(animated_marker_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/animated_marker_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(animated_marker_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/animated_marker_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(animated_marker_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(animated_marker_msgs_generate_messages animated_marker_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarkerArray.msg" NAME_WE)
add_dependencies(animated_marker_msgs_generate_messages_lisp _animated_marker_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg" NAME_WE)
add_dependencies(animated_marker_msgs_generate_messages_lisp _animated_marker_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(animated_marker_msgs_genlisp)
add_dependencies(animated_marker_msgs_genlisp animated_marker_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS animated_marker_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(animated_marker_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarkerArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/animated_marker_msgs
)
_generate_msg_py(animated_marker_msgs
  "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/animated_marker_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(animated_marker_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/animated_marker_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(animated_marker_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(animated_marker_msgs_generate_messages animated_marker_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarkerArray.msg" NAME_WE)
add_dependencies(animated_marker_msgs_generate_messages_py _animated_marker_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zejian/catkin_ws/src/pedsim_ros/visualization/animated_markers/animated_marker_msgs/msg/AnimatedMarker.msg" NAME_WE)
add_dependencies(animated_marker_msgs_generate_messages_py _animated_marker_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(animated_marker_msgs_genpy)
add_dependencies(animated_marker_msgs_genpy animated_marker_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS animated_marker_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/animated_marker_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/animated_marker_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(animated_marker_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(animated_marker_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/animated_marker_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/animated_marker_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(animated_marker_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(animated_marker_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/animated_marker_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/animated_marker_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/animated_marker_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(animated_marker_msgs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(animated_marker_msgs_generate_messages_py std_msgs_generate_messages_py)

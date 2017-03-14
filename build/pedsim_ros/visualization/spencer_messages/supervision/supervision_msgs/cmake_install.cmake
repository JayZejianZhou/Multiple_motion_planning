# Install script for directory: /home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/zejian/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/msg" TYPE FILE FILES
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/msg/SupervisionStatus.msg"
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/msg/SupervisionStopped.msg"
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/msg/PathInfo.msg"
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/msg/GuideFollowers.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/srv" TYPE FILE FILES
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/srv/EmptyRequest.srv"
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/srv/SetRobotSimStatus.srv"
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/srv/CalculatePath.srv"
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/srv/GetConnectedNodes.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/action" TYPE FILE FILES
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/action/GuideGroup.action"
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/action/MoveTo.action"
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/action/MoveToPose.action"
    "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/action/Approach.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/msg" TYPE FILE FILES
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/GuideGroupAction.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/GuideGroupActionGoal.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/GuideGroupActionResult.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/GuideGroupActionFeedback.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/GuideGroupGoal.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/GuideGroupResult.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/GuideGroupFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/msg" TYPE FILE FILES
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToAction.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToActionGoal.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToActionResult.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToActionFeedback.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToGoal.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToResult.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/msg" TYPE FILE FILES
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToPoseAction.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToPoseActionGoal.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToPoseActionResult.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToPoseActionFeedback.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToPoseGoal.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToPoseResult.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/MoveToPoseFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/msg" TYPE FILE FILES
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/ApproachAction.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/ApproachActionGoal.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/ApproachActionResult.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/ApproachActionFeedback.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/ApproachGoal.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/ApproachResult.msg"
    "/home/zejian/catkin_ws/devel/share/supervision_msgs/msg/ApproachFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/cmake" TYPE FILE FILES "/home/zejian/catkin_ws/build/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/catkin_generated/installspace/supervision_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zejian/catkin_ws/devel/include/supervision_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/zejian/catkin_ws/devel/share/common-lisp/ros/supervision_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/zejian/catkin_ws/devel/lib/python2.7/dist-packages/supervision_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/zejian/catkin_ws/devel/lib/python2.7/dist-packages/supervision_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zejian/catkin_ws/build/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/catkin_generated/installspace/supervision_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/cmake" TYPE FILE FILES "/home/zejian/catkin_ws/build/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/catkin_generated/installspace/supervision_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs/cmake" TYPE FILE FILES
    "/home/zejian/catkin_ws/build/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/catkin_generated/installspace/supervision_msgsConfig.cmake"
    "/home/zejian/catkin_ws/build/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/catkin_generated/installspace/supervision_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/supervision_msgs" TYPE FILE FILES "/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


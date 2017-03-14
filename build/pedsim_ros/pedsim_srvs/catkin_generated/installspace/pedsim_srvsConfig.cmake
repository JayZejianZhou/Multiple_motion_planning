# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(pedsim_srvs_CONFIG_INCLUDED)
  return()
endif()
set(pedsim_srvs_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(pedsim_srvs_SOURCE_PREFIX /home/zejian/catkin_ws/src/pedsim_ros/pedsim_srvs)
  set(pedsim_srvs_DEVEL_PREFIX /home/zejian/catkin_ws/devel)
  set(pedsim_srvs_INSTALL_PREFIX "")
  set(pedsim_srvs_PREFIX ${pedsim_srvs_DEVEL_PREFIX})
else()
  set(pedsim_srvs_SOURCE_PREFIX "")
  set(pedsim_srvs_DEVEL_PREFIX "")
  set(pedsim_srvs_INSTALL_PREFIX /home/zejian/catkin_ws/install)
  set(pedsim_srvs_PREFIX ${pedsim_srvs_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'pedsim_srvs' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(pedsim_srvs_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include " STREQUAL " ")
  set(pedsim_srvs_INCLUDE_DIRS "")
  set(_include_dirs "include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${pedsim_srvs_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'pedsim_srvs' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'batman <okal@cs.uni-freiburg.de>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'pedsim_srvs' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/zejian/catkin_ws/install/${idir}'.  Ask the maintainer 'batman <okal@cs.uni-freiburg.de>' to fix it.")
    endif()
    _list_append_unique(pedsim_srvs_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND pedsim_srvs_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND pedsim_srvs_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND pedsim_srvs_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/zejian/catkin_ws/install/lib;/home/zejian/catkin_ws/devel/lib;/opt/ros/indigo/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(pedsim_srvs_LIBRARY_DIRS ${lib_path})
      list(APPEND pedsim_srvs_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'pedsim_srvs'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND pedsim_srvs_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(pedsim_srvs_EXPORTED_TARGETS "pedsim_srvs_generate_messages_cpp;pedsim_srvs_generate_messages_lisp;pedsim_srvs_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${pedsim_srvs_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "message_runtime;pedsim_msgs;std_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 pedsim_srvs_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${pedsim_srvs_dep}_FOUND)
      find_package(${pedsim_srvs_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${pedsim_srvs_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(pedsim_srvs_INCLUDE_DIRS ${${pedsim_srvs_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(pedsim_srvs_LIBRARIES ${pedsim_srvs_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${pedsim_srvs_dep}_LIBRARIES})
  _list_append_deduplicate(pedsim_srvs_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(pedsim_srvs_LIBRARIES ${pedsim_srvs_LIBRARIES})

  _list_append_unique(pedsim_srvs_LIBRARY_DIRS ${${pedsim_srvs_dep}_LIBRARY_DIRS})
  list(APPEND pedsim_srvs_EXPORTED_TARGETS ${${pedsim_srvs_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "pedsim_srvs-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${pedsim_srvs_DIR}/${extra})
  endif()
  include(${extra})
endforeach()

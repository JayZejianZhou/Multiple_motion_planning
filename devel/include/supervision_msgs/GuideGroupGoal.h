// Generated by gencpp from file supervision_msgs/GuideGroupGoal.msg
// DO NOT EDIT!


#ifndef SUPERVISION_MSGS_MESSAGE_GUIDEGROUPGOAL_H
#define SUPERVISION_MSGS_MESSAGE_GUIDEGROUPGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace supervision_msgs
{
template <class ContainerAllocator>
struct GuideGroupGoal_
{
  typedef GuideGroupGoal_<ContainerAllocator> Type;

  GuideGroupGoal_()
    : group_id()
    , destination()
    , path()
    , coordinates()  {
    }
  GuideGroupGoal_(const ContainerAllocator& _alloc)
    : group_id(_alloc)
    , destination(_alloc)
    , path(_alloc)
    , coordinates(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _group_id_type;
  _group_id_type group_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _destination_type;
  _destination_type destination;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _path_type;
  _path_type path;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _coordinates_type;
  _coordinates_type coordinates;




  typedef boost::shared_ptr< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> const> ConstPtr;

}; // struct GuideGroupGoal_

typedef ::supervision_msgs::GuideGroupGoal_<std::allocator<void> > GuideGroupGoal;

typedef boost::shared_ptr< ::supervision_msgs::GuideGroupGoal > GuideGroupGoalPtr;
typedef boost::shared_ptr< ::supervision_msgs::GuideGroupGoal const> GuideGroupGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace supervision_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'supervision_msgs': ['/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/supervision_msgs/msg', '/home/zejian/catkin_ws/devel/share/supervision_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d3b7d35066b768ef64ff99a8f5e0f066";
  }

  static const char* value(const ::supervision_msgs::GuideGroupGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd3b7d35066b768efULL;
  static const uint64_t static_value2 = 0x64ff99a8f5e0f066ULL;
};

template<class ContainerAllocator>
struct DataType< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "supervision_msgs/GuideGroupGoal";
  }

  static const char* value(const ::supervision_msgs::GuideGroupGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
string group_id\n\
string destination\n\
string[] path\n\
geometry_msgs/Pose[] coordinates\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::supervision_msgs::GuideGroupGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.group_id);
      stream.next(m.destination);
      stream.next(m.path);
      stream.next(m.coordinates);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GuideGroupGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::supervision_msgs::GuideGroupGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::supervision_msgs::GuideGroupGoal_<ContainerAllocator>& v)
  {
    s << indent << "group_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.group_id);
    s << indent << "destination: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.destination);
    s << indent << "path[]" << std::endl;
    for (size_t i = 0; i < v.path.size(); ++i)
    {
      s << indent << "  path[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path[i]);
    }
    s << indent << "coordinates[]" << std::endl;
    for (size_t i = 0; i < v.coordinates.size(); ++i)
    {
      s << indent << "  coordinates[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.coordinates[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SUPERVISION_MSGS_MESSAGE_GUIDEGROUPGOAL_H
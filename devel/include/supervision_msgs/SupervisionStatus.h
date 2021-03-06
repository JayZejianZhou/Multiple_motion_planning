// Generated by gencpp from file supervision_msgs/SupervisionStatus.msg
// DO NOT EDIT!


#ifndef SUPERVISION_MSGS_MESSAGE_SUPERVISIONSTATUS_H
#define SUPERVISION_MSGS_MESSAGE_SUPERVISIONSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace supervision_msgs
{
template <class ContainerAllocator>
struct SupervisionStatus_
{
  typedef SupervisionStatus_<ContainerAllocator> Type;

  SupervisionStatus_()
    : status()
    , details()  {
    }
  SupervisionStatus_(const ContainerAllocator& _alloc)
    : status(_alloc)
    , details(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _details_type;
  _details_type details;




  typedef boost::shared_ptr< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> const> ConstPtr;

}; // struct SupervisionStatus_

typedef ::supervision_msgs::SupervisionStatus_<std::allocator<void> > SupervisionStatus;

typedef boost::shared_ptr< ::supervision_msgs::SupervisionStatus > SupervisionStatusPtr;
typedef boost::shared_ptr< ::supervision_msgs::SupervisionStatus const> SupervisionStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::supervision_msgs::SupervisionStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "14c9eacf4b402c8b3ddf2528b4dcf4d9";
  }

  static const char* value(const ::supervision_msgs::SupervisionStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x14c9eacf4b402c8bULL;
  static const uint64_t static_value2 = 0x3ddf2528b4dcf4d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "supervision_msgs/SupervisionStatus";
  }

  static const char* value(const ::supervision_msgs::SupervisionStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string status\n\
string details\n\
";
  }

  static const char* value(const ::supervision_msgs::SupervisionStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.details);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SupervisionStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::supervision_msgs::SupervisionStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::supervision_msgs::SupervisionStatus_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
    s << indent << "details: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.details);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SUPERVISION_MSGS_MESSAGE_SUPERVISIONSTATUS_H

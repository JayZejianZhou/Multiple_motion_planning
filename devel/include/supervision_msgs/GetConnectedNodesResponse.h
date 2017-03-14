// Generated by gencpp from file supervision_msgs/GetConnectedNodesResponse.msg
// DO NOT EDIT!


#ifndef SUPERVISION_MSGS_MESSAGE_GETCONNECTEDNODESRESPONSE_H
#define SUPERVISION_MSGS_MESSAGE_GETCONNECTEDNODESRESPONSE_H


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
struct GetConnectedNodesResponse_
{
  typedef GetConnectedNodesResponse_<ContainerAllocator> Type;

  GetConnectedNodesResponse_()
    : connected_nodes()  {
    }
  GetConnectedNodesResponse_(const ContainerAllocator& _alloc)
    : connected_nodes(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _connected_nodes_type;
  _connected_nodes_type connected_nodes;




  typedef boost::shared_ptr< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetConnectedNodesResponse_

typedef ::supervision_msgs::GetConnectedNodesResponse_<std::allocator<void> > GetConnectedNodesResponse;

typedef boost::shared_ptr< ::supervision_msgs::GetConnectedNodesResponse > GetConnectedNodesResponsePtr;
typedef boost::shared_ptr< ::supervision_msgs::GetConnectedNodesResponse const> GetConnectedNodesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c15df44eefdf065e2f73dde2220f3224";
  }

  static const char* value(const ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc15df44eefdf065eULL;
  static const uint64_t static_value2 = 0x2f73dde2220f3224ULL;
};

template<class ContainerAllocator>
struct DataType< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "supervision_msgs/GetConnectedNodesResponse";
  }

  static const char* value(const ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] connected_nodes\n\
";
  }

  static const char* value(const ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.connected_nodes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetConnectedNodesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::supervision_msgs::GetConnectedNodesResponse_<ContainerAllocator>& v)
  {
    s << indent << "connected_nodes[]" << std::endl;
    for (size_t i = 0; i < v.connected_nodes.size(); ++i)
    {
      s << indent << "  connected_nodes[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.connected_nodes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SUPERVISION_MSGS_MESSAGE_GETCONNECTEDNODESRESPONSE_H
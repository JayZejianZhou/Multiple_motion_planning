// Generated by gencpp from file spencer_mapping_msgs/TopologicalMapNode.msg
// DO NOT EDIT!


#ifndef SPENCER_MAPPING_MSGS_MESSAGE_TOPOLOGICALMAPNODE_H
#define SPENCER_MAPPING_MSGS_MESSAGE_TOPOLOGICALMAPNODE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace spencer_mapping_msgs
{
template <class ContainerAllocator>
struct TopologicalMapNode_
{
  typedef TopologicalMapNode_<ContainerAllocator> Type;

  TopologicalMapNode_()
    : id(0)
    , position()  {
    }
  TopologicalMapNode_(const ContainerAllocator& _alloc)
    : id(0)
    , position(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;




  typedef boost::shared_ptr< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> const> ConstPtr;

}; // struct TopologicalMapNode_

typedef ::spencer_mapping_msgs::TopologicalMapNode_<std::allocator<void> > TopologicalMapNode;

typedef boost::shared_ptr< ::spencer_mapping_msgs::TopologicalMapNode > TopologicalMapNodePtr;
typedef boost::shared_ptr< ::spencer_mapping_msgs::TopologicalMapNode const> TopologicalMapNodeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace spencer_mapping_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'spencer_mapping_msgs': ['/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/mapping/spencer_mapping_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "efa802d3426eed24813eabb07b944670";
  }

  static const char* value(const ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xefa802d3426eed24ULL;
  static const uint64_t static_value2 = 0x813eabb07b944670ULL;
};

template<class ContainerAllocator>
struct DataType< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "spencer_mapping_msgs/TopologicalMapNode";
  }

  static const char* value(const ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This format is adapted from the Fuerte topological_navigation stack.\n\
\n\
# Info stored with a node in a 2d topological map\n\
\n\
# Id of this node in the topological map\n\
uint32 id\n\
\n\
# position in the global map\n\
geometry_msgs/Point position\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TopologicalMapNode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::spencer_mapping_msgs::TopologicalMapNode_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SPENCER_MAPPING_MSGS_MESSAGE_TOPOLOGICALMAPNODE_H

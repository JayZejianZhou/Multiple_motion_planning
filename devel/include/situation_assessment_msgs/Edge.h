// Generated by gencpp from file situation_assessment_msgs/Edge.msg
// DO NOT EDIT!


#ifndef SITUATION_ASSESSMENT_MSGS_MESSAGE_EDGE_H
#define SITUATION_ASSESSMENT_MSGS_MESSAGE_EDGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <situation_assessment_msgs/Property.h>

namespace situation_assessment_msgs
{
template <class ContainerAllocator>
struct Edge_
{
  typedef Edge_<ContainerAllocator> Type;

  Edge_()
    : source()
    , destination()
    , properties()  {
    }
  Edge_(const ContainerAllocator& _alloc)
    : source(_alloc)
    , destination(_alloc)
    , properties(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _source_type;
  _source_type source;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _destination_type;
  _destination_type destination;

   typedef std::vector< ::situation_assessment_msgs::Property_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::situation_assessment_msgs::Property_<ContainerAllocator> >::other >  _properties_type;
  _properties_type properties;




  typedef boost::shared_ptr< ::situation_assessment_msgs::Edge_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::situation_assessment_msgs::Edge_<ContainerAllocator> const> ConstPtr;

}; // struct Edge_

typedef ::situation_assessment_msgs::Edge_<std::allocator<void> > Edge;

typedef boost::shared_ptr< ::situation_assessment_msgs::Edge > EdgePtr;
typedef boost::shared_ptr< ::situation_assessment_msgs::Edge const> EdgeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::situation_assessment_msgs::Edge_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::situation_assessment_msgs::Edge_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace situation_assessment_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'situation_assessment_msgs': ['/home/zejian/catkin_ws/src/pedsim_ros/visualization/spencer_messages/supervision/situation_assessment_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::situation_assessment_msgs::Edge_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::situation_assessment_msgs::Edge_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::situation_assessment_msgs::Edge_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::situation_assessment_msgs::Edge_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::situation_assessment_msgs::Edge_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::situation_assessment_msgs::Edge_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::situation_assessment_msgs::Edge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6bca58e64256168e7e589690704fda7f";
  }

  static const char* value(const ::situation_assessment_msgs::Edge_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6bca58e64256168eULL;
  static const uint64_t static_value2 = 0x7e589690704fda7fULL;
};

template<class ContainerAllocator>
struct DataType< ::situation_assessment_msgs::Edge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "situation_assessment_msgs/Edge";
  }

  static const char* value(const ::situation_assessment_msgs::Edge_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::situation_assessment_msgs::Edge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string source\n\
string destination\n\
situation_assessment_msgs/Property[] properties\n\
\n\
================================================================================\n\
MSG: situation_assessment_msgs/Property\n\
string name\n\
int16 value\n\
";
  }

  static const char* value(const ::situation_assessment_msgs::Edge_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::situation_assessment_msgs::Edge_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.source);
      stream.next(m.destination);
      stream.next(m.properties);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Edge_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::situation_assessment_msgs::Edge_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::situation_assessment_msgs::Edge_<ContainerAllocator>& v)
  {
    s << indent << "source: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.source);
    s << indent << "destination: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.destination);
    s << indent << "properties[]" << std::endl;
    for (size_t i = 0; i < v.properties.size(); ++i)
    {
      s << indent << "  properties[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::situation_assessment_msgs::Property_<ContainerAllocator> >::stream(s, indent + "    ", v.properties[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SITUATION_ASSESSMENT_MSGS_MESSAGE_EDGE_H

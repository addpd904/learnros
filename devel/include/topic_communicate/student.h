// Generated by gencpp from file topic_communicate/student.msg
// DO NOT EDIT!


#ifndef TOPIC_COMMUNICATE_MESSAGE_STUDENT_H
#define TOPIC_COMMUNICATE_MESSAGE_STUDENT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace topic_communicate
{
template <class ContainerAllocator>
struct student_
{
  typedef student_<ContainerAllocator> Type;

  student_()
    : name()
    , age(0)
    , enscore(0.0)  {
    }
  student_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , age(0)
    , enscore(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef uint16_t _age_type;
  _age_type age;

   typedef double _enscore_type;
  _enscore_type enscore;





  typedef boost::shared_ptr< ::topic_communicate::student_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::topic_communicate::student_<ContainerAllocator> const> ConstPtr;

}; // struct student_

typedef ::topic_communicate::student_<std::allocator<void> > student;

typedef boost::shared_ptr< ::topic_communicate::student > studentPtr;
typedef boost::shared_ptr< ::topic_communicate::student const> studentConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::topic_communicate::student_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::topic_communicate::student_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::topic_communicate::student_<ContainerAllocator1> & lhs, const ::topic_communicate::student_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.age == rhs.age &&
    lhs.enscore == rhs.enscore;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::topic_communicate::student_<ContainerAllocator1> & lhs, const ::topic_communicate::student_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace topic_communicate

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::topic_communicate::student_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::topic_communicate::student_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::topic_communicate::student_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::topic_communicate::student_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::topic_communicate::student_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::topic_communicate::student_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::topic_communicate::student_<ContainerAllocator> >
{
  static const char* value()
  {
    return "458939fb31b88c5953c7109c2c977d88";
  }

  static const char* value(const ::topic_communicate::student_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x458939fb31b88c59ULL;
  static const uint64_t static_value2 = 0x53c7109c2c977d88ULL;
};

template<class ContainerAllocator>
struct DataType< ::topic_communicate::student_<ContainerAllocator> >
{
  static const char* value()
  {
    return "topic_communicate/student";
  }

  static const char* value(const ::topic_communicate::student_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::topic_communicate::student_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"uint16 age\n"
"float64 enscore\n"
;
  }

  static const char* value(const ::topic_communicate::student_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::topic_communicate::student_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.age);
      stream.next(m.enscore);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct student_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::topic_communicate::student_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::topic_communicate::student_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "age: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.age);
    s << indent << "enscore: ";
    Printer<double>::stream(s, indent + "  ", v.enscore);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TOPIC_COMMUNICATE_MESSAGE_STUDENT_H
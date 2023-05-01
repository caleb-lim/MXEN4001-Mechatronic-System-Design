// Generated by gencpp from file my_package/SetRotationMatrixResponse.msg
// DO NOT EDIT!


#ifndef MY_PACKAGE_MESSAGE_SETROTATIONMATRIXRESPONSE_H
#define MY_PACKAGE_MESSAGE_SETROTATIONMATRIXRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_package
{
template <class ContainerAllocator>
struct SetRotationMatrixResponse_
{
  typedef SetRotationMatrixResponse_<ContainerAllocator> Type;

  SetRotationMatrixResponse_()
    : angle(0.0)  {
    }
  SetRotationMatrixResponse_(const ContainerAllocator& _alloc)
    : angle(0.0)  {
  (void)_alloc;
    }



   typedef float _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetRotationMatrixResponse_

typedef ::my_package::SetRotationMatrixResponse_<std::allocator<void> > SetRotationMatrixResponse;

typedef boost::shared_ptr< ::my_package::SetRotationMatrixResponse > SetRotationMatrixResponsePtr;
typedef boost::shared_ptr< ::my_package::SetRotationMatrixResponse const> SetRotationMatrixResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_package::SetRotationMatrixResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_package::SetRotationMatrixResponse_<ContainerAllocator1> & lhs, const ::my_package::SetRotationMatrixResponse_<ContainerAllocator2> & rhs)
{
  return lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_package::SetRotationMatrixResponse_<ContainerAllocator1> & lhs, const ::my_package::SetRotationMatrixResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2d11dcdbe5a6f73dd324353dc52315ab";
  }

  static const char* value(const ::my_package::SetRotationMatrixResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2d11dcdbe5a6f73dULL;
  static const uint64_t static_value2 = 0xd324353dc52315abULL;
};

template<class ContainerAllocator>
struct DataType< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_package/SetRotationMatrixResponse";
  }

  static const char* value(const ::my_package::SetRotationMatrixResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 angle\n"
;
  }

  static const char* value(const ::my_package::SetRotationMatrixResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetRotationMatrixResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_package::SetRotationMatrixResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_package::SetRotationMatrixResponse_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_PACKAGE_MESSAGE_SETROTATIONMATRIXRESPONSE_H

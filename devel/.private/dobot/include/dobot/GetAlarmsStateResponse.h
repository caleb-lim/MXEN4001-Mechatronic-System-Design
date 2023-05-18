// Generated by gencpp from file dobot/GetAlarmsStateResponse.msg
// DO NOT EDIT!


#ifndef DOBOT_MESSAGE_GETALARMSSTATERESPONSE_H
#define DOBOT_MESSAGE_GETALARMSSTATERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dobot
{
template <class ContainerAllocator>
struct GetAlarmsStateResponse_
{
  typedef GetAlarmsStateResponse_<ContainerAllocator> Type;

  GetAlarmsStateResponse_()
    : result(0)
    , alarmsState()  {
    }
  GetAlarmsStateResponse_(const ContainerAllocator& _alloc)
    : result(0)
    , alarmsState(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _result_type;
  _result_type result;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _alarmsState_type;
  _alarmsState_type alarmsState;





  typedef boost::shared_ptr< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetAlarmsStateResponse_

typedef ::dobot::GetAlarmsStateResponse_<std::allocator<void> > GetAlarmsStateResponse;

typedef boost::shared_ptr< ::dobot::GetAlarmsStateResponse > GetAlarmsStateResponsePtr;
typedef boost::shared_ptr< ::dobot::GetAlarmsStateResponse const> GetAlarmsStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dobot::GetAlarmsStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dobot::GetAlarmsStateResponse_<ContainerAllocator1> & lhs, const ::dobot::GetAlarmsStateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.alarmsState == rhs.alarmsState;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dobot::GetAlarmsStateResponse_<ContainerAllocator1> & lhs, const ::dobot::GetAlarmsStateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dobot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "471cc92db011a752d21793dfa031a894";
  }

  static const char* value(const ::dobot::GetAlarmsStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x471cc92db011a752ULL;
  static const uint64_t static_value2 = 0xd21793dfa031a894ULL;
};

template<class ContainerAllocator>
struct DataType< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dobot/GetAlarmsStateResponse";
  }

  static const char* value(const ::dobot::GetAlarmsStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 result\n"
"uint8[] alarmsState\n"
"\n"
;
  }

  static const char* value(const ::dobot::GetAlarmsStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.alarmsState);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetAlarmsStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dobot::GetAlarmsStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dobot::GetAlarmsStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int32_t>::stream(s, indent + "  ", v.result);
    s << indent << "alarmsState[]" << std::endl;
    for (size_t i = 0; i < v.alarmsState.size(); ++i)
    {
      s << indent << "  alarmsState[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.alarmsState[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DOBOT_MESSAGE_GETALARMSSTATERESPONSE_H
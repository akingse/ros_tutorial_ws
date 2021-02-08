// Generated by gencpp from file ros_tutorials_parameter/SrvTutorial.msg
// DO NOT EDIT!


#ifndef ROS_TUTORIALS_PARAMETER_MESSAGE_SRVTUTORIAL_H
#define ROS_TUTORIALS_PARAMETER_MESSAGE_SRVTUTORIAL_H

#include <ros/service_traits.h>


#include <ros_tutorials_parameter/SrvTutorialRequest.h>
#include <ros_tutorials_parameter/SrvTutorialResponse.h>


namespace ros_tutorials_parameter
{

struct SrvTutorial
{

typedef SrvTutorialRequest Request;
typedef SrvTutorialResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SrvTutorial
} // namespace ros_tutorials_parameter


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_tutorials_parameter::SrvTutorial > {
  static const char* value()
  {
    return "d431cae597499d244ef1c576e21358c8";
  }

  static const char* value(const ::ros_tutorials_parameter::SrvTutorial&) { return value(); }
};

template<>
struct DataType< ::ros_tutorials_parameter::SrvTutorial > {
  static const char* value()
  {
    return "ros_tutorials_parameter/SrvTutorial";
  }

  static const char* value(const ::ros_tutorials_parameter::SrvTutorial&) { return value(); }
};


// service_traits::MD5Sum< ::ros_tutorials_parameter::SrvTutorialRequest> should match 
// service_traits::MD5Sum< ::ros_tutorials_parameter::SrvTutorial > 
template<>
struct MD5Sum< ::ros_tutorials_parameter::SrvTutorialRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_tutorials_parameter::SrvTutorial >::value();
  }
  static const char* value(const ::ros_tutorials_parameter::SrvTutorialRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_tutorials_parameter::SrvTutorialRequest> should match 
// service_traits::DataType< ::ros_tutorials_parameter::SrvTutorial > 
template<>
struct DataType< ::ros_tutorials_parameter::SrvTutorialRequest>
{
  static const char* value()
  {
    return DataType< ::ros_tutorials_parameter::SrvTutorial >::value();
  }
  static const char* value(const ::ros_tutorials_parameter::SrvTutorialRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_tutorials_parameter::SrvTutorialResponse> should match 
// service_traits::MD5Sum< ::ros_tutorials_parameter::SrvTutorial > 
template<>
struct MD5Sum< ::ros_tutorials_parameter::SrvTutorialResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_tutorials_parameter::SrvTutorial >::value();
  }
  static const char* value(const ::ros_tutorials_parameter::SrvTutorialResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_tutorials_parameter::SrvTutorialResponse> should match 
// service_traits::DataType< ::ros_tutorials_parameter::SrvTutorial > 
template<>
struct DataType< ::ros_tutorials_parameter::SrvTutorialResponse>
{
  static const char* value()
  {
    return DataType< ::ros_tutorials_parameter::SrvTutorial >::value();
  }
  static const char* value(const ::ros_tutorials_parameter::SrvTutorialResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_TUTORIALS_PARAMETER_MESSAGE_SRVTUTORIAL_H

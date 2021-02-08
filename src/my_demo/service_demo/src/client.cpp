// This is client of the service demo
// 包含必要文件，注意Service文件的包含方式，我们定义的srv文件为Greeting.srv,在包含时需要写成Greeting.h
# include "ros/ros.h"
# include "service_demo/Greeting.h"
#include <ctime> 
int main(int argc, char **argv)
{
	// 初始化，节点命名为"greetings_client"
	//ros::Rate loop_rate(1);

	ros::init(argc, argv, "greetings_client");
	ros::NodeHandle nh;
	ros::ServiceClient client = nh.serviceClient<service_demo::Greeting>("greetings");
	service_demo::Greeting srv;

	int i=0;
  while (ros::ok())  { //ros::ok()才能用Ctrl-c结束掉。连续发送信息请求
	
	// 定义service客户端，service名字为“greetings”，service类型为Service_demo
	// 实例化srv，设置其request消息的内容，这里request包含两个变量，name和age，见Greeting.srv
	srv.request.name = "akingse";//"HAN";
	srv.request.age = i;

	client.call(srv);
	ROS_INFO("Response from server: %s", srv.response.feedback.c_str());
	ros::Duration(2).sleep();
	i+=1;
  }

  /*
	if (client.call(srv)) //判断调试中包含了call调用
	{
		// 注意我们的response部分中的内容只包含一个变量response，另，注意将其转变成字符串
		ROS_INFO("Response from server: %s", srv.response.feedback.c_str());
	}
	else
	{
		ROS_ERROR("Failed to call service Service_demo");
		return 1;
	}
	return 0;*/
}
/*
	service_demo/srv/client.cpp	 内容如下:
#	include	"ros/ros.h"
#	include	"service_demo/Greeting.h"
int	main(int	argc,	char	**argv)
{
	ros::init(argc,	argv,	"greetings_client");//	初始化,节点命名为"greetings_client"
	ros::NodeHandle	nh;
	ros::ServiceClient	client	=	nh.serviceClient<service_demo::Greeting>("greetings");
	//	定义service客户端,service名字为“greetings”,service类型为Service_demo
	//	实例化srv,设置其request消息的内容,这里request包含两个变量,name和age,见Greeting.srv
	service_demo::Greeting	srv;
	srv.request.name	=	"HAN";
	srv.request.age	=	20;
	if	(client.call(srv))
	{					//	注意我们的response部分中的内容只包含一个变量response,另,注意将其转变成字符串
		ROS_INFO("Response	from	server:	%s",	srv.response.feedback.c_str());
	}
	else
	{
		ROS_ERROR("Failed	to	call	service	Service_demo");
		return	1;
	}
	return	0;
}
*/
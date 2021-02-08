/**
 * 该例程将发布turtle1/cmd_vel话题，消息类型geometry_msgs::Twist
 */
 
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char **argv)
{
	// ROS节点初始化
	ros::init(argc, argv, "velocity_publisher");

	// 创建节点句柄
	ros::NodeHandle n;

	// 创建一个Publisher，发布名为/turtle1/cmd_vel的topic，消息类型为geometry_msgs::Twist，队列长度10
	ros::Publisher turtle_vel_pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 10);

	// 设置循环的频率
	ros::Rate loop_rate(10);

	int count = 0;
	while (ros::ok())
	{
		/*
		~$ rostopic type /turtle1/cmd_vel | rosmsg show
		geometry_msgs/Vector3 linear
		float64 x
		float64 y
		float64 z
		geometry_msgs/Vector3 angular
		float64 x
		float64 y
		float64 z
		*/
	    // 初始化geometry_msgs::Twist类型的消息
		geometry_msgs::Twist vel_msg;
		vel_msg.linear.x = 1;  //速度，设置线速度为1m/s
		vel_msg.angular.z = 1;  //角度，设置角速度为1rad/s

	    // 发布消息
		turtle_vel_pub.publish(vel_msg);
		ROS_INFO("Publish turtle velocity command[%0.2f m/s, %0.2f rad/s]", 
				vel_msg.linear.x, vel_msg.angular.z);

	    // 按照循环频率延时
	    loop_rate.sleep();
	}

	return 0;
}

/*

#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

ros::Publisher cmdVelPub;

int main(int argc, char **argv){
  ros::init(argc, argv, "talk");
  //"talk"必须是nodename
  std::string topic = "/turtle1/cmd_vel"; //topic name
  ros::NodeHandle n;
  cmdVelPub = n.advertise<geometry_msgs::Twist>(topic, 1);
  //第一个参数也可以写成"/turtle1/cmd_vel"这样的topic name
  //第二个参数是发布的缓冲区大小,<geometry_msgs::Twist>是消息类型
  ros::Rate loopRate(2);
  //与Rate::sleep();配合指定自循环频率
  ROS_INFO("talk cpp start...");//输出显示信息
  geometry_msgs::Twist speed; // 控制信号载体 Twist message

  while (ros::ok()){
    speed.linear.x = 1.5; // 设置线速度为1m/s，正为前进，负为后退
    speed.angular.z = 1; // 设置角速度为1rad/s，正为左转，负为右转
    cmdVelPub.publish(speed); // 将刚才设置的指令发送给机器人

    ros::spinOnce();
    loopRate.sleep();//按loopRate(2)设置的2HZ将程序挂起
  }

  return 0;
}*/

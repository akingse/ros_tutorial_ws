#include "ros/ros.h"
#include "std_msgs/String.h"
#include <geometry_msgs/Twist.h>
#include <stdlib.h>
#include <math.h>

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
	ros::init(argc, argv, "publish_velocity");
	ros::NodeHandle nh;
	ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);
	srand(time(0));
	ros::Rate loop_rate(2);
	while (ros::ok())
	{
		geometry_msgs::Twist msg;
		msg.linear.x = double(rand())/double(RAND_MAX);
		msg.angular.z = 2*double(rand())/double(RAND_MAX)-1;
		pub.publish(msg);

		ROS_INFO_STREAM("Sending random velocity command:"
		<<"linear="<<msg.linear.x
		<<"angular="<<msg.angular.z);
		loop_rate.sleep();
	}
	
	return 0;
}
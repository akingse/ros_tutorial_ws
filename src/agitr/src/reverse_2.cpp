#include <ros/ros.h>
#include <std_msgs/String.h>
#include <geometry_msgs/Twist.h>
//reverse_2.cpp //fail

void theCallback(const geometry_msgs::Twist &msgIn) {
    geometry_msgs::Twist msgOut ;
    msgOut.linear.x = -msgIn.linear.x ;
    msgOut.angular.z = -msgIn.angular.z ;
}



int main(int argc, char **argv) 
{
    ros::init(argc, argv, "reverse_velocity2");
    ros::NodeHandle n; 
    ros::Publisher pub = n.advertise<geometry_msgs::Twist>( "turtle1/cmd_vel_reversed" , 1000) ;
    ros::Subscriber sub = n.subscribe ( "turtle1/cmd_vel" , 1000 , &theCallback) ;
    ros::spin();  
}
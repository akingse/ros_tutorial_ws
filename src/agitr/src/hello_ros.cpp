#include<ros/ros.h>
int main(int argc, char** argv)
{
    /* code for main function */
    ros::init(argc, argv, "hello_ros");
    ros::NodeHandle nh;
    ROS_INFO_STREAM("Hello,ROS!");
}
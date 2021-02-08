/**
 * 该例程将订阅/turtle1/Pose话题，消息类型turtlesim::Pose
 */
 
#include <ros/ros.h>
#include "turtlesim/Pose.h"

// 接收到订阅的消息后，会进入消息回调函数
void poseCallback(const turtlesim::Pose::ConstPtr& msg)
{
    // 将接收到的消息打印出来
    ROS_INFO("Turtle pose: x:%0.6f, y:%0.6f", msg->x, msg->y);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pose_subscriber");
    ros::NodeHandle n;
    ros::Subscriber pose_sub = n.subscribe("/turtle1/pose", 10, poseCallback);
    ros::spin();

    return 0;
}

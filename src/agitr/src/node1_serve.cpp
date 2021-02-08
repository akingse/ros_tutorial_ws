#include <ros/ros.h>
#include <std_srvs/Empty.h>
#include <geometry_msgs/Twist.h>

bool forward = true;
bool toggleForward(std_srvs::Empty::Request &req, std_srvs::Empty::Response &resp)
{
    forward = !forward;
    ROS_INFO_STREAM("Now sending " << (forward?"forward":"rotate") << " commands.");
    return true;
}

int main(int argc, char **argv)
{
    /* code for main function */
    ros::init(argc, argv, "pubvel_toggle");
    ros::NodeHandle nh;

    ros::ServiceServer server = nh.advertiseService("toggle_forward", &toggleForward);

    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);

    ros::Rate rate(2);
    while (ros::ok())
    {
        /* code for loop body */
        geometry_msgs::Twist msg;
        msg.linear.x = forward?1.0:0.0;
        msg.angular.z = forward?0.0:1.0;
        pub.publish(msg);
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}
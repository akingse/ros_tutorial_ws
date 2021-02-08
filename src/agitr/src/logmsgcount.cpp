// This program periodically generates log messages at various severity levels .
#include <ros/ros.h>
int main (int argc,char **argv) {
// Initialize the ROS system and become a node .
    ros::init(argc, argv, "count_and_log");//没注意，节点名和exec名有不一致了
    ros::NodeHandle nh;
    // Generate log messages of varying severi ty regularly .
    ros::Rate rate (10);
    //for(int i=1; ros::ok(); i++){
    for(int i=1; i<=20; i++){
        
        ROS_DEBUG_STREAM("Counted to "<<i);
        if((i%3)==0){
            ROS_INFO_STREAM(i<<" is divisible by 3.");
        }

        if((i%5)==0){
            ROS_WARN_STREAM(i<<" is divisible by 5.");
        }

        if((i%10)==0){
            ROS_ERROR_STREAM(i<<" is divisible by 10.");
        }

        if((i%20)==0){
            ROS_FATAL_STREAM(i<<" is divisible by 20.");
        }

    rate.sleep();
    }
}
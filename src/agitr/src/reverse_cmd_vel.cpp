// This program subscribes to turtle1/cmd_vel and republishes on turtle1/cmd_vel_reversed ,with the signs inverted .
//向turtle1/cmd_vel订阅信息,然后反转所有接收到消息中的线速度和角速度指令,并将反转后的指令通过话题turtle1/cmd_vel_reversed发布。

#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

ros::Publisher *pubPtr ;

void commandVelocityReceived (const geometry_msgs::Twist &msgIn) {
    geometry_msgs::Twist msgOut ;
    msgOut.linear.x = -msgIn.linear.x ;
    msgOut.angular.z = -msgIn.angular.z ;
    pubPtr->publish (msgOut) ;
 }

int main( int argc , char **argv ) {
    ros::init ( argc , argv , "reverse_velocity") ;
    ros::NodeHandle nh ;

    pubPtr = new ros::Publisher (nh.advertise<geometry_msgs::Twist>( "turtle1/cmd_vel_reversed" , 1000) ) ;
    ros::Subscriber sub = nh.subscribe ( "turtle1/cmd_vel" , 1000 , &commandVelocityReceived ) ;

    ros::spin () ;
    delete pubPtr ;
 }


//
 //检查复制错误，节点消息话题名""里的空格，减号−-，∗∗**还有两种
// This program subscribes to turtle1/pose and shows its messages on the screen .
#include <ros/ros.h>
#include <turtlesim/Pose.h> //使用 rostopic info /turtle1/pose 命令来确定消息类型
#include <iomanip> // for std::setprecision and std::fixed
#include <ctime> 
 // A callback function . Executed each time a new pose message arrives .
//因为订阅者节点无法知道消息什么时候到达,为了应对这一事实,
//把响应收到消息事件的代码放到回调函数里,ROS 每接收到一个新的消息将调用一次这个函数。
//package_name 和 type_name 指明了我们想订阅的话题的消息类
 void pose_received ( const turtlesim::Pose &msg ) { //poseMessageReceived
 ROS_INFO_STREAM( std::setprecision ( 2 ) << std::fixed //精度
<< "position=(" << msg.x << " , " << msg.y << ") " << "direction=" << msg.theta );

ros::Duration(1).sleep();//延迟输出频率
 }

 int main ( int argc , char ** argv ) {
 // Initialize the ROS system and become a node .
 ros::init( argc , argv , "subscribe_to_pose" ) ;
 ros::NodeHandle nh ;

 // Create a subscri ber obj ect .
 ros::Subscriber sub = nh.subscribe( "turtle1/pose" ,100, pose_received ) ;//void空函数，用指针取址；
//ros::Subscriber sub = node_handle.subscribe(topic_name,queue_size, pointer_to_callback_function);
//node_handle 与我们之前多次见到的节点句柄对象是相同的
//topic_name 是我们想要订阅的话题的名称
//queue_size 是本订阅者接收消息的队列大小,是一个整数， 事实证明，序列长度不影响callback的输出频率
//最后一个参数是指向回调函数的指针,通过对函数名使用符号运算符(&,“取址”)来获得函数的指针

 // Let ROS take over .
 ros::spin( ) ;//通过如下两个方法减少订阅者队列溢出的可能性:(1)调用 ros::spin/ros:spinOnce 确保允许回调发生;
 }
//ros::spinOnce();这个代码要求 ROS 去执行所有挂起的回调函数,然后将控制权限返回给我们。
//ros::spin();这个方法要求 ROS 等待并且执行回调函数,直到这个节点关机。

//默认频率太高了，7hz左右，需要减低频率

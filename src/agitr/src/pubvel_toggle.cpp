//pubvel_toggle.cpp //切换，此程序在旋转和平移命令之间切换
// This program toggles between rotation and translation commands, based on calls to a service .
#include <ros/ros.h>
#include <std_srvs/Empty.h>
#include <geometry_msgs/Twist.h>

bool forward = true ;
bool toggleForward (std_srvs::Empty::Request &req ,std_srvs::Empty::Response &resp) {
    forward = !forward ;
    /* ? : 条件运算符
    Exp1 ? Exp2 : Exp3;
    Exp1 是判断条件，true取exp2，else取exp3。
    */
    ROS_INFO_STREAM("Now sending " << ( forward ? "forward" : "rotate") << " commands.") ;
    return true ;
    }

int main( int argc , char ** argv ) {
    ros::init( argc , argv , "pubvel_toggle") ;
    ros::NodeHandle nh ;

    // Register our service with the master .注册服务器    //创建服务器对象
    ros::ServiceServer server = nh.advertiseService ("toggle_forward" , &toggleForward ) ;
    //node_handle 是前面我们多次使用的,也乐于使用的节点句柄。
    //service_name 是我们想要提供服务的字符串名称,建议为它使用局部名称
    //&toggleForward 指向回调函数的指针


    // Publish commands, using the latest value for forward , until the node shuts down.
    ros::Publisher pub = nh.advertise <geometry_msgs::Twist>("turtle1/cmd_vel" , 1000) ;
    ros::Rate rate (2) ;
    while ( ros::ok () ) {
        geometry_msgs::Twist msg ;
        msg.linear.x = forward ? 1.0 : 0.0 ;
        msg.angular.z = forward ? 0.0 : 1.0 ;
        pub.publish (msg) ;
        ros::spinOnce () ;//使用 ros::spinOnce()而不是ros::spin(),因为在没有服务调用时还有其他工作要做,即发布速度指令
        rate.sleep () ;
    }
}

/*使用方法
rosrun turtlesim turtlesim_node
rosrun agitr pubvel_toggle
rosservice call /toggle_forward
多次间歇调用，以在平移和转动中反复切换运动控制指令

调用 rosservice call 和观察到海龟行动的实际变化之间有显著的延滞
通过调用 ros::Rate 对象的 sleep 方法使系统以相对较低的频率(只有 2Hz)循环
直到调用 ros::spinOnce()时才被执行,而这每 0.5 秒才发生一次。就有0.5秒延迟
*/
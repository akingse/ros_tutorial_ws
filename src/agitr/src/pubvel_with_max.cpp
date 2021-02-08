// This program publishes random velocity commands, using a maximum linear velocity read from a parameter.
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <stdlib.h>

int main( int argc , char ** argv ) {
    ros::init ( argc , argv , "publish_velocity") ;
    ros::NodeHandle nh ;
    ros::Publisher pub = nh.advertise <geometry_msgs::Twist>("turtle1/cmd_vel" , 1000) ;
    srand ( time (0) ) ;

    // Get the maximum velocity parameter .
    //先设置参数，参数名是自定义的，～表示私有？
    //rosparam set /publish_velocity/max_vel 0.5
    const std::string PARAM_NAME = "~max_vel" ; //多次使用的"~max_vel"，可以定义一个字符串，好修改
    double maxVel ;
    bool ok = ros::param::get (PARAM_NAME, maxVel) ;
    ROS_INFO_STREAM("set parameter "<< PARAM_NAME<<"  "<< maxVel) ;
    if ( !ok) {
    ROS_FATAL_STREAM("Could not get parameter "<< PARAM_NAME) ;
    exit (1) ;
    }

    ros::Rate rate (2) ;
    while ( ros::ok () ) {
        // Create and send a random velocity command.随机速度，随机角度
        geometry_msgs::Twist msg ;
        msg.linear.x = maxVel* double ( rand () )/double (RAND_MAX) ;
        msg.angular.z = 2*double ( rand () )/double (RAND_MAX)-1;
        pub.publish(msg) ;

        // Wait untilit's time for another iteration .
        rate.sleep () ;
    }
}


/*
rosparam set /publish_velocity/max_vel 0.5
在命令行中使用类似重映射的语法为节点的私有参数赋值在技术上是可行的
可以通过给参数名添加下划线前缀实现 _param-name:=param-value，将“_”替换为“~”构成私有参数的形式

rosrun agitr pubvel_with_max _max_vel:=1

rosrun agitr pubvel_with_max //原启动命令
*/
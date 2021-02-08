// This program waits for a turtlesim to start up , and changes its background color .
#include <ros/ros.h>
#include <std_srvs/Empty.h>

int main( int argc , char ** argv ) {
    ros::init ( argc , argv , "set_bg_color") ;
    ros::NodeHandle nh ;

    // Wait until the clear service is available , which indicates that turtlesim has started up ,
    // and has set the background color parameters .
    ros::service::waitForService ("clear") ;//在启动 turtlesim 节点前等待/clear 服务调用结束,从而确保 turtlesim 不会覆盖这里设置的值。

    // Set the background color for turtlesim , overriding the default blue color .
    /*    使用 C++获取参数
    void ros::param::set(parameter_name, input_value);
    bool ros::param::get(parameter_name, output_value);
    */
    ros::param::set ("background_r" , 255) ;
    ros::param::set ("background_g" , 255) ; //0 255 0 原谅色
    ros::param::set ("background_b" , 0) ;

    // Get turtlesim to pick up the new parameter values 
    //并且通过调用/clear 服务强制 turtlesim 读取我们设置的参数值。
    ros::ServiceClient clearClient = nh.serviceClient <std_srvs::Empty>("/clear") ;
    std_srvs::Empty srv ;
    clearClient.call ( srv ) ;

}




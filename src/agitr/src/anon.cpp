
// This program starts with an anonymous name, which allows multiple copies to execute at the same time ,
// without needing to manually create distinct names for each of them.
#include <ros/ros.h>
int main ( int argc, char **argv ) {
    ros::init ( argc, argv, "anon",
    ros::init_options::AnonymousName );
    ros::NodeHandle nh ;
    ros::Rate rate (1) ;
    while (ros::ok( )) {
        ROS_INFO_STREAM( "This message is from "<< ros::this_node::getName ( ));
    rate.sleep( );
    }
}

/*
一个名为 anon.cpp 的程序,其中启动的节点使用匿名机制。因此,我们可以启动同一节点的大量副本,而不导致命名冲突。
这个程序的行为本身并没有什么特别。但是,正因为它请求了一个匿名名称,所以我们可以同时运行任意多的以上程序的副本。
这很容易理解,每个程序开始运行时,它就会得到一个具备唯一性的名字。
*/
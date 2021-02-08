// This is a ROS version of the standard "hello , world" program.
// This header defines the standard ROS classes .
#include <ros/ros.h>

int main ( int argc , char ** argv )
{
// Initialize the ROS system .
ros::init ( argc , argv , "hello_ros" ) ; //{ros::init函数初始化ROS客户端库。函数最后的参数是一个包含节点默认名的字符串。
// Establ ish this program as a ROS node .
ros::NodeHandle nh ;//ros::NodeHandle(节点句柄)对象是你的程序用于和ROS系统交互的主要机制
 // Send some output as a log message .
ROS_INFO_STREAM( "Hello,ROS!" ) ;//ROS_INFO_STREAM 宏将生成一条消息,且这一消息被发送到不同的位置,包括控制台窗口。
}

//由于重名原因，再加上当时对各个语句含义理解不清晰，这个例程的很多名字起的很乱，比如 节点名，可执行程序，比如exec名hello已被占用
//从包根目录下移至src下重新catkin_make有错误，因为cmakelists不会自动删除已删除的.cpp可执行文件
//删除cmakelists里残留的 add_executable(helloa hello.cpp)，好像不用删build devel



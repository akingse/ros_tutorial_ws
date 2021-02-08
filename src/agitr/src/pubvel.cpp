// This program publishes randomly−generated velocity messages for turtlesim .
 #include <ros/ros.h>
 #include <geometry_msgs/Twist.h> // For geometry_msgs:: Twist
//这个头文件的目的是定义一个 C++类,此类和给定的消息类型含有相同的数据类型成员。
 #include <stdlib.h> // For rand() and RAND_MAX

 int main ( int argc , char ** argv ) {
// Initialize the ROS system and become a node .
 ros::init ( argc , argv , "publish_velocity" );
 ros::NodeHandle nh;

// Create a publisher object .
ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel",1000);
//"turtle1/cmd_vel"此话题是系统turtlesim默认的订阅话题。

 // Seed the random number generator .
srand(time(0));
/*
srand(time(0))给这个算法一个启动种子，也就是算法的随机种子数，有这个数以后才可以产生随机数,用1970.1.1至今的秒数，初始化随机数种子。
　　Srand是种下随机种子数，你每回种下的种子不一样，用Rand得到的随机数就不一样。
为了每回种下一个不一样的种子，所以就选用Time(0)，Time(0)是得到当前时时间值（因为每时每刻时间是不一样的了）。 
*/
// Loop at 2Hz until the node is shut down.
ros::Rate rate(2);//ros::Rate对象
//这个对象控制循环运行速度,其构造函数中的参数以赫兹(Hz)为单位,即每秒钟的循环数。
//rate.sleep(); 每次调用此方法时就会在程序中产生延迟。


 while (ros::ok()) {
//pubvel 的 while 循环的条件是:ros::ok()；除非
//你可能对节点使用了 rosnode kill 命令。
//你可能给程序发送了一个终止信号(Ctrl-C)。
// Create and fill in the message . The other four fields , which are ignored by turtl esim , default to 0.
//rosmsg show geometry_msgs/Twist
//有两个顶层域(linear 和 angular),每个域都包含了三个子域(x、 y 和 z)。
//创建了一个geometry_msgs::Twist 对象msg,并且把伪随机数赋值给其中两个数据成员.
geometry_msgs::Twist msg;
//一个简单的随机算法
//msg.linear.x = 10*double(rand())/double(RAND_MAX);//线速度为 0 到 1 之间的某个值
msg.linear.x = 1*double(rand())/double(RAND_MAX);//线速度为 0 到 1 之间的某个值
msg.angular.z = 2*double(rand())/double(RAND_MAX)-1;//角速度为-1 到1 之间的某个值

// Publish the message .
pub.publish(msg);
// Send a message to rosout with the details .
 ROS_INFO_STREAM( "publish velocity: " << " linear=" << msg.linear.x << " angular=" << msg.angular.z);
 // Wait untilit's time for another iteration .
 rate.sleep();
 }
}
/*
这两个例子程序 pubvel.cpp subpose.cpp，是肖军浩版PDF的例程 agitr 包(a gentle introduction to ROS)；
还有部分程序在 beginner_tutorials包内；
此pubvel.cpp程序，发布随机运动指令
先运行 rosrun turtlesim turtlesim_node
再 rosrun agitr pubvel

隔壁subpose.cpp 订阅 turtlesim_node发布的/turtle1/pose 话题，描述了海龟的位姿(位置和朝向)。
rosrun agitr subpose


*/




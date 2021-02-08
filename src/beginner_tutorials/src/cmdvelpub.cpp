#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char **argv){
  ros::init(argc, argv, "talk_to_turtle");
  //std::string topic = "/turtle1/cmd_vel"; //topic name
  ros::NodeHandle n;
  //ros::Publisher cmdVelPub = n.advertise<geometry_msgs::Twist>(topic, 1);//其实不用单独定义
  ros::Publisher cmdVelPub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1);
  //第一个参数也可以写成"/turtle1/cmd_vel"这样的topic name
  //第二个参数是发布的缓冲区大小,<geometry_msgs::Twist>是消息类型
  ros::Rate loopRate(2);  //与Rate::sleep();配合指定自循环频率
  ROS_INFO("talk cpp start...");//输出显示信息
  geometry_msgs::Twist speed; // 控制信号载体 Twist message

  while (ros::ok()){
    speed.linear.x = 1; // 设置线速度为1m/s，正为前进，负为后退
    speed.angular.z = 1; // 设置角速度为1rad/s，正为左转，负为右转
    cmdVelPub.publish(speed); // 将刚才设置的指令发送给机器人
    loopRate.sleep();//按loopRate(2)设置的2HZ将程序挂起
        //ros::spinOnce();
  }

  return 0;
}
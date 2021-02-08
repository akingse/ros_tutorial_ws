//ROS头文件
#include <ros/ros.h>
//包含自定义msg产生的头文件
#include <topic_demo/gps.h>
//ROS标准msg头文件
#include <std_msgs/Float32.h>
#include <ctime> 
//void gpsCallback(const topic_demo::gps::ConstPtr &msg) //两种方案
void gpsCallback(const topic_demo::gps &msg)
{  
    //计算离原点(0,0)的距离
    std_msgs::Float32 distance;
    distance.data = sqrt(pow(msg.x,2)+pow(msg.y,2)); //pow(msg->x,2)+pow(msg->y,2) //结构指针的取值用法
    //float distance = sqrt(pow(msg->x,2)+pow(msg->y,2));
    //ROS_INFO("Listener: Distance to origin = %f, state: %s",distance.data,msg->state.c_str());
    ROS_INFO_STREAM("Listener: Distance to origin = "<< distance.data <<", state: "<< msg.state );//
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("gps_info", 1, gpsCallback);
  //ros::spin()用于调用所有可触发的回调函数。将进入循环，不会返回，类似于在循环里反复调用ros::spinOnce()。
  //ros::spin(); //后面的都不执行了
 //相当于
    ros::Rate loop_rate(1);
    while (ros::ok())
    {
        ROS_INFO_STREAM("spinonce keep doing ");
        
        ros::spinOnce(); //spin循环的是整个main函数
        loop_rate.sleep(); //spinonce是直接顺序的，下面都会执行
    }

  ros::Duration(1).sleep(); //订阅默认频率太高，不延迟接收不到
  ros::spinOnce();
  ROS_INFO_STREAM("spinonce keep doing 2 ");

  return 0;
}
// rosrun topic_demo talker

/*
listener.cpp
#include <ros/ros.h>
#include <topic_demo/gps.h>
#include <std_msgs/Float32.h>
void gpsCallback(const topic_demo::gps::ConstPtr &msg)
{  
    std_msgs::Float32 distance;  //计算离原点(0,0)的距离
    distance.data = sqrt(pow(msg->x,2)+pow(msg->y,2));
    ROS_INFO("Listener: Distance to origin = %f, state: %s",distance.data,msg->state.c_str()); //输出
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("gps_info", 1, gpsCallback);  //设置回调函数gpsCallback
  ros::spin(); //ros::spin()用于调用所有可触发的回调函数,将进入循环,不会返回,类似于在循环里反复调用spinOnce()   //而ros::spinOnce()只会去触发一次
  return 0;
}

在topic接收方,有一个比较重要的概念,就是回调(CallBack),在本例中,回调就是预先给gps_info话题传来的消息准备一个回调函数,
你事先定义好回调函数的操作,本例中是计算到原点的距离。
只有当有消息来时,回调函数才会被触发执行。具体去触发的命令就是os::spin(),它会反复的查看有没有消息来,如果有就会让回调函数去处理。
因此千万不要认为,只要指定了回调函数,系统就回去自动触发,你必须 ros::spin()或者 ros::spinOnce()才能真正使回调函数生效。

回调函数与spin()方法
ros::spin()	 阻塞
ros::spinOnce()	 非阻塞

*/
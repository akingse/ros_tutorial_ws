#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <tf/tf.h>

 
//退出用：ctrl+z
int main(int argc, char** argv){
//初始化
  ros::init(argc, argv, "tf_broadcaster");
  ros::NodeHandle node;

/*
C++提供的 数据类型
点 tf::Point
向量 tf::Vector3
四元数 tf::Quaternion
3*3旋转矩阵 tf::Matrix3x3
位姿 tf::pose
变换 tf::Transform
---
带时间戳的以上类型 tf::Stamped
带时间戳的变换 tf::StampedTransform
*/
  //static tf::TransformBroadcaster br; //tf广播
  tf::TransformBroadcaster br; //广播对象
  tf::Transform tr; 
  //geometry_msgs::Quaternion qw;
  tf::Quaternion q;
  //定义初始坐标和角度
  double roll=0,pitch=0,yaw=0,  x=1.0,y=2.0,z=3.0;
  ros::Rate rate(0.5);

  while(ros::ok())
  {
  yaw+=0.1;//每经过一秒开始一次变换
  //输入欧拉角，转化成四元数在终端输出
/*
三种表达形式转换方法
tf::Quaternion	q;
q.setRPY(yaw,pitch,roll); //setXX() getXX()是转换方法

tf::Vector3	v5;
v5=q.getAxis();
q2.setRotation(v5,1.570796);

*/
/*
TF类
broadcaster就是一个publisher,而sendTransform的作用是来封装publish的函数。
在某个Node中构建tf::TransformBroadcaster类,然后调用sendTransform(),将transform发布到/tf的一段transform上。

tf::TransformBroadcaster() //tf的广播者 类
  void	sendTransform(const	StampedTransform	&transform) //方法函数
  void	sendTransform(const	std::vector<StampedTransform>	&transforms)
  void	sendTransform(const	geometry_msgs::TransformStamped	&transform)
  void	sendTransform(const	std::vector<geometry_msgs::TransformStamped>	&transforms)
*/
  q.setRPY(roll,pitch,yaw); //方法一
  //qw=tf::createQuaternionMsgFromRollPitchYaw(roll,pitch,yaw);方法2
  tr.setOrigin(tf::Vector3(x,y,z));
  tr.setRotation(q);
//tf::StampedTransform() 不是一个数据类型吗，怎么还有参数的
  br.sendTransform(tf::StampedTransform(tr,ros::Time::now(),"base_link","link1")); 
  setlocale(LC_CTYPE, "zh_CN.utf8");//输出中文专用
  ROS_INFO_STREAM("发布tf变换：sendTransform函数  "<<"输出的四元数为：w="<<q[3]<<",x="<<q[0]<<",y="<<q[1]<<",z="<<q[2]); //
//std::cout<<"输出的四元数为：w="<<qw.w<<",x="<<qw.x<<",y="<<qw.y<<",z="<<qw.z<<std::endl;
  rate.sleep();
  //ros::spinOnce();//spin什么用？
  }
  return 0;
};

/*
发布tf变换：sendTransform函数
输出的四元数为：w=0.99875,x=0,y=0,z=0.0499792
发布tf变换：sendTransform函数
输出的四元数为：w=0.995004,x=0,y=0,z=0.0998334
*/

/*
int main(int argc, char** argv){ //原版本函数，准备魔改
//初始化
  ros::init(argc, argv, "tf_broadcaster");
  //ros::NodeHandle node;

  //static tf::TransformBroadcaster br; //tf广播
  tf::TransformBroadcaster br; //广播对象
  tf::Transform transform;
  //geometry_msgs::Quaternion qw;
  tf::Quaternion q;
  //定义初始坐标和角度
  double roll=0,pitch=0,yaw=0,  x=1.0,y=2.0,z=3.0;
  ros::Rate rate(0.5);

  while(ros::ok())
  {
  yaw+=0.1;//每经过一秒开始一次变换
  //输入欧拉角，转化成四元数在终端输出
  q.setRPY(roll,pitch,yaw); //方法一
  //qw=tf::createQuaternionMsgFromRollPitchYaw(roll,pitch,yaw);方法2
  transform.setOrigin(tf::Vector3(x,y,z));
  transform.setRotation(q);

  std::cout<<"发布tf变换：sendTransform函数"<<std::endl;
  br.sendTransform(tf::StampedTransform(transform,ros::Time::now(),"base_link","link1"));
  std::cout<<"输出的四元数为：w="<<q[3]<<",x="<<q[0]<<",y="<<q[1]<<",z="<<q[2]<<std::endl;
//std::cout<<"输出的四元数为：w="<<qw.w<<",x="<<qw.x<<",y="<<qw.y<<",z="<<qw.z<<std::endl;
  rate.sleep();
  //ros::spinOnce();//spin什么用？
  }
  return 0;
};
*/
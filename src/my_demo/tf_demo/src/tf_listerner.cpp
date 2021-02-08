#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "tf_listener");
  ros::NodeHandle node;
  tf::TransformListener listener;
/*
tf::TransformListener类，从/tf上接收的类
  void lookupTranform(const std::string &target_frame, //第一个参数是目标坐标系
                      const std::string &source_frame, //第二个参数为源坐标系
                      const ros::Time &time,  //第三个参数为查询时刻，ros::Time(0),这个表示为最新的坐标转换关系
                      StampedTransform &transform)const //第四个参数为存储转换关系的位置
  bool canTransform() //用来判断两个transform之间是否连通
  bool waitForTransform()const //用来等待某两个transform之间的连通
*/
  //1. 阻塞直到frame相通
  //std::cout<<"1. 阻塞直到frame相通"<<std::endl;
  listener.waitForTransform("/base_link","link1",ros::Time(0),ros::Duration(4.0));
  ros::Rate rate(0.5);
  while (node.ok()){
    tf::StampedTransform transform;
    try{
  //2. 监听对应的tf,返回平移和旋转
    std::cout<<"监听对应的tf,返回平移和旋转"<<std::endl;
    listener.lookupTransform("/base_link", "/link1",ros::Time(0), transform); //ros::Time(0)表示最近的一帧坐标变换
    }
    catch (tf::TransformException &ex) {
      ROS_ERROR("%s",ex.what());
      ros::Duration(1.0).sleep();
      continue;
    }
    std::cout<<"输出的位置坐标：x="<<transform.getOrigin().x()<<",y="<<transform.getOrigin().y()<<",z="<<transform.getOrigin().z();
    std::cout<<" 输出的旋转四元数：w="<<transform.getRotation().getW()<<",x="<<transform.getRotation().getX()<<
    ",y="<<transform.getRotation().getY()<<",z="<<transform.getRotation().getZ()<<std::endl;
    rate.sleep();
  }
  return 0;
};


/*
1. 阻塞直到frame相通
2. 监听对应的tf,返回平移和旋转
输出的位置坐标：x=1,y=2,z=3
输出的旋转四元数：w=0.980067,x=0,y=0,z=0.198669
2. 监听对应的tf,返回平移和旋转
输出的位置坐标：x=1,y=2,z=3
输出的旋转四元数：w=0.968912,x=0,y=0,z=0.247404
*/
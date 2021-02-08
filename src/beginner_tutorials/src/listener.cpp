#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float32.h" 
#include <iomanip>//精度函数，可以不用

/**
 * This tutorial demonstrates simple receipt of messages over the ROS system.
 */
void chatterCallback(const std_msgs::Float32 &num)
{
  ROS_INFO_STREAM("I heard:"<< num.data);
}

void chatterCallback1(const std_msgs::String &msg)
/*这是一个回调函数，当接收到 chatter 话题的时候就会被调用。
消息是以 boost shared_ptr 指针的形式传输，这就意味着你可以存储它而又不需要复制数据。*/
{
  //ROS_INFO("I heard: [%s]", msg->data.c_str());
    ROS_INFO_STREAM("I heard:"<< msg.data);
}

int main(int argc, char **argv)
{
  /**
   * The ros::init() function needs to see argc and argv so that it can perform
   * any ROS arguments and name remapping that were provided at the command line. For programmatic
   * remappings you can use a different version of init() which takes remappings
   * directly, but for most command-line programs, passing argc and argv is the easiest
   * way to do it.  The third argument to init() is the name of the node.
   * You must call one of the versions of ros::init() before using any other part of the ROS system.
   */
  ros::init(argc, argv, "listener");

  /**
   * NodeHandle is the main access point to communications with the ROS system.
   * The first NodeHandle constructed will fully initialize this node, and the last
   * NodeHandle destructed will close down the node.
   */
  ros::NodeHandle n;

  /**
   * The subscribe() call is how you tell ROS that you want to receive messages
   * on a given topic.  This invokes a call to the ROS
   * master node, which keeps a registry of who is publishing and who
   * is subscribing.  Messages are passed to a callback function, here
   * called chatterCallback.  subscribe() returns a Subscriber object that you
   * must hold on to until you want to unsubscribe.  When all copies of the Subscriber
   * object go out of scope, this callback will automatically be unsubscribed from
   * this topic.
   *
   * The second parameter to the subscribe() function is the size of the message
   * queue.  If messages are arriving faster than they are being processed, this
   * is the number of messages that will be buffered up before beginning to throw
   * away the oldest ones.
   */
  ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);
/*告诉 master 我们要订阅 chatter 话题上的消息。当有消息发布到这个话题时，ROS 就会调用 chatterCallback() 函数。
第二个参数是队列大小，以防我们处理消息的速度不够快，当缓存达到 1000 条消息后，再有新的消息到来就将开始丢弃先前接收的消息。
NodeHandle::subscribe() 返回 ros::Subscriber 对象,你必须让它处于活动状态直到你不再想订阅该消息。
当这个对象销毁时，它将自动退订 chatter 话题的消息。*/
  /**
   * ros::spin() will enter a loop, pumping callbacks.  With this version, all
   * callbacks will be called from within this thread (the main one).  ros::spin()
   * will exit when Ctrl-C is pressed, or the node is shutdown by the master.
   */
  ros::spin();/*ros::spin() 进入自循环，可以尽可能快的调用消息回调函数。一旦 ros::ok() 返回 false，ros::spin() 就会立刻跳出自循环。*/
  //ros::spinOnce();
  return 0;
}

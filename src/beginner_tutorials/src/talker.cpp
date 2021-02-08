#include "ros/ros.h" //ros/ros.h 是一个实用的头文件，它引用了 ROS 系统中大部分常用的头文件。
#include "std_msgs/String.h" //这引用了 std_msgs/String 消息, 它存放在std_msgs package里，是由String.msg文件自动生成的头文件
#include "std_msgs/Float32.h" 
#include <sstream>


// This tutorial demonstrates simple sending of messages over the ROS system. 这是个demo
int main(int argc, char **argv) 
{
  /*
   The ros::init() function needs to see argc and argv so that it can perform any ROS arguments and name remapping that were provided at the command line. 
   For programmatic remappings you can use a different version of init() which takes remappings directly, 
   but for most command-line programs, passing argc and argv is the easiest way to do it.  The third argument to init() is the name of the node.
   You must call one of the versions of ros::init() before using any other part of the ROS system.
   */
  ros::init(argc, argv, "talker"); //初始化 ROS 。它允许 ROS 通过命令行进行名称重映射。也可以指定节点的名称，运行过程中，节点的名称必须唯一。

  /**
   * NodeHandle is the main access point to communications with the ROS system.
   * The first NodeHandle constructed will fully initialize this node, 
   and the last NodeHandle destructed will close down the node.
   */
  ros::NodeHandle n; //为这个进程的节点创建一个句柄。

  /**
   The advertise() function is how you tell ROS that you want to publish on a given topic name. 
   This invokes a call to the ROS master node, which keeps a registry of who is publishing and who is subscribing. 
   After this advertise() call is made, the master node will notify anyone who is trying to subscribe to this topic name,
   and they will in turn negotiate a peer-to-peer connection with this node.  
   advertise() returns a Publisher object which allows you to publish messages on that topic through a call to publish().  
   Once all copies of the returned Publisher object are destroyed, the topic will be automatically unadvertised.
   The second parameter to advertise() is the size of the message queue used for publishing messages.  
   If messages are published more quickly than we can send them, the number here specifies how many messages to buffer up before throwing some away.
   */
  ros::Publisher chatter_pub = n.advertise<std_msgs::Float32>("chatter", 1000);
/*告诉 master 我们将要在 chatter（话题名） 上发布 std_msgs/String 消息类型的消息。
这样 master 就会告诉所有订阅了 chatter 话题的节点，将要有数据发布。第二个参数是发布序列的大小。
如果我们发布的消息的频率太高，缓冲区中的消息在大于 1000 个的时候就会开始丢弃先前发布的消息。
NodeHandle::advertise() 返回一个 ros::Publisher 对象,它有两个作用： 
1) 它有一个 publish() 成员函数可以让你在topic上发布消息； 2) 如果消息类型不对,它会拒绝发布。*/
  ros::Rate loop_rate(1); //ros::Rate 对象可以允许你指定自循环的频率。10Hz 的频率
  /*A count of how many messages we have sent. This is used to create a unique string for each message.   */
  int count = 0;
  while (ros::ok())
  {
    /*roscpp 会默认生成一个 SIGINT 句柄，它负责处理 Ctrl-C 键盘操作——使得 ros::ok() 返回 false。
    如果下列条件之一发生，ros::ok() 返回false：
      SIGINT 被触发 (Ctrl-C)
      被另一同名节点踢出 ROS 网络
      ros::shutdown() 被程序的另一部分调用
      节点中的所有 ros::NodeHandles 都已经被销毁
    一旦 ros::ok() 返回 false, 所有的 ROS 调用都会失效。*/
    /* This is a message object. You stuff it with data, and then publish it.   */
    std_msgs::String msg; 
    std_msgs::Float32 num;
    num.data=count;

    /*std::stringstream ss;
    ss << "hello world: " << count; //cout << "Value of str is : " << str << endl;
    msg.data = ss.str();//一堆花里胡哨的，不知道在干嘛*/
  /*我们使用一个由 msg file 文件产生的『消息自适应』类在 ROS 网络中广播消息。
  现在我们使用标准的String消息，它只有一个数据成员 "data"。当然，你也可以发布更复杂的消息类型。*/
    //ROS_INFO("%s", msg.data.c_str()); //ROS_INFO 和其他类似的函数可以用来代替 printf/cout 等函数。
  ROS_INFO_STREAM( "hello world: " << count);

//c_str()函数返回一个指向正规C字符串的指针常量, 内容与本string串相同。
//这是为了与c语言兼容，在c语言中没有string类型，故必须通过string类对象的成员函数c_str()把string 对象转换成c中的字符串样式。


    /* The publish() function is how you send messages. The parameter is the message object. 
     The type of this object must agree with the type given as a template parameter to the advertise<>() call, as was done in the constructor above.
     */
    chatter_pub.publish(num); //这里，我们向所有订阅 chatter 话题的节点发送消息。
    //ros::spinOnce();
  /*在这个例子中并不是一定要调用 ros::spinOnce()，因为我们不接受回调。
  如果你的程序里包含其他回调函数，最好在这里加上 ros::spinOnce()这一语句，否则你的回调函数就永远也不会被调用了。*/
    loop_rate.sleep(); //调用 ros::Rate 对象来休眠一段时间以使得发布频率为 10Hz。
    ++count;
  }


  return 0;
}

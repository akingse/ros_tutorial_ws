#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>//#include <iostream>

int main(int argc, char **argv) 
{
    ros::init(argc, argv, "talker1");//节点名唯一
    ros::NodeHandle n; 
    ros::Publisher pub = n.advertise<std_msgs::String>("chatter", 1000);//话题名可重复
    ros::Rate rate(1);
    int count = 0;
    while (ros::ok())
    {
        std_msgs::String msg;
        std::stringstream ss; //创建字符流对象ss，使用字符流将数字转换为符号；
        ss << count;
        ss >> msg.data;
        ROS_INFO_STREAM( "I talk: " << count);
        pub.publish(msg);
        rate.sleep();
        count++;
    } 
}

/*
int main(int argc, char **argv)
{
    ros::init(argc,argv,"example");
    ros::NodeHandle n;
    ros::Publisher chatter_pub = n.advertise<std_msgs::String>("message",1000);
    ros::Rate loop_rate(10);
    while(ros::ok())
    {
        std_msgs::String msg;
        std::stringstream ss;
        ss << "Hello world!";  //连续发送 Hello world!
        msg.data=ss.str();
        chatter_pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
}
*/

//-------------------------------------------------------------------------------------
/*
#include<iostream>
#include<set>
#include<vector>
#include<sstream>
#include<string>
#include<fstream>
using namespace std;
//
int main()
{
	char str[10];
	int m1 = 100;
	//通过内存拷贝的方式将char数组转为int
	sprintf_s(str, "%d", m1);
 
	//字符串的字符流转换
	//char str1[10];
	string str1;
	int n0 = 101;
	stringstream ss;
	ss << n0;
	ss >> str1;
 //字符串流
//当用户在键盘上输入一个数字时，该数字以字符串的形式输入，就好像用户输入的一系列字符（数字）。在 C++ 中，这样的数字通常通过流提取运算符 >> 来读取。

	ostringstream os;
	os << n0;
	string str0;
	str0 = os.str();
 
	string str2 = "123";
	char *dest = new char [10];
	strcpy_s(dest, 5, str2.c_str());
 
	string str3 = "101";
	//c++11中字符串转int
	int m = stoi(str3);
	//各种数字类型转字符串int,float,long,double等
	string str4 = to_string(m);
	//将字符串转为各种进制格式，取决于string的表达方式
	cout << "16进制： " << stoi(str3, nullptr,16) <<" "<<"2进制："<<stoi(str3, nullptr, 2) << endl;
	cout << "10进制：" << stoi(str3, nullptr, 10) << " " << "8进制：" << stoi(str3, nullptr, 8) << endl;
	//c语言中字符串转float
	float n = atof(str3.c_str());
	//c库中字符串转long
	long n1 = atol(str3.c_str());
	//c库中字符串转int
	int n2 = atoi(str3.c_str());
	string str5 = "nihao";
	//小写字母转大写字母
	for (int i = 0; i < str5.size(); i++)
		str5[i] = toupper(str5[i]);
	//小写字母转大写字母
	for (int i = 0; i < str5.size(); i++)
		str5[i] = tolower(str5[i]);
	//数字转ASCII
	int n3 = 65;
	char c = toascii(n3);
	system("pause");
}
*/

/*
#include <iostream>
using namespace std;
int main() {

    // 整数转字符串
    int num = 1234;
    char temp[7], str[7];
    int i = 0, j = 0;

    while(num) {
        // 整数转字符串: +'0' 
        temp[i++] = num % 10 + '0';
        num = num / 10;
    } 

    // 刚刚转化的字符串是逆序的
    while(i >= 0) {
        str[j++] = temp[--i];
    } 
    cout << str << endl;

    return 0;
}

*/
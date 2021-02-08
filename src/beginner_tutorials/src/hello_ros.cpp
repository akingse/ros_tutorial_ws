#include "ros/ros.h" 
#include "std_msgs/String.h"
using namespace std;
int main(int argc, char **argv) 
{
    int a[5]={1,2,4,8,16};
    ROS_INFO("hello ros!");
    cout<<"std"<<endl;
    //std::cout<<"cpp"<<std::endl;
    for(int i=1;i<5;++i){
        printf("arguments %d; %d\n",i,a[i]);//C的语法；
        std::cout<<"arguments "<<i<<"; "<<a[i]<<std::endl;
    }
    ROS_INFO("exit");
    return 0;
}    
//rosrun beginner_tutorials test_cpp
//rosrun 包名 可执行文件

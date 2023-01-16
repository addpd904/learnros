#include "ros/ros.h"
#include "std_msgs/String.h"
void domsg(const std_msgs::String::ConstPtr & msg_p){
    //c_str():get c style string
    ROS_INFO("listener accept the msg:%s",msg_p->data.c_str());
}
int main(int a,char * c[]){
    //a.get a subscriber object
    //1.create a process
    ros::init(a,c,"listener");
    //2.get nodehandle
    ros::NodeHandle nh;
    //3.get the subcriber object and bind the topic
    ros::Subscriber subs=nh.subscribe<std_msgs::String>("rapmusic",10,domsg);
    //blocking ,spin():responsible for calling the callback func
    ros::spin();
    return 0;
}
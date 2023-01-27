#include "ros/ros.h"
#include "std_msgs/String.h"
#include<sstream>
int main(int a,char * c[]){
    //solve chinese messy code
    setlocale(LC_ALL,"");
    //init talker node(process)
    ros::init(a,c,"talker");
    //a.get pubblisher object
    //1.get a handle
    ros::NodeHandle nh;
    //2.get a pubblisher object
    //rapmusic:topic's name;10 :buffer space
    //string :type of msg
    ros::Publisher pub=nh.advertise<std_msgs::String>("rapmusic",10);
    //get a string object
    std_msgs::String msg;
    //set a frequency(HZ) 10HZ:10 times /s
    ros::Rate rate(10);
    int i=0;
    //ros::ok() judge process is alive
    while(ros::ok()){
        std::stringstream ss;
        ss<<"hello "<<i<<"st";
        i++;
        msg.data=ss.str();
        //b.send message
        //sleep for a moment for finishing sign
        ros::Duration(3).sleep();
        pub.publish(msg);
        //print log
        ROS_INFO("rap%s",msg.data.c_str());
        rate.sleep();
    }
    return 0;
}
#include "ros/ros.h"
#include "topic_communicate/student.h"
void domsg(const topic_communicate::student::ConstPtr & stuptr){
    ROS_INFO("accept the msg:%s,%d,%.2f",stuptr->name.c_str(),stuptr->age,stuptr->enscore);
}
int main(int argc,char * argv[]){
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"subcriber");
    ros::NodeHandle nh;
    ros::Subscriber sub=nh.subscribe("dance",10,domsg);
    ros::spin();
}
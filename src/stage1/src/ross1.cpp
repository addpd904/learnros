#include "ros/ros.h"
int main(int a,char * c[]){
    ros::init(a,c,"firstpro");
    ROS_INFO("hello");
    return 0;
}
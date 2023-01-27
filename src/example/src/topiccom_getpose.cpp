//brief :get the pose of the turtle
#include "ros/ros.h"
#include <iostream>
#include "turtlesim/Pose.h"
void domsg(const turtlesim::Pose::ConstPtr &dataptr){
    ROS_INFO("the x :%3.2f the y :%3.2f the linear_v: %3.2f",dataptr->x,dataptr->y,dataptr->linear_velocity);
    ROS_INFO("the angular_v%3.2f",dataptr->angular_velocity);
}
int main(int argc, char *argv[])
{
    ros::init(argc,argv,"getinfo_turtle");
    ros::NodeHandle nh;
    ros::Subscriber sub=nh.subscribe("/turtle1/pose",10,domsg);
    ros::spin();
    return 0;
}

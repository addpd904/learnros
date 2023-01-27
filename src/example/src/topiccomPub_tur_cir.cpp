#include <iostream>
#include "geometry_msgs/Twist.h"
#include "ros/ros.h"
int main(int argc, char *argv[])
{
    //brief: control turtle sports via topic communication
    ros::init(argc,argv,"controlTurtle");
    ros::NodeHandle nh;
    //we can get the topic of turtle via cammand rostopic list 
    ros::Publisher pub=nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",10);
    //type of data
    geometry_msgs::Twist contr;
    contr.linear.x=10;
    contr.linear.y=0;
    contr.linear.z=0;

    contr.angular.x=0;
    contr.angular.y=0;
    contr.angular.z=10.0;
    //frequency of sending
    ros::Rate hz(10);
    while(true){
    pub.publish(contr);
    hz.sleep();
    }
    return 0;
}

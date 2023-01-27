//brief:generate turtle via calling service(service communication) 
#include "ros/ros.h"
#include <iostream>
#include "turtlesim/Spawn.h"
int main(int argc, char *argv[])
{
    setlocale(6,"");
    ros::init(argc,argv,"generateTur");
    ros::NodeHandle nh;
    ros::ServiceClient cli=nh.serviceClient<turtlesim::Spawn>("/spawn");
    //create data object
    turtlesim::Spawn data;
    data.request.x=3;
    data.request.y=4;
    //direction of the turtle
    data.request.theta=1.5;
    data.request.name="ls3";
    //blocking until the service has launched
    cli.waitForExistence();
    bool success=cli.call(data);
    if(success){
        ROS_INFO("response's msg : %s",data.response.name.c_str());
    }
    return 0;
}


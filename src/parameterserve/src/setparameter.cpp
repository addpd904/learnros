#include "ros/ros.h"
#include <iostream>
int main(int argc, char *argv[])
{
    ros::init(argc,argv,"qsetpara");
    //a.set or modify parameter
    //1.way1.ros::param::set
    //add a string
    ros::param::set("name","zs");
    //add a vector container
    std::vector<std::string> ve;
    ve.push_back("zs");
    ve.push_back("ls");
    ros::param::set("myvector",ve);
    //2.way2.nh.setParam
    ros::NodeHandle nh;
    nh.setParam("age",20);
    return 0;
}

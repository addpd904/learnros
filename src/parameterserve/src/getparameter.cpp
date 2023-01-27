#include "ros/ros.h"
#include <iostream>
using namespace std;
//print vector
void myprintve(string val){
    ROS_INFO(val.c_str());
}
int main(int argc,char *argv[]){
    ros::init(argc,argv,"myget");
    ros::NodeHandle nh;
    //a.get or search parameter
    //key value;speed:key;if there is not the parameter in list,it will return the default value
    // 1.get parameter
    //way1.0:default value
    double speed=nh.param("age",0);
    //way2.store in variable a
    int a;
    int b;
    nh.getParam("age",a);
    nh.getParamCached("age",b);
    //2.get all key and store in vector container
    std::vector<std::string> ve;
    nh.getParamNames(ve);
    //print vector
    for_each(ve.begin(),ve.end(),myprintve);
    //3.judge if the key exist
    bool flag=nh.hasParam("age");
    //4.search key and return key
    string key;
    nh.searchParam("age",key);
    ROS_INFO(key.c_str());
    //5.delete parameter
    nh.deleteParam("age");
    ros::param::del("age");
    return 0;
}
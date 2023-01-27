#include "ros/ros.h"
#include "servecommunicate/mydata.h"
bool domsg(servecommunicate::mydata::Request &req,
           servecommunicate::mydata::Response &res)
{
    //the request from client will be save in request object
    int num1=req.num1;
    int num2=req.num2;
    //put the result in response object
    res.sum=num1+num2;
    return true;
}
int main(int argv,char * argc[]){
    ros::init(argv,argc,"server");
    ros::NodeHandle nh;
    ros::ServiceServer ser=nh.advertiseService("rap",domsg);
    //blocking ,spin():responsible for calling the callback func
    ros::spin();
    return 0;
}
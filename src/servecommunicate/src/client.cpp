#include "ros/ros.h"
#include "servecommunicate/mydata.h"

int main(int argc, char *argv[])
{
    //a.create a client object
    //1.get the client object
    //init process object
    ros::init(argc,argv,"client");
    ros::NodeHandle nh;
    //"rap":this is topic;we need to have a same topic with server
    ros::ServiceClient cli=nh.serviceClient<servecommunicate::mydata>("rap");
    //2.create data object
    servecommunicate::mydata mydata;
    mydata.request.num1=atoi(argv[1]);
    mydata.request.num2=atoi(argv[2]);
    // 3.wait for server online
    cli.waitForExistence();
    // ros::service::waitForService("client");
    // 4.send the data object
    bool flag=cli.call(mydata);
    if(flag){
    //5.the data that is send by server also will save indata object
        ROS_INFO("service response successfully");
        ROS_INFO("the result:%d",mydata.response.sum);
    }else{
        ROS_INFO("there is failed");
    }
    return 0;
}

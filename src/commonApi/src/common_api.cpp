#include "ros/ros.h"
#include "std_msgs/String.h"
// a.init
void myfuninitapi(int argc,char * argv[]){
    // AnonymousName :adviod that name repeat
    //can launch the same node more then one
    ros::init(argc,argv,"mynode",ros::init_options::AnonymousName);
}
// b.advertise
void myfuntopicapi(int argc,char * argv[]){
    setlocale(6,"");
    //AnonymousName:allow the multi same node coexist
    ros::init(argc,argv,"mynodepublic",ros::init_options::AnonymousName);
    ros::NodeHandle nh;
    // true:means that 该话题发布的最后一条消息将被保存，并且后期当有订阅者连接时会将该消息发送给订阅者
    ros::Publisher pub=nh.advertise<std_msgs::String>("mytopic",10,true);
    std_msgs::String mydata;
    mydata.data="hello";
    pub.publish(mydata);
    //advoid proccess dead
    ros::spin();
}
// c.time
void myfuntime(int argc,char * argv[]){
    //1.moment
    ros::init(argc,argv,"mynode",ros::init_options::AnonymousName);
    // we must need to creat NodeHandle object ,if we want to create time object
    ros::NodeHandle nh; 
    // 1.1generate time object
    // way1 get current tiem
    ros::Time time1=ros::Time::now();
    ROS_INFO("current time:%d",time1.sec);
    // way2 DIY time
    //100 :second; 55:nanosecond
    ros::Time time2(100,55);
    ROS_INFO("DIY time:%f",time2.toSec());
    // method toSec():return double; sec:return uint
    // 2.duration
    ros::Duration du(3);
    ROS_INFO("%d",du.sec);
    // 2.1 method
    // sleep in for 10 seconds
    du.sleep();
    // 3.caculate
    ros::Duration du1(20);
    ros::Duration du2(3);
    // 3.1 duration and duration
    // return double
    ros::Duration du3=du1+du2;
    ROS_INFO("caculate between duration and duration:%f",du3.toSec());
    // 3.2 duration and time
    ros::Time time3=time1-du1;
    time3=time1+du1;
    // 3.3 time and time  :don't allow caculate
    ros::spin();
}
// d.rate and timer
// 1.rate
void myfunrate(int argc,char * argv[]){
    ros::init(argc,argv,"mynode",ros::init_options::AnonymousName);
    // we must need to creat NodeHandle object ,if we want to create rate object
    ros::NodeHandle nh;
    // 1 time per second
    ros::Rate rate(1);
    while(true){
        ROS_INFO("this a rate");
        rate.sleep();
    }
}
// 2.timer
void mytimerfunc(const ros::TimerEvent &event){
    ROS_INFO("this is a timer");
    // get current time
    ROS_INFO("event: %d",event.current_real.sec);
}

void mytimer(int argc,char *argv[]){
    // we must need to creat NodeHandle object ,if we want to create timer object
    ros::init(argc,argv,"mynode",ros::init_options::AnonymousName);
    ros::NodeHandle nh;
    // the first false:execute reperatly 
    ros::Timer timer1 =nh.createTimer(ros::Duration(1),mytimerfunc,false);
    // the second false:we need to launch the timer manually
    // ros::Timer timer2 =nh.createTimer(ros::Duration(1),mytimerfunc,false,false);
    // timer2.start();
    ros::spin();
}
int main(int argc,char * argv[]){
    // myfuntime(argc,argv);
    // myfuntopicapi(argc,argv);
    // myfunrate(argc,argv);
    mytimer(argc,argv);
    return 0;
}
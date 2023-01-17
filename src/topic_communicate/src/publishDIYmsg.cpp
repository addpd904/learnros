#include "ros/ros.h"
#include "topic_communicate/student.h"
int main(int argc,char * argv[]){
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"publisher");
    ros::NodeHandle nh;
    ros::Publisher pub=nh.advertise<topic_communicate::student>("dance",10);
    topic_communicate::student stu;
    stu.name ="zs";
    stu.age=20;
    stu.enscore=99;
    ros::Rate rate(1);
    while(ros::ok()){
        pub.publish(stu);
        rate.sleep();
    }
    return 0;
}
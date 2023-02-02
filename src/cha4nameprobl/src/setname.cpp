#include "ros/ros.h"
#include "std_msgs/String.h"
// a.set name for node
void myfunnoderena(){
    std::map<std::string,std::string> map;
    map["__ns"]="mynamespace";
    // map:set a namespace for node
    ros::init(map,"mynode");
    ros::spin();
}
// b.set name for topic 
void myfunsetnamefortopic(int argc,char * argv[]){
    // set namespace for node
    std::map<std::string,std::string> map;
    map["__ns"]="mynamespace";
    ros::init(map,"mynode2");
    ros::NodeHandle nh;
    // 1.start with "~" :
    // final name: /rap
    ros::Publisher pub=nh.advertise<std_msgs::String>("/rap",10);
    // 2.don't start with "~":
    // final name: /mynamespace/rap
    ros::Publisher pub2=nh.advertise<std_msgs::String> ("rap",10);
    // 3.pass "~" to NodeHandle constructor:
    // final name: /mynamespace/mynode2/rap
    ros::NodeHandle nh2("~");
    ros::Publisher pub3=nh2.advertise<std_msgs::String> ("rap",10);

    ros::spin();
}
//  c.set name for parameter
void myfunsetnapara(){
    std::map<std::string,std::string> map;
    map["__ns"]="myns2";
    ros::init(map,"mynode3");
    ros::NodeHandle nh;
    // 1.start with "/" :
    // final name: /age
    ros::param::set("/age",100);
    // 2.
    // final name: myns2/age
    ros::param::set("age",100);
    // 3.start with "~" :
    // final name: myns2/mynode3/age
    ros::param::set("~age",100);
}
int main(int argc,char * argv []){
    // myfunnoderena();
    // myfunsetnamefortopic(argc,argv);
    myfunsetnapara();
    setlocale(6,"");
    return 0;
}

#include "ros/ros.h"
#include "tf2_ros/static_transform_broadcaster.h"
#include "geometry_msgs/TransformStamped.h"
#include "tf2/LinearMath/Quaternion.h"

// a.static transformation of coordinates
// 1.generate relation of coordinates
void myfuncoorrel(){
    std::map<std::string,std::string> map;
    map["__ns"]="myns1";
    ros::init(map,"mynode1");
    ros::NodeHandle nh;
    tf2_ros::StaticTransformBroadcaster pubcoorel;
    geometry_msgs::TransformStamped coorelmsg;
    coorelmsg.header.seq =111;
    coorelmsg.header.stamp=ros::Time::now();
    coorelmsg.header.frame_id="base_link";
    coorelmsg.child_frame_id="laser";
    coorelmsg.transform.translation.x=1;
    coorelmsg.transform.translation.y=0;
    coorelmsg.transform.translation.z=0;
    tf2::Quaternion qtn;
    qtn.setRPY(0,0,0);
    coorelmsg.transform.rotation.x=qtn.getX();
    coorelmsg.transform.rotation.y=qtn.getY();
    coorelmsg.transform.rotation.z=qtn.getZ();
    coorelmsg.transform.rotation.w=qtn.getW();

    pubcoorel.sendTransform(coorelmsg);
    ros::spin();

}
int main(int argc,char * argv[]){
    return 0;
}
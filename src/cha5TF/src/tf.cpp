#include "ros/ros.h"
// for static condition transform
#include "tf2_ros/static_transform_broadcaster.h"
// coordinate relation
#include "geometry_msgs/TransformStamped.h"
// Quaternion
#include "tf2/LinearMath/Quaternion.h"
// subcriber:get coordinate relation
#include "tf2_ros/transform_listener.h"
// buffer for saving coordinate relation
#include "tf2_ros/buffer.h"
// point
#include "geometry_msgs/PointStamped.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
// for dynamic condition transform
#include "tf2_ros/transform_broadcaster.h"

// a.static transformation of coordinates
// 1.generate relation of coordinates
void myfuncoorrel(){
    std::map<std::string,std::string> map;
    map["__ns"]="myns1";
    ros::init(map,"mynode1");
    ros::NodeHandle nh;
    // 1.1generate coordinate relation publisher
    tf2_ros::StaticTransformBroadcaster pubcoorel;
    // 1.2 coordinate relation
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
    // 1.3 publish
    pubcoorel.sendTransform(coorelmsg);
    ros::spin();

}
// 2.coordinate transform
void myfuncootra(){
    setlocale(LC_ALL,"");
    std::map<std::string,std::string> map;
    map["__ns"]="myns2";
    ros::init(map,"tf_sub");
    ros::NodeHandle nh;
    // 2.1 create a subcriber for getting the coordinate relation 
    tf2_ros::Buffer buffer;
    // the coordinate relation will be save in buffer
    tf2_ros::TransformListener listener(buffer);

    ros::Rate r(1);
    while (ros::ok())
    {
        // 2.2create a  point 
        geometry_msgs::PointStamped point_laser;
        point_laser.header.frame_id = "laser";
        point_laser.header.stamp = ros::Time::now();
        point_laser.point.x = 2;
        point_laser.point.y = 0;
        try
        {
            geometry_msgs::PointStamped point_base;
            // 2.3 transform
            // kernel transform func:get the new coordinate
            point_base = buffer.transform(point_laser,"base_link");
            ROS_INFO("转换后的数据:(%.2f,%.2f,%.2f),参考的坐标系是:%s",point_base.point.x,point_base.point.y,point_base.point.z,point_base.header.frame_id.c_str());

        }
        catch(const std::exception& e)
        {
            ROS_INFO("程序异常.....");
        }
        r.sleep();  
        ros::spinOnce();
    }
}

// b.dynamic transformation of coordinates
// 1. coordinate relation publisher
void myfundyncoorrel(){
    srand(time(0));
    std::map<std::string,std::string> map;
    map["__ns"]="myns1";
    ros::init(map,"mynode1");
    ros::NodeHandle nh;
    // 1.1generate coordinate relation publisher
    tf2_ros::TransformBroadcaster pubdyncoorel;
    // 1.2 coordinate relation 
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
    ros::Rate rate(1);
    while (ros::ok())
    {
        // get random number 0~9
        int a=rand()%10;
        // generate a random relation
        coorelmsg.header.stamp=ros::Time::now();
        coorelmsg.transform.translation.x=a;
        // 1.3 publish
        pubdyncoorel.sendTransform(coorelmsg);
        rate.sleep();
    }
    ros::spin();

}
// 2.subcriber :transform
// the same as a.2 ,but!!!!:we must use ros::Time() rather than ros::Time::now()
void myfundyncootra(){
    setlocale(LC_ALL,"");
    std::map<std::string,std::string> map;
    map["__ns"]="myns2";
    ros::init(map,"tf_sub");
    ros::NodeHandle nh;
    // 2.1 create a subcriber for getting the coordinate relation 
    tf2_ros::Buffer buffer;
    // the coordinate relation will be save in buffer
    tf2_ros::TransformListener listener(buffer);

    ros::Rate r(1);
    while (ros::ok())
    {
        // 2.2create a  point 
        geometry_msgs::PointStamped point_laser;
        point_laser.header.frame_id = "laser";
        // we must use ros::Time() rather than ros::Time::now()
        point_laser.header.stamp = ros::Time();
        point_laser.point.x = 2;
        point_laser.point.y = 0;
        try
        {
            geometry_msgs::PointStamped point_base;
            // 2.3 transform
            // kernel transform func:get the new coordinate
            point_base = buffer.transform(point_laser,"base_link");
            ROS_INFO("转换后的数据:(%.2f,%.2f,%.2f),参考的坐标系是:%s",point_base.point.x,point_base.point.y,point_base.point.z,point_base.header.frame_id.c_str());

        }
        catch(const std::exception& e)
        {
            ROS_INFO("程序异常.....");
        }
        r.sleep();  
        ros::spinOnce();
    }
}
// c.multiple coordinate transform
// subcriber :get relation of coordinate 
void myfunmulcotrans(){
    std::map<std::string,std::string> map;
    map["__ns"]="myns3";
    ros::init(map,"mynode4");
    ros::NodeHandle nh;
    tf2_ros::Buffer buf;
    tf2_ros::TransformListener sub(buf);
    ros::Rate rate(1);
    while(ros::ok()){
        try{
        // 1.get relation of son1 and son2
        geometry_msgs::TransformStamped tfs = buf.lookupTransform("son2","son1",ros::Time(0));

        geometry_msgs::PointStamped ps;
        ps.header.frame_id = "son1";
        ps.header.stamp = ros::Time::now();
        ps.point.x = 1.0;
        ps.point.y = 2.0;
        ps.point.z = 3.0;
        // 2.get the coordinate of point in son2
        geometry_msgs::PointStamped psAtSon2;
        psAtSon2 = buf.transform(ps,"son2");
        }catch(const std::exception &e){

        }
       
    }
}
int main(int argc,char * argv[]){
    
    // myfuncoorrel();
    // myfuncootra();
    // myfundyncoorrel();
    myfundyncootra();
    return 0;
}
#include <ros/ros.h>
#include <ros/console.h>
#include <std_msgs/String.h>
#include <sstream>
#include <my_package/SetRotationMatrix.h>

bool rotateMatrix(  my_package::SetRotationMatrix::Request &req,
                    my_package::SetRotationMatrix::Response &resp)
{
    ROS_INFO("Rotation Matrix");
    ROS_INFO("[  %f  %f  %f  ]", r11, r12, r13);
    ROS_INFO("[  %f  %f  %f  ]", r21, r22, r23);
    ROS_INFO("[  %f  %f  %f  ]", r31, r32, r33);
}

float matrixRotation(){

}


int main(int argc, char **argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "rotate_frame_node");
    
    // Create a node handle
    ros::NodeHandle nh;

    // Service
    ros::ServiceServer service = nh.advertiseService("rotate_frame", &rotateMatrix);


    ros::spin();
    return 0;
}
#include <ros/ros.h>
#include <ros/console.h>
#include <std_msgs/String.h>
#include <sstream>
#include <iostream>
#include <cmath>
#include <my_package/SetRotationMatrix.h>

#define PI 3.14159265358979323846

bool rotateMatrix(  my_package::SetRotationMatrix::Request &req,
                    my_package::SetRotationMatrix::Response &resp)
{
    ROS_INFO("Rotation Matrix");
    ROS_INFO("[  %f  %f  %f  ]", req.r11, req.r12, req.r13);
    ROS_INFO("[  %f  %f  %f  ]", req.r21, req.r22, req.r23);
    ROS_INFO("[  %f  %f  %f  ]\n", req.r31, req.r32, req.r33);

    float N = req.r11 + req.r22 + req.r33;
    ROS_INFO("N: %f", N);

    if(N == 3.0){
        resp.angle = 0.0;
        ROS_INFO("Rotation Angle: %f", resp.angle);
    }
    else if (N == -1.0){
        resp.angle = 180.0;
        ROS_INFO("Rotation Angle: %f", resp.angle);
    }
    else if(N < 3 && N > -1){
        resp.angle = acos((N-1)/2) * (180 / PI);
        ROS_INFO("Rotation Angle: %f", resp.angle);
    }
    else{
        ROS_INFO("No Angle");
    }

    return true;
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
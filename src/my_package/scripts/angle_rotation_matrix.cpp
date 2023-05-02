#include <ros/ros.h>
#include <ros/console.h>
#include <std_msgs/String.h>
#include <sstream>
#include <iostream>
#include <cmath>
#include <vector>
#include <my_package/SetRotationMatrix.h>

#define PI 3.14159265358979323846

bool rotateMatrix(  my_package::SetRotationMatrix::Request &req,
                    my_package::SetRotationMatrix::Response &resp)
{
    bool angleInBounds = true;

    ROS_INFO("Rotation Matrix");
    ROS_INFO("[  %f  %f  %f  ]", req.r11, req.r12, req.r13);
    ROS_INFO("[  %f  %f  %f  ]", req.r21, req.r22, req.r23);
    ROS_INFO("[  %f  %f  %f  ]", req.r31, req.r32, req.r33);

    float N = req.r11 + req.r22 + req.r33;
    // ROS_INFO("N: %f", N);

    std::vector<float> K;

    if(N == 3.0){
        resp.theta = 0.0;

        K.push_back(req.r21);
        K.push_back(req.r22);
        K.push_back(req.r23);
        resp.K = K;
    }
    else if (N == -1.0){
        resp.theta = 180.0;

        float Kx = sqrt((req.r11 + 1)/2);
        // float Ky = req.r21/(2*Kx)
        // float Kz = req.r31/(2*Kx)

        K.push_back(Kx);
        K.push_back(req.r21/(2*Kx));
        K.push_back(req.r31/(2*Kx));
        resp.K = K;
    }
    else if(N < 3 && N > -1){
        resp.theta = acos((N-1)/2) * (180 / PI);
        
        K.push_back((1/(2*sin(resp.theta)))*(req.r32 - req.r23));
        K.push_back((1/(2*sin(resp.theta)))*(req.r13 - req.r31));
        K.push_back((1/(2*sin(resp.theta)))*(req.r21 - req.r12));
        resp.K = K;
        
    }
    else{
        angleInBounds = false;
        ROS_INFO("Angle out of bounds\n");
    }

    if(angleInBounds){
        ROS_INFO("Rotation Angle: %f", resp.theta);

        std::stringstream ss;
        ss << "[";
        for(int i=0; i<K.size(); i++){
            ss << " ";
            ss << K[i];
            ss << " ";
        }
        ss << "]";
        ROS_INFO("Vector K: %s\n",ss.str().c_str());
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
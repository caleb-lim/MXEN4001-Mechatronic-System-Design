#include "ros/ros.h"
#include "dobot/PTPCommand.h"
#include "dobot/SetPTPCmd.h"


#include "dobot/CartesianSimple.h"
#include "geometry_msgs/Pose.h"
#include "sensor_msgs/JointState.h"

#include <cmath>

class PTPGoalListener {
    private:
        ros::Publisher pub;
        dobot::PTPCommand SetPTPCmd_msg;

        ros::Subscriber CartesianSimple;
        ros::Subscriber CartesianQuaternion;
        ros::Subscriber Joint;
    public:
        PTPGoalListener(ros::NodeHandle *nh) {           
            pub = nh->advertise<dobot::PTPCommand>("/dobot/ptp_commands", 10);

            CartesianSimple = nh->subscribe("/dobot/cartesian_simple_goal", 10,&PTPGoalListener::callback_CartesianSimple, this);
            CartesianQuaternion = nh->subscribe("/dobot/cartesian_quat_goal", 10,&PTPGoalListener::callback_CartesianQuaternion, this);
            Joint = nh->subscribe("/dobot/joint_goal", 10,&PTPGoalListener::callback_Joint, this);
        }

        void callback_CartesianSimple(const dobot::CartesianSimple&msg) { 
            SetPTPCmd_msg.ptpMode = 2;
            SetPTPCmd_msg.x = msg.x;
            SetPTPCmd_msg.y = msg.y;
            SetPTPCmd_msg.z = msg.z;
            SetPTPCmd_msg.r = msg.r;
            pub.publish(SetPTPCmd_msg);
        }

        void callback_CartesianQuaternion(const geometry_msgs::Pose&msg) { 
            SetPTPCmd_msg.ptpMode = 1;
            SetPTPCmd_msg.x = msg.position.x;
            SetPTPCmd_msg.y = msg.position.y;
            SetPTPCmd_msg.z = msg.position.z;
            SetPTPCmd_msg.r = rad_to_deg(acos(msg.orientation.z)*2);
            ROS_INFO("\nCalc:\nx: %f\ny: %f\nz: %f\nr: %f\n\n",  SetPTPCmd_msg.x,SetPTPCmd_msg.y,SetPTPCmd_msg.z, SetPTPCmd_msg.r);

            pub.publish(SetPTPCmd_msg);
        }

        void callback_Joint(const sensor_msgs::JointState&msg) { 
            SetPTPCmd_msg.ptpMode = 4;
            SetPTPCmd_msg.x = rad_to_deg(msg.position[0]);
            SetPTPCmd_msg.y = rad_to_deg(msg.position[1]);
            SetPTPCmd_msg.z = rad_to_deg(msg.position[2]);
            SetPTPCmd_msg.r = rad_to_deg(msg.position[3]);
            ROS_INFO("\nCalc:\nx: %f\ny: %f\nz: %f\nr: %f\n\n",  SetPTPCmd_msg.x,SetPTPCmd_msg.y,SetPTPCmd_msg.z, SetPTPCmd_msg.r);

            pub.publish(SetPTPCmd_msg);
        }

        //  Converts an angle from degrees to radians
        float rad_to_deg(float deg_angle) {
            return deg_angle*(180.0/M_PI);
        }

};  
int main(int argc, char **argv)
{
    ros::init(argc, argv, "ptp_goal_listener");
    ros::NodeHandle nh;

    bool SetPTPCmd_service_available = ros::service::waitForService("/DobotServer/SetPTPCmd", 10000);

    if (SetPTPCmd_service_available) {
        ROS_INFO("ptpcmd_Subscriber: Connected to service /DobotServer/SetPTPCmd."); 
        
        PTPGoalListener ptp_goal_listener = PTPGoalListener(&nh);

        ros::Rate rate(5); 
       
        while (ros::ok()) {
            ros::spinOnce(); 
            rate.sleep(); 
        }
    }
    else {
        ROS_ERROR("ptp_goal_listener error"); 
        ros::requestShutdown();
    }

    return 0;
}


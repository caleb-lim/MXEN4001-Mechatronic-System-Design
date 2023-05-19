#include "ros/ros.h"
#include "dobot/SetPTPCmd.h"
#include "dobot/PTPCommand.h"
#include <cmath>

class PTPCommandClient {
    private:
        ros::ServiceClient ptpcmd_client;
        dobot::SetPTPCmd SetPTPCmd_msg;
        ros::Subscriber ptpcmd_Subscriber;
    public:
        PTPCommandClient(ros::NodeHandle *nh) {
           
            ptpcmd_client = nh->serviceClient<dobot::SetPTPCmd>("/DobotServer/SetPTPCmd");
            ptpcmd_Subscriber = nh->subscribe("/dobot/ptp_commands", 10,&PTPCommandClient::callback_ptp, this);
        }

        void callback_ptp(const dobot::PTPCommand&msg) { 
            SetPTPCmd_msg.request.ptpMode = msg.ptpMode;
            SetPTPCmd_msg.request.x = msg.x;
            SetPTPCmd_msg.request.y = msg.y;
            SetPTPCmd_msg.request.z = msg.z;
            SetPTPCmd_msg.request.r = msg.r;
            ptpcmd_client.call(SetPTPCmd_msg);
            
            ROS_INFO("Mode: %d\nx: %f\ny: %f\nz: %f\nr: %f\n\n", msg.ptpMode, msg.x, msg.y, msg.z, msg.r);
        }
};  

int main(int argc, char **argv)
{
    ros::init(argc, argv, "ptpcmd_Subscriber");
    ros::NodeHandle nh;

    bool SetPTPCmd_service_available = ros::service::waitForService("/DobotServer/SetPTPCmd", 10000);

    if (SetPTPCmd_service_available) {
        ROS_INFO("ptpcmd_Subscriber: Connected to service /DobotServer/SetPTPCmd."); 
        
        PTPCommandClient ptpcmd_Subscriber = PTPCommandClient(&nh);

        ros::Rate rate(5); 
       
        while (ros::ok()) {
            ros::spinOnce(); 
            rate.sleep(); 
        }
    }
    else {
        ROS_ERROR("ptpcmd_Subscriber: Unable to connect to service /DobotServer/SetPTPCmd."); 
        ros::requestShutdown();
    }

    return 0;
}


#include "ros/ros.h"

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
        }

        //  Converts an angle from degrees to radians
        float deg_to_rad(float deg_angle) {
            return deg_angle*(M_PI/180.0);
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
            ptpcmd_Subscriber.updatePTPCmd();
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


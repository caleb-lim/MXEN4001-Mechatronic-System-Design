#include "ros/ros.h"

class PTPCmdClientPublisher {
    private:
        
        ros::ServiceClient ptpcmd_client
        dobot::SetPTPCmd SetPTPCmd_srv
        ros::Publisher ptpcmd_publisher
        

    public:
        PTPCmdClientPublisher(ros::NodeHandle *nh) {
           
            ptpcmd_client = nh->serviceClient<dobot::SetPTPCmd>("/DobotServer/SetPTPCmd");
            ptpcmd_publisher = nh->advertise<dobot::SetPTPCmd>("/dobot/ptp_cmd")  
        }

        //  Calls the GetPose service, then publishes the result
        void updatePose() {
            //  Call the GetPose service attached to pose_client, passing getPose_srv to attain the service response
            pose_client.call(getPose_srv);

            //  Create a message of type dobot::CartesianSimple
            dobot::CartesianSimple cartesian_pose_simple_msg;
            //  Set the message data to the corresponding variables from the service response
            cartesian_pose_simple_msg.x = getPose_srv.response.x;
            cartesian_pose_simple_msg.y = getPose_srv.response.y;
            cartesian_pose_simple_msg.z = getPose_srv.response.z;
            cartesian_pose_simple_msg.r = getPose_srv.response.r;
            //  Publish the message using the appropriate publisher
            cartesian_pose_simple_pub.publish(cartesian_pose_simple_msg);
        }

        //  Converts an angle from degrees to radians
        float deg_to_rad(float deg_angle) {
            return deg_angle*(M_PI/180.0);
        }

};  // End definition of class PoseClientPublisher

int main(int argc, char **argv)
{
    ros::init(argc, argv, "ptpcmd_publisher");
    ros::NodeHandle nh;

    bool SetPTPCmd_service_available = ros::service::waitForService("/DobotServer/SetPTPCmd", 10000);

    if (SetPTPCmd_service_available) {
        ROS_INFO("ptpcmd_publisher: Connected to service /DobotServer/SetPTPCmd."); 
        
        PTPCmdClientPublisher ptpcmd_publisher = PTPCmdClientPublisher(&nh);

        ros::Rate rate(5); 
       
        while (ros::ok()) {
            ptpcmd_publisher.updatePTPCmd();
            ros::spinOnce(); 
            rate.sleep(); 
        }
    }
    else {
        ROS_ERROR("ptpcmd_publisher: Unable to connect to service /DobotServer/SetPTPCmd."); 
        ros::requestShutdown();
    }

    return 0;
}


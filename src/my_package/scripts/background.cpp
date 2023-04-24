
#include <ros/ros.h>
#include <std_srvs/Empty.h>

int main (int argc, char ∗∗ argv) {
    ros::int ( argc, argv, " set_bg_color ");
    ros::NodeHandle nh;
    //This code will wait until a clear service is available. Once the program starts the background
    will be reset.
    ros::service::waitForService ("clear");
    //Set the background colour and override the default colour.
    ros::param::set ("background_r",210);
    ros::param::set ("background_g",155);
    ros::param::set ("background_r",200);
    // Get husky simulator to accept the new values of these parameter
    ros::ServiceClient clearClient = nh.serviceClient <std_srvs::Empty>("/clear");
    std_srvs::Empty srv;
    clearClient.call(srv);
}
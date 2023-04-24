
#include <ros/ros.h>
#include <ros/console.h>
// #include <std_srvs/Empty.h>

int main (int argc, char ** argv) {
    // ros::int ( argc, argv, " set_bg_color ");
    ros::NodeHandle nh;
    //This code will wait until a clear service is available. Once the program starts the background will be reset.
    ros::service::waitForService ("clear");
    // Get the maximum velocity parameter . 
    const std :: string PARAM_NAME = "/turtlesim/background_r";
    int background_col; 
    bool ok = ros::param::get(PARAM_NAME, background_col);
    if ( !ok ) { 
        ROS_FATAL_STREAM( "Could not ge the parameter" << PARAM_NAME) ;
        exit(1);
    } else {
        ROS_DEBUG("Background r: %d", background_col);
    }

    
    //Set the background colour and override the default colour.
    ros::param::set ("background_r",210);
    ros::param::set ("background_g",155);
    ros::param::set ("background_r",200);

    // ros::ServiceClient clearClient = nh.serviceClient <std_srvs::Empty>("/clear");
    // std_srvs::Empty srv;
    // clearClient.call(srv);
}
#include <ros/ros.h>
#include <ros/console.h>
#include <std_msgs/String.h>
#include <sstream>
// #include <turtlesim/SetPen.h>

std::string getBackgroundColor()
{
    std::string backgroundColor;
    ros::param::get("/turtlesim/background_b", backgroundColor);
    return backgroundColor;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "background_color");
    ros::NodeHandle nh;

    // Get the background color
    std::string backgroundColor = getBackgroundColor();
    ROS_INFO("Background color: %s", backgroundColor.c_str());

    ros::spin();
    return 0;
}
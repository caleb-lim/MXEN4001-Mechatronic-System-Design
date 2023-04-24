#include <ros/ros.h>
#include <std_msgs/ColorRGBA.h>

int main(int argc, char **argv)
{
  // Initialize the ROS node
  ros::init(argc, argv, "background_params");

  // Create a node handle
  ros::NodeHandle nh;

  // Set the red, green, and blue background parameters
  nh.setParam("/turtlesim/background_r", double(atoll(argv[1])));
  nh.setParam("/turtlesim/background_g", double(atoll(argv[2])));
  nh.setParam("/turtlesim/background_b", double(atoll(argv[3])));

  // Get the current values of the background parameters
  double r, g, b;
  nh.getParam("/turtlesim/background_r", r);
  nh.getParam("/turtlesim/background_g", g);
  nh.getParam("/turtlesim/background_b", b);

  // Print the current values of the background parameters
  ROS_INFO("Background parameters: r=%f, g=%f, b=%f", r, g, b);

  return 0;
}

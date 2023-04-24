#include <ros/ros.h>
#include <std_msgs/ColorRGBA.h>

int main(int argc, char **argv)
{
  // Initialize the ROS node
  ros::init(argc, argv, "background_params");

  // Create a node handle
  ros::NodeHandle nh;

  // Set the red, green, and blue background parameters
  nh.setParam("/background_r", 0.5);
  nh.setParam("/background_g", 0.5);
  nh.setParam("/background_b", 0.5);

  // Get the current values of the background parameters
  double r, g, b;
  nh.getParam("/background_r", r);
  nh.getParam("/background_g", g);
  nh.getParam("/background_b", b);

  // Print the current values of the background parameters
  ROS_INFO("Background parameters: r=%f, g=%f, b=%f", r, g, b);

  return 0;
}

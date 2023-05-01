#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import String

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", str(data))
    
def listener():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("/turtle1/cmd_vel", Twist, callback)

    rospy.spin()

if __name__ == '__main__':
    listener()
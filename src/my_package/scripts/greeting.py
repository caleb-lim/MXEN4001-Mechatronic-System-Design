#!/usr/bin/env python
import rospy
import time
from geometry_msgs.msg import Twist
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    pub_spin = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    spin = Twist()
    # spin.linear.x = 1
    # spin.angular.z = 1
    start_time = time.time()
    cur_time = 0
    interval = 1
    counter = 0
    while time.time() - start_time < 60:
        
        if counter == 0:
            spin.linear.x = 3
            spin.linear.y = 0
            spin.linear.z = 0
            counter += 1
        elif counter == 1:
            spin.linear.x = 0
            spin.linear.y = -3
            spin.linear.z = 0
            counter += 1
            
        elif counter == 2:
            spin.linear.x = 0
            spin.linear.y = 0
            spin.linear.z = 3
            counter = 0

        
        pub_spin.publish(spin)
        rospy.loginfo(str(spin))
        rospy.loginfo(counter)
        rate.sleep()

    hello_str = "\nhello world %s" % rospy.get_time()
    rospy.loginfo(hello_str)
    pub.publish(hello_str)
    # rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
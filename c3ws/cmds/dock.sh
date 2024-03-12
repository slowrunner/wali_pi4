#!/bin/bash

echo -e "\n** DOCK **"
echo -e '** ros2 action send_goal /dock irobot_create_msgs/action/Dock "{}"'
ros2 action send_goal /dock irobot_create_msgs/action/Dock "{}"
/home/ubuntu/wali_pi4/utils/logMaintenance.py 'Manual Docking: success (assumed)'

/home/ubuntu/wali_pi4/c3ws/cmds/reset_pose.sh



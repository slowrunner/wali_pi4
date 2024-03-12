#!/bin/bash

echo -e "START_WALI.SH EXECUTING"
cd /home/ubuntu/wali_pi4/c3ws
source install/setup.bash

# Launch the republisher with the active profile
export FASTRTPS_DEFAULT_PROFILES_FILE=~/wali_pi4/configs/fastdds-active-unicast.xml
ros2 daemon stop && ros2 daemon start
echo -e "\nsleep 5 for ros2 daemon"
sleep 5
ros2 launch create3_republisher create3_republisher_launch.py  robot_ns:=/wali republisher_ns:=/ &

echo -e "\sleep 5 for repub to start"
sleep 5

# Launch all apps with the passive profile
export FASTRTPS_DEFAULT_PROFILES_FILE=~/wali_pi4/configs/fastdds-passive-unicast.xml
ros2 daemon stop && ros2 daemon start

echo -e "\nsleep 5 for ros 2 daemon startup"
sleep 5

# sleep to allow fastdds server startup?
# sleep 5

echo -e "\n*** Start F710 game controller node"
echo '*** ros2 launch teleop_twist_joy teleop-launch.py joy_config:="F710" '
ros2 launch teleop_twist_joy teleop-launch.py joy_config:="F710" &


echo -e "\n*** Start odometer node"
echo '*** ros2 run wali odometer & '
ros2 run wali odometer &

echo -e "\nsleep 5 for odometer node startup"
sleep 5

echo -e "\n*** Start wali.say_node"
echo '*** ros2 run wali say_node &'
ros2 run wali say_node &

echo -e "\n **** STARTING ir2scan "
echo -e "executing: ros2 run wali ir2scan &"
ros2 run wali ir2scan &

echo -e "\nsleep 5 for ir2scan node startup"
sleep 5

echo -e "\n **** STARTING wali_node "
echo -e "executing: ros2 run wali wali_node &"

ros2 run wali wali_node &
sleep 5

echo -e "\n **** START_WALI COMPLETE ***"

#!/bin/bash


# Launch the republisher with the active profile
export FASTRTPS_DEFAULT_PROFILES_FILE=~/wali_pi4/configs/fastdds-active-unicast.xml
echo -e "\n*** ACTIVE UNICAST ENVIRONMENT EXPORTED"
ros2 daemon stop && ros2 daemon start
sleep 5

ros2 launch create3_republisher create3_republisher_launch.py  robot_ns:=/wali republisher_ns:=/ &
sleep 5
echo -e "\n*** CREATE3 REPUBLISHER RUNNING ***"

export FASTRTPS_DEFAULT_PROFILES_FILE=~/wali_pi4/configs/fastdds-passive-unicast.xml
echo -e "\n*** PASSIVE UNICAST ENVIRONMENT EXPORTED"
ros2 daemon stop && ros2 daemon start
sleep 5


echo -e "\n*** NODE LIST"
ros2 node list

echo -e "\n*** TOPIC LIST"
ros2 topic list



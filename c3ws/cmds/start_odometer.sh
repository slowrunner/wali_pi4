#!/bin/bash


# export FASTRTPS_DEFAULT_PROFILES_FILE=/home/ubuntu/wali_pi4/configs/fastdds-passive-unicast.xml
# ros2 daemon stop && ros2 daemon start
# sleep 5

echo -e "\n*** Switching to ~/wali_pi4/c3ws"
cd ~/wali_pi4/c3ws

echo -e "\n*** Sourcing install/setup.bash"
. ~/wali_pi4/c3ws/install/setup.bash

echo -e "\n*** Start odometer node"
echo '*** ros2 run wali odometer & '
ros2 run wali odometer &


#!/bin/bash


# export FASTRTPS_DEFAULT_PROFILES_FILE=~/wali_pi4/configs/fastdds-passive-unicast.xml

echo -e `date +"%A %D %H:%M:%S"`

ros2 launch depthai_ros_driver rtabmap.launch.py params_file:=/home/ubuntu/wali_pi4/c3ws/params/no_imu.yaml

echo -e `date +"%A %D %H:%M:%S"`


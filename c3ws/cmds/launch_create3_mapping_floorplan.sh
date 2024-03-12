#!/bin/bash

echo -e "\n*** STARTING ROS2 Create3 NAVIGATION MAPPING MODE WITH FLOOR PLAN MAP "
echo "*** Drive Create3 around room, generating /map topics using asynchronous SLAM"
echo "*** ros2 launch create3_navigation slam.launch.py 'sync=false slam_params_file:=./my_c3nav_slam.yaml'"
# ros2 launch gopigo3_navigation slam.launch.py 'sync=false slam_params_file:=./my_gpgnav_slam.yaml'
# ros2 launch create3_navigation slam.launch.py 'sync:=false' 'params:=/home/ubuntu/wali_pi4/c3ws/params/my_mapper_params_online_async.yaml'

ros2 launch create3_navigation slam.launch.py 'sync:=false' 'params:=map_floorplan.yaml'

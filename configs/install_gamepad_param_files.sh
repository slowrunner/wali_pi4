#!/bin/bash

cd ~/wali_pi4/configs
sudo cp snes_slow.config.yaml /opt/ros/humble/share/teleop_twist_joy/config/
sudo cp F710.config.yaml /opt/ros/humble/share/teleop_twist_joy/config/

echo -e "\n*** snes_slow and F710 param files installed to /opt/ros/humble/share/teleop_twist_joy/config/"

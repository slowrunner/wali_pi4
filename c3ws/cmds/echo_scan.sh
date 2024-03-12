#/bin/bash

echo -e "\n*** ECHO SCAN"
echo -e "ros2 topic echo --once --flow-style /scan"
ros2 topic echo --once --flow-style -l 1 /scan



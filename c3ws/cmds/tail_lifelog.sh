#!/bin/bash
/home/ubuntu/wali_pi4/utils/totallife.sh
echo -e "\n*** TAIL LIFE LOG ***"
tail -20 /home/ubuntu/wali_pi4/logs/life.log

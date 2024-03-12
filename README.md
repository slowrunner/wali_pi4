# wali_pi4
Create3-WaLI on a Raspberry Pi4  


Create3-WaLI was "born" Dec 11, 2023 running on a Raspberry Pi5.  

Running RTABmap with the Oak-D-Lite stereo depth camera caused  
the Create3 to have 10 second seizures with version H2.6 firmware.  

iRobotEducation proposed a dual unicast segmentation bridged by  
a Create3_republisher node to minimize the ROS middleware load  
from lots of topics that are not intended for the Create3.  

Nodes running in the Raspberry Pi5 ROS 2 Humble in Docker could not  
be seen with ```ros2 node list``` nor were published non-Create3 topics  
listed with ```ros2 topic list```  

This repo is Create3-WaLI running in ROS 2 Humble on Ubuntu 22.04  
(native - not in Docker container).  



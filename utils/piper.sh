#!/bin/bash


pushd /home/ubuntu/wali_pi4/systests/piper-tts
echo $1 | piper   --model en_US-arctic-medium.onnx    --output_raw | aplay -r 22050 -f S16_LE -t raw - 
popd

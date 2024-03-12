#!/bin/bash

amixer -D pulse sset Master 80%
~/wali_pi4/systests/piper-tts/piper.sh 'Volume set to 80 percent' 

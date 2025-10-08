#!/bin/bash

PLAYLIST="http://192.168.89.16/izzi.m3u"
#Cerrar instancias de reproductores
echo 'keypress q' | socat - /tmp/mpvsocket
echo 'quit' | socat - /tmp/mpvsocket

#bajar consumo de CPU
sudo sh -c 'echo powersave > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor'
sudo sh -c 'echo powersave > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor'
sudo sh -c 'echo powersave > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor'
sudo sh -c 'echo powersave > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor'
sudo sh -c 'echo 1008000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq'

mpv --ao=pulse --sub-color='#ffff01' --sub-shadow-offset=10 --sub-visibility=yes --sub-shadow-color='#0f0300' --sub-bold=yes --sub-font-size=60 --sub-pos=60 --save-position-on-quit=yes --resume-playback --fs --osd-color="#05fcba" --osd-duration=5000 --osd-font-size=40.000 --osd-level=1 --osd-italic=yes --osd-scale=1.300 --osd-shadow-color "#000000" --osd-shadow-offset=8.000 --player-operation-mode=cplayer --image-display-duration=inf --video-aspect=-1 --volume-max=100.000 --cache=yes --cache-secs=30 --demuxer-thread=yes --hr-seek=no --hwdec=yes --really-quiet --untimed=yes --playlist=$PLAYLIST --input-ipc-server=/tmp/mpvsocket

#--framedrop=vo 
#--demuxer-lavf-o=fflags=+discardcorrupt
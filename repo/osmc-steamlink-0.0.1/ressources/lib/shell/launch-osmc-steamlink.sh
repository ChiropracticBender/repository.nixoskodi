#!/bin/bash

LAUNCHER_PATH=$( dirname "${BASH_SOURCE[0]}" )

echo ${LAUNCHER_PATH}
sudo su osmc -c "bash ${LAUNCHER_PATH}/heartbeat.sh &" &
#sudo su osmc -c "nohup openvt -c 7 -s -f bash $(LAUNCHER_PATH)/launch.sh > /dev/null 2>&1 &" &
sudo su osmc -c "openvt -c 7 -s -f /usr/bin/steamlink &" &
sudo openvt -c 7 -s -f clear

sleep 2

sudo su -c "systemctl stop mediacenter &" &

exit

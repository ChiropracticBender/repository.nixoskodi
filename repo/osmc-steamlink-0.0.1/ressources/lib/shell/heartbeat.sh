#!/usr/bin/env bash

sleep 10

while [ true ]; do
        status="$(ps aux |grep '.local/share/SteamLink/steamlink.sh'  | wc -l)"
        if [ ${status} -ne 2 ]; then
            sudo su -c "systemctl restart mediacenter &" &
            exit
        else
            sleep 2
        fi
done

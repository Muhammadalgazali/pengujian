#!/bin/bash

SERVER="192.168.1.20"  # Ganti dengan IP server Anda
CHECK_INTERVAL=1  # Detik antara pemeriksaan


while true; do
        if curl -s --head http://$SERVER | grep "200 OK" > /dev/null; then
            echo "$(date): Server is UP" >> uptime.log
        else
            echo "$(date): Server is DOWN"  >> downtime.log
        fi
        sleep $CHECK_INTERVAL
done
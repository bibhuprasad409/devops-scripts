#!/bin/bash

SERVICES="ssh nginx cron"

for SERVICE in $SERVICES
do
    systemctl is-active --quiet $SERVICE

    if [ $? -eq 0 ]; then
        echo "$SERVICE is running"
    else
        echo "$SERVICE is not running"
    fi
done

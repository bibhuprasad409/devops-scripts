#!/bin/bash

systemctl is-active --quiet sshd

if [ $? -eq 0 ]; then
    echo "SSH service is running"
else
    echo "SSH service is not running"
fi

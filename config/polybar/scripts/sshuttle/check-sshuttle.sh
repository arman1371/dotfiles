#!/bin/bash

if /usr/bin/systemctl status sshuttle | grep -q 'Status: "Connected"'; then
  echo 
else
  echo 
fi

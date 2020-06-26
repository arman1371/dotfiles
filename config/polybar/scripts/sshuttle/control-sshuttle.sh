#!/bin/bash

if [ "$1" == "start" ]
then
  /usr/bin/systemctl start sshuttle
elif [ "$1" == "stop" ]
then
  /usr/bin/systemctl stop sshuttle
elif [ "$1" == "restart" ]
then
  /usr/bin/systemctl restart sshuttle
fi

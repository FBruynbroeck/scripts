#! /bin/sh
#
# postgres_server_status.sh
# Copyright (C) 2016 FBruynbroeck <francois.bruynbroeck@hotmail.com>
#
# Distributed under terms of the LICENCE.txt license.
#

if [ $DOCKER_MACHINE_NAME ]; then
    nmap -p 5432 $(docker-machine status $DOCKER_MACHINE_NAME | grep Running > /dev/null && docker-machine ip dev || echo localhost) | grep 5432 | awk '{print $2}'
else
    echo 'Need to set DOCKER_MACHINE_NAME'
fi

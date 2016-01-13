#! /bin/sh
#
# docker_status.sh
# Copyright (C) 2016 FBruynbroeck <francois.bruynbroeck@hotmail.com>
#
# Distributed under terms of the LICENCE.txt license.
#

if [ $DOCKER_MACHINE_NAME ]; then
    docker-machine status $DOCKER_MACHINE_NAME
else
    echo 'Need to set DOCKER_MACHINE_NAME'
fi

#! /bin/sh
#
# postgres_server_status.sh
# Copyright (C) 2016 FBruynbroeck <francois.bruynbroeck@hotmail.com>
#
# Distributed under terms of the LICENCE.txt license.
#


nmap -p 5432 $(docker-machine status dev | grep Running > /dev/null && docker-machine ip dev || echo localhost) | grep 5432 | awk '{print $2}'

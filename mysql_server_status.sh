#! /bin/sh
#
# mysql_server_status.sh
# Copyright (C) 2016 FBruynbroeck <francois.bruynbroeck@hotmail.com>
#
# Distributed under terms of the LICENCE.txt license.
#


nmap -p 3306 localhost | grep 3306 | awk '{print $2}'

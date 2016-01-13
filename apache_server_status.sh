#! /bin/sh
#
# apache_server_status.sh
# Copyright (C) 2016 FBruynbroeck <francois.bruynbroeck@hotmail.com>
#
# Distributed under terms of the LICENCE.txt license.
#


nmap -p 80 localhost | grep 80 | awk '{print $2}'

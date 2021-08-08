#!/usr/bin/bash

export TERM=xterm
while [ 1 ]; do  /usr/bin/kubectl -n mapr-student4 get pods |grep mssql; sleep 5;clear;test $? -gt 128 && break; done

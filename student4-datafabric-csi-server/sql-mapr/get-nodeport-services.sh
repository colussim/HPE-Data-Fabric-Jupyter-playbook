#!/usr/bin/bash
export TERM=xterm

kubectl -n mapr-student4 describe services mssql-service-$1|grep NodePort:|awk '{print $3}'|awk 'BEGIN { FS = "/" };{print "TCP port = " $1}'

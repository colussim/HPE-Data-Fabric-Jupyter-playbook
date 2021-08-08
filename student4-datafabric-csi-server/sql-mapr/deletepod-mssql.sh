#!/usr/bin/bash

export TERM=xterm

POD_NAME=`kubectl get pods -n mapr-student4|grep -v grep|grep "mssql-deployment-$1"|awk '{print $1}'`
kubectl delete pods $POD_NAME -n mapr-student4

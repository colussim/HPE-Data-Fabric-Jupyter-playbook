#!/usr/bin/bash

#
#
#
#  @project     HPE DEMO PORTAL
#  @package     HPE CSI Driver MapR for KUBERNETES
#  @subpackage  DEMO
#  @access      root
#  @paramtype
#  @argument
#  @description Reset demo : delete deployment, services and PVC ssociated with the demo
#
#  @author Emmanuel COLUSSI
#  @version 1.00
#  @Copyright 2020 Hewlett Packard Enterprise
#
#
#

cd /home/student4/sql-mapr

kubectl delete -f deploy-mssql-s-student4.yaml  -n $1 
kubectl delete -f deploy-mssql-snap-student4.yaml -n $1 
kubectl delete -f deploy-mssql-clone-student4.yaml -n $1 

kubectl delete -f create-pvc-snap-student4.yaml -n $1
kubectl delete -f create-volumesnap-student4.yaml -n $1
kubectl delete -f create-snap-student4-class.yaml -n $1
kubectl delete -f create-volumeclone-student4.yaml -n $1
kubectl delete -f create-mssql-secret-student4.yaml -n $1
kubectl delete -f create-pvc.yaml -n $1
kubectl delete -f create_storageclass.yaml -n $1
kubectl delete -f secure_rest_ticket.yaml -n $1
kubectl delete -f secure_tickets.yaml -n $1
kubectl delete -f create_namespace.yaml

echo "End Reset LAB"




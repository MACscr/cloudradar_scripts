#!/bin/bash
# of 1=success | 0=failed

expected_size=$1
galera_size=$(mysql -ss -e "select VARIABLE_VALUE from information_schema.GLOBAL_STATUS where VARIABLE_NAME = 'wsrep_cluster_size';");

if [ "$galera_size" == "$expected_size" ]; then
 echo "1"
else
 echo "0"
fi

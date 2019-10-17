#!/bin/bash

tstamp=`date  +%Y-%m-%d`

backuppath=/home/jay/backup


username=user1
pass=pass123




pushd /home/jay/scripts/ 

##need to add input validity check


cat juniper-device-list2 | grep -v ^# |grep -v -e '^$' | while read hostname
do
   ./juniper-backup.exp $hostname $username $pass $tstamp $backuppath
done


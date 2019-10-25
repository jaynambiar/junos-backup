# junos-backup
Backup from Junos devices using ssh

Run juniper-backup.sh via crontab once initial test runs are successful


Please change the following  in juniper-backup.sh to suit your environment


1) 
backuppath=

This is where the backups are stored.


2)
username=
pass=

Your device credentials, assuming you use the same combination for all devices (tacacs)


3) 
pushd /home/jay/scripts/ 

Replace /home/jay/scripts/ with the folder where your script is stored.


4) Edit juniper-device-list to include hostnames of all your junos devices. Assuming you have made entries in the /etc/hosts file
with the correct IPs. you may include IP addresses as well in juniper-device-list




In case your script is not exiting cleanly after a run, modify juniper-backup.exp as below

On line number 58 change "expect *$" to reflect your shell prompt, for e.g my shell prompt begins with jay@ 
In this case the line would be changed to "expect jay@*"

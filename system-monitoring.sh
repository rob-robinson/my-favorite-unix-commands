#!/bin/bash

# :: apache
service httpd fullstatus
# get all currently established http connections 
netstat -pant | grep httpd | grep -c ESTAB
# watch error_log 
tail -f /var/log/httpd/error_log

# get all currently waiting http connections
netstat -pant | grep httpd | grep -c WAIT

# :: network
netstat -s

# :: mysql
mysqladmin status
mysqladmin -v processlist

# :: system

# get the ID or Product ID from your storage controller:
omreport storage pdisk controller=0 | egrep "(^ID|^Product\ ID)"

# all processes and the parameters that were called with them
ps auxww

# top ten CPU hogs
ps auxww --sort=-pcpu | head -10

# a tree version of ps
pstree

# how long has the server been up since last reboot
uptime

# show information about memory and swap space
free

# Report virtual memory statistics
vmstat

# Report of cpu, device, and nsf utilization
iostat

# interval reports on various system statistics...
sar

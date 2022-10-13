#!/bin/bash
d=$(date +%Y-%m-%d-%H-%M)
grep -c 'session opened' /var/log/auth.log > number_connection-$d
tar -zcvf number_connection-$d.tar.gz number_connection-$d
mv number_connection-$d.tar.gz /home/kkli/Bureau/job8/Backup 
rm number_connection-$d

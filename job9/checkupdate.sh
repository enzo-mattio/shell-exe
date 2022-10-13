#!/usr/bin/bash

old=Shell_Userlist_Backup.csv
new=Shell_Userlist.cvs

if
    cmp --silent -- $old $new 
then
    echo "Updating...."
    ./accessrights.sh
    echo "User Updated"
else 
    echo "No update needed"
fi

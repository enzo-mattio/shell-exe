#!/usr/bin/bash

MY_INPUT='/home/kkli/Bureau/job9/Shell_Userlist.csv'

while IFS=, read -r ID FirstName Name Pass Group || [ -n "$Group" ]  ;
do

        varusername="$FirstName""$Name"
            cleanusername="$(echo "${varusername}" | tr -d '[:space:]')"

    sudo userdel $cleanusername


echo "User : $cleanusername successfully deleted"

done <"$MY_INPUT"

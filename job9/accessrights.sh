#./bin/bash 
MY_INPUT='/home/kkli/Bureau/job9/Shell_Userlist.csv'
while IFS=, read -r columnId columnPrenom columnNom columnMdp columnRole || [ -n "$columnRole" ];
do 
	varusername=$columnPrenom$columnNom
	varpassword=$columnMdp
	cleanusername="$(echo "${varusername}" | tr -d '[:space:]')"
	sudo useradd -p $(openssl passwd -1 $varpassword) $cleanusername
	if [ $columnrole=Admin ];
then 
	sudo usermod -aG sudo $cleanusername
fi
echo "User created : $varusername  Password : $varpassword"
done < $MY_INPUT

sudo userdel PrenomNom

cp Shell_Userlist.csv Shell_Userlist_Backup.csv

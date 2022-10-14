#!/bin/bash
email=$1
mdp=$2
chall=$(curl -i https://alcasar.laplateforme.io/intercept.php -L  | grep -o -P '(?<=challenge=).*(?=&called)')
curl -H "Content-Type: multipart/form-data" -X POST -F challenge=$chall -F username=$email -F password=$mdp -F button=Authentication https://alcasar.laplateforme.io/intercept.php -L
echo $chall


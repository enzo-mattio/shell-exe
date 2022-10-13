#!/bin/sh
if [ $2 = "+" ] || [ $2 = "-" ] || [ $2 = "/" ] || [ $2 = "x" ]
then
	if [ $2 = "+" ]
	then echo "scale=2; $1 + $3" | bc
	elif [ $2 = "-" ]
	then echo "scale=4; $1 - $3" | bc
	elif [ $2 = "/" ]
	then echo "scale=4; $1 / $3" | bc
	elif [ $2 = "x" ]
	then echo "scale=4; $1 * $3" | bc
	fi

else echo "Merci d'utiliser un des arguments suivants : + - / x"
fi
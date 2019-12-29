clear

ls "$PWD"	

while [ 1 -eq 1 ]
do
	echo -e ""
	read -p "Select Dir: " dir
	
	if [ -d "$PWD/$dir" ]
		then	clear
			cd "$PWD/$dir"
			ls -lsh "$PWD"
		else	echo "not Found!"
	fi
done

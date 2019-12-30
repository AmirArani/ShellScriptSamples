# THIS CODE IS AN EXAM QUESTION. SO IT DOESNT DO ANY SPECIAL THING.
# YOU CAN READ THE QUESTION IN READ.ME
# SO PLEASE CHECK READ.ME FILE FIRST


# change current working to first arg
cd $1


# creating file loop
#	in this loop we will check index and if its even we'll save file as txt and if its odd we'll save it as html
#	for checking index use (index mod 2). if its 0 then index is even and if its 1 this odd
#	we save current date and time in every file
for((i=0;i<10;i++))
do
	if [ `echo "$i%2"|bc` -eq 0 ]
	then
		echo `date` > $i.txt
	else
		echo `date` > $i.html
	fi

	echo -e "file $i created!"

done

echo -e "all files created"
echo -e "__________________"


j=0
# in this loop we'll copy .txt files to second arg. directory.
# because .txt files has even name we increase loop index by 2.
while [ $j -lt 10 ]
do
	cp $j.txt $2/$j.txt
	echo -e "file $j.txt copied!"
	j=`echo "$j+2"|bc`
done

echo -e "txt files copied"
echo -e "__________________"


# compress second arg. directory files as tar.gz
tar -cvf $2.tar $2

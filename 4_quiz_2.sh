# THIS CODE IS AN EXAM QUESTION. SO IT DOESNT DO ANY SPECIAL THING.

# QUESTION: Make a pyramid like this and save it to output.txt. Forexample for 5:

# 0
# 01
# 012
# 0123
# 01234
# 012345



# this function is for printing every line of pyramid. we call it and it append a line in the output.txt
function print() {

for ((i=0;i<=$1;i++))
do
	# with -n all of echos will be in a single line
	echo -n "$i" >> output.txt
done
}


# save numbers of needed lines in 'line'. we have to +1 it because forexample for 5 we need 6 lines
line=`echo "$1+1"|bc`

# this loop will call print function and print function will generate a line
for ((j=0;j<=$line;j++))
do
	print $i
	# if its first time then clean output.txt with overwriting a "" in it.
	# otherwise append a "" in it. its because we need to print next line below of previous line.
	if [ $j -eq 0 ]
	then
		echo -n "" > output.txt
	else
		echo "" >> output.txt
	fi
done

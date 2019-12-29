# you can calculate average of n numbers as argumans of this file.
# for example if you run this file as "./average_calculator.sh 3 5 9" the result will be "5.66"

sum=0

# bc is bash calculator. we use it for mathematical phrases
# $* return all args as a single arg
# $@ return every arg as a seperate arg
for i in "$@"
do
	sum=`echo "$sum+$i"|bc`
done

# bc -l for float processing
avg=`echo "$sum/$#" | bc -l`

printf '%0.2f\n' "$avg"
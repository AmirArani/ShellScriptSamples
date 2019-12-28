sum=0

# bc is bash calculator
# $* return all args as a arg
# $@ return every arg as a seperate arg
for i in "$@"
do
	sum=`echo "$sum+$i"|bc`
done

# -l for float
avg=`echo "$sum/$#" | bc -l`

printf '%0.2f\n' "$avg"

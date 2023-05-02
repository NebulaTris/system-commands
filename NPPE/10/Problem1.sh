: 'Write a bash script that takes a number as an argument and prints "Yes" if the number is a prime number, else prints "No".
'

#Solution
script() {
flag=0
number=$1
check=`echo "sqrt($number)" | bc`
for (( i=2; i<=check; i++ )); do
	if [ $((number%i)) -eq 0 ]; then
		flag=1
	fi
done
if [ $flag -eq 0 ]; then
	echo Yes
else
   echo No
fi
}

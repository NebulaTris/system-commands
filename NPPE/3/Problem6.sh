: '
Write a bash script that accepts an integer as argument and prints the corresponding day of week in capitals as given in the table below.

| Argument | 1 or 8 | 2 or 9 | 3       | 4         | 5        | 6      | 7        |
|----------|--------|--------|---------|-----------|----------|--------|----------|
| Output   | SUNDAY | MONDAY | TUESDAY | WEDNESDAY | THURSDAY | FRIDAY | SATURDAY |

If the argument is greater than 9 print ERROR

Hint: Use case statement.
'
#Solution
script() { 
case $1 in
	1 | 8)
	echo "SUNDAY"
	;;

	2 | 9)
	echo "MONDAY"
	;;

	3)
	echo "TUESDAY"
	;;

	4)
	echo "WEDNESDAY"
	;;

	5)
	echo "THURSDAY"
	;;

	6)
	echo "FRIDAY"
	;;

	7)
	echo "SATURDAY"
	;;
	
	*)
	echo "ERROR"
	;;
esac
}

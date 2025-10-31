# GRPA 1
Write a command that runs in a child shell, prints "hello" and exits with the exit code 179.
## Solution
```shell
script() {
(echo hello; exit 179)
}
```
# GRPA 2
The file `Pincode_info.csv` has information on the pin codes of some places. A sample output of the command `head -5 Pincode_info.csv` is given below. The first line of this file gives the information about the sequence of fields in each line of the file following it.
```
Circle Name,Region Name,Division Name,Office Name,Pincode,OfficeType,Delivery,Division Code
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,A Narayanapuram B.O,515009,BO,Delivery,01
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Akuledu B.O,515731,BO,Delivery,01
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Allampuram B.O,515766,BO,Delivery,01
```

Assume that there are only 10 states for which this system works and the first digit of the pin code is unique for each state. That means for all the places in the entire state the first digit will be the same. You are given a small variable named `state` that contains a state name (Example: `state="Punjab"`). Display the number of pin codes available in the file `Pincode_info.csv` within the state given in the variable `state` that has the same first and last digit. For e.g., if the value of `state = "Andhra Pradesh"`, one such pin code is `515005` (for the file given above).

**Hint:** First find the first digit that represents the given state.

## Solution
```shell
script() {
awk -F, -v st="$state" '
NR==1 {next}
$9==st {digit=substr($5,1,1)}
$9==st && substr($5,1,1)==substr($5,6,1) {cnt++}
END {print cnt+0}
' Pincode_info.csv
}
```

# GRPA 3
In a course, the instructor asked the students to submit their projects in a single file named as the student’s roll number. A typical roll number of a student is a 10 character string which is a combination of a four digit(decimal) year and six character hexadecimal number, e.g. "20201f3acd". The instructor specified that the name of the file should be in lower case but some students mistakenly used uppercase for their file names. Each file name is either entirely in lower case or entirely in upper case with numbers.

Your task is to create two arrays(shell variables) named lower and upper. Array lower should not contain the file names that have upper case letters and array upper should contain all the file names that have upper case letters.

Note: The project files are located in the current directory

Hint:

arr=(`ls`) # Each element in arr corresponds to the output from the ls
## Solution
```shell
script() {

 files=(*)
    
    # Initialize empty arrays
    lower=()
    upper=()
    
    # Iterate through all files
    for file in "${files[@]}"; do
        # Check if file contains any uppercase letters (A-F for hex part)
        if [[ "$file" =~ [A-F] ]]; then
            upper+=("$file")
        else
            lower+=("$file")
        fi
    done
}
```

---
# Older GrPA Questions
# GRPA 1
Write a bash script which takes one argument as the name of a file and prints Yes if the file has read permission only for the owner and no other permissions for owner or other users, else do not print anything. The file given in the argument will be present in the current working directory.
## Solution
```shell
script() {
if [[ $(ls -l $1 | grep -e "^-r--------.*") ]] ; then
    echo "Yes"
fi
}
```
# GRPA 2-A
Write a bash script that accepts a few arguments(all numbers) and performs the following functions.</br>
Prints the string Error if the number of arguments supplied is not equal to 2.</br>
If the number of arguments is equal to two, print their sum.</br>
## Solution
```shell
script() { 
if [ $# != 2 ]; then
  echo Error
fi

if [ $# = 2 ]; then
  echo $(( $1 + $2 ))
fi 
}
```
# GRPA 2-B
Write a bash script that reads a value from the standard input stream and prints PNUM if the value is a postive number or 0; prints NNUM if it is a negative number; else print STRING.
## Solution
```shell
script() {
read n
num="^-?[0-9]*\.?[0-9]*$"
neg="^-"
if [[ $n =~ $num ]]; then
  [[ $n =~ $neg ]] && echo NNUM || echo PNUM
else
  echo STRING
fi
}
```
# GRPA 3
Write a bash script that takes any number of inputs(all numbers) and prints the maximum and minimum value from all the inputs in the format Maximum: max | Minimum: min, where max is the maximum value and min is the minimum value.
## Solution
```shell
script() {
max=$1
min=$1

for i in "$@"; do
	if [ $i -ge $max ]; then
		max=$i
	fi
	if [ $i -le $min ]; then
		min=$i
	fi
done;

echo "Maximum: $max | Minimum: $min"
}
```
# GRPA 4
Write a bash script that takes a number as an argument and prints "Yes" if the number is a prime number, else prints "No".
## Solution
```shell
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
```
# GRPA 5
Write a bash script that takes two integer values as input, and prints the product table of first integer with all the integers from 1 to the value in second argument as described in the format below.

` Let the first argument be 3 and the second argument be 4, then your script should print.
3*1=3
3*2=6
3*3=9
3*4=12
If the first argument is 12 and second argument is 3, then your script should print
12*1=12
12*2=24
12*3=36 `

Note that there is no space between any numbers, * or = sign in each line. And every product is printed on a new line.
## Solution
```shell
script() {
for (( i=1; i<=$2; i++ )); do
  echo $1*$i=$(($1*i))
done
}
```
# GRPA 6
Consider a directory named "perf_folder" containing some files with different extensions, present in the current working directory. Write a bash script that accepts an argument(name of destination directory), adds a prefix string "program_" to the file names in the directory "perf_folder" meeting the below criteria.
The file extension is ".c".
The file names should containing the substring perf.</br>

Also move all the files meeting the above criteria after renaming to the directory(destination) whose name is specified as an argument to your script. The destination directory may or may not be present in the current working directory, if not present create the directory under current working directory.</br>

For e.g. the argument to your script is perf_programs, i.e. perf_programs is the destination directory for renamed files.</br>

If below is the output of ls perf_folder when run in your current working directory.
> perf_results.cvc	perf_conf.xml		set_perf_input.c	perf_params.c
start_test.c	stop_test.c	results.txtscript.sh

Then after running your script, 
the new output of  running ls perf_folder in your current working directory should be,

> perf_results.cvc	perf_conf.xml	start_test.c	stop_test.c	results.txt		script.sh

and output of running command ls perf_programs in your current working directory should be, 

> program_set_perf_input.c	program_perf_params.c
## Solution
```shell
script() { 
# If directory as argument one is not present, create it.
ls -d $1
if [[ $? -ne 0 ]]; then
        mkdir $1
fi

cd perf_folder
for file in *perf*.c; do
       mv $file ../$1/program_$file
done
} 
```
# GRPA 7
Write a bash script that prints the sum of all even numbers of an array of numbers. The array variable is named as number_arr.
## Solution
```shell
script(){
read -a number_arr
sum=0
for num in ${number_arr[@]}; do
    if [ $((num%2)) -eq 0 ]; then
        ((sum+=$num))
    fi
done
echo $sum
}
```
# GRPA 8
Write a bash script that accepts an integer as argument and prints the corresponding day of week in capitals as given in the table below.
| Argument | 1 or 8 | 2 or 9 | 3       | 4         | 5        | 6      | 7        |
|----------|--------|--------|---------|-----------|----------|--------|----------|
| Output   | SUNDAY | MONDAY | TUESDAY | WEDNESDAY | THURSDAY | FRIDAY | SATURDAY |

If the argument is greater than 9 print ERROR</br>

Hint: Use case statement.
## Solution
```shell
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
```

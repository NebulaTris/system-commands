# GRPA 1-A
Consider a file named marks.csv containing roll number and marks of variable number of subjects of students. The values are comma separated values and in the format
RollNo,Subject1,Subject2,Subject3,So on...</br>

Write an Awk command to print all the roll numbers(RollNo) in the file.

## Solution
```shell
script() {
awk -F, '{print $1}' marks.csv
}
```
# GRPA 1-B
Write an Awk command to print the first field of the all the lines containing more than 20 characters in the file marks.csv. The field separator in the file is comma (,).
## Solution
```shell
script() {
awk -F, 'length($0)>20{print $1}' marks.csv
}
```
# GRPA 1-C
Write an awk script to print the total number of fields in a csv file with the field separator as comma (,). Print only the number and nothing else.
## Solution
```shell
script(){ echo '
BEGIN{
 FS=",";
 sum=0;
}
{
 sum=sum+NF;
}
END{
 print sum;
}
' >yourScript.awk
awk -f yourScript.awk marks.csv
}
```
# GRPA 1-D
Write an Awk Script to print all the lines whose starting and ending character is a digit. Also print the count of these lines(only the number) on a new line at the last in your output. The field separator in the file is comma (,).</br>

Note, that here it is asked to write an Awk script. Read the Programming questions instructions for more clarity.

## Solution
```shell
script(){ echo '
BEGIN{
 FS=",";
 sum=0;
}
/^[0-9].*[0-9]$/{
 print $0;
 sum=sum+1;
}
END{
 print sum;
}
' >yourScript.awk
awk -f yourScript.awk marks.csv
}
```
# GRPA 2
A software company has published some best practices for writing the code. One of the best practice mentioned is that if no line in your code should exceed 50 characters in total including all type of characters or spaces.</br>

Given a bash script that intends to print the names of all .c files that contain one or more lines with length more than 50 characters(as specified above).</br>

The awk script within this bash script to check the files as per above condition is missing in the code, complete that
## Solution
```shell
eof="EOF"
while read file; do
  if [[ $file =~ $eof ]]; then
    break
  fi
  while read line; do
    if [[ $line =~ $eof ]]; then 
      break
    fi
    echo $line >>$file
  done
done
######### Driver code ends here

######### Script starts here
for file in *.c; do
  awk '


    BEGIN {
      flag=0;
    }

    {
      if (length($0)>50) flag=1;
    }

    END {
      if (flag==1) print FILENAME;
    }
  ' $file
done
```
# GRPA 3
Without using the wc command , write a bash script that accepts any number of arguments. Out of these some would be options(hyphen plus a character like -l or -c) and the last argument will be a file path(use ${@: -1} to access the last argument, there is a space before -1). Only four options are accepted by your script -l, -w, -n and -s.</br>

Assume that file path given will always be for a valid file and we will refer it as file in the next lines. For options,</br>
If no option is supplied to your script do nothing.</br>
If -l option is supplied, print the number of lines in the file.</br>
If -w option is supplied, print the number of words in the file. Assume that any string between spaces is a word. i.e. if using awk count the number of fields in each line to get the word count.</br>
If -n option is supplied, print the number of lines having only digits(no alphabets or spaces) in the file.</br>
option -s also accepts an argument say str. In this case print the number of lines containing the string str. If no argument is specified with -s option print 0.</br>
The above options can be supplied together or more than once. Print the required count for each appearance of the option on a new line. For e.g.</br>
if -l and -w are both supplied together in the sequence print count of lines and count of words each on separate lines.</br>
If -l, -n and -l options are supplied in the sequence then print number of lines, number of lines containing only digits and finally again number of lines in the file each on separate line.</br>
## Solution
```shell
myCount(){
filename=${@: -1}

while getopts "wlns:" options; do
  case "${options}" in
    s)
      str=${OPTARG}
      grep $str $filename | awk "END{print NR}"
      ;;
    w)
      awk "BEGIN{c=0} {c+=NF} END{print c}" $filename
      ;;
    l)
      awk "END{print NR}" $filename 
      ;;
    n)
      awk "BEGIN{c=0} /^[[:digit:]]+$/{c++} END{print c}" $filename
      ;;
    *)
      echo "ERROR"
      ;;
  esac
done

}
```
# GRPA 4
EmployeeDetails.csv file contains the Employee ID, Employee Name, Leaves taken this year and Gender, of all the employees working in a company XYZ, born between the years 1997 and 2000 (including both). Total employees in the company is less than 1000.</br>

The employee ID is of the format: DepartmentYearOfBirthCode Where:</br>
- Department is the department to which the employee belongs to (Department A to G)
- YearOfBirth is the birth year of the employee (Eg. 2000)>
- Code is a three digit number unique to each employee.</br>

For e.g. B1997122 is employee id of an employee working in department B, born in the year 1997 having unique code as 122. The email ID of an employee is in the format EmployeeID@xyz.com, where EmployeeID is the employee id of the employee.
For example email id of Ram having employee id as A1998001 is A1998001@xyz.com. Email ids are case sensitive.</br>

Write an awk script that that takes the file EmployeeDetails.csv as input and prints the email ids of all the female employees of the company in the same sequence as the employee details appear in the file EmployeeDetails.csv.
## Solution
```shell
script(){ echo '
BEGIN{  
	FS = ","
} 

{
	EID = $1
	Gender= $4
	if (Gender ~ /Female/) {
		print EID"@xyz.com"
        }
}
' >yourScript.awk
awk -f yourScript.awk EmployeeDetails.csv
}
```
# GRPA 5
EmployeeDetails.csv file contains the Employee ID, Employee Name, Leaves taken this year and Gender, of all the employees working in a company XYZ, born between the years 1997 and 2000 (including both). Total employees in the company is less than 1000.</br>

The employee ID is of the format: DepartmentYearOfBirthCode Where:</br>
- Department is the department to which the employee belongs to (Department A to G)
- YearOfBirth is the birth year of the employee (Eg. 2000)>
- Code is a three digit number unique to each employee.</br>

For e.g. B1997122 is employee id of an employee working in department B, born in the year 1997 having unique code as 122. The email ID of an employee is in the format EmployeeID@xyz.com, where EmployeeID is the employee id of the employee.
For example email id of Ram having employee id as A1998001 is A1998001@xyz.com. Email ids are case sensitive.</br>

Write an awk script takes the file EmployeeDetails.csv as input and prints the name of the employee(s) with lowest number of leaves taken this year. If there are more than one employees with the lowest number of leaves, print the name of each employee on a new line.
## Solution
```shell
script() { echo '
BEGIN{
  FS = ",";
}
{
  if (NR == 1)
  {
    lowc=int($3);
    count =0;
    name[count] = $2;
    next;
  }
  Name = $1;
  leave = $3;
  if (leave < lowc)
  {
    lowc = leave;
    delete name;
    count = 0;
    name[count] = $2;
  }
  else if (leave == lowc)
  {
    count++; name[count] = $2
  }
}

END{
  for (i=0; i<=count; i++)
  {
    print name[i];
  }
}
' > yourScript.awk
awk -f yourScript.awk EmployeeDetails.csv
}
```
# GRPA 6
EmployeeDetails.csv file contains the Employee ID, Employee Name, Leaves taken this year and Gender, of all the employees working in a company XYZ, born between the years 1997 and 2000 (including both). Total employees in the company is less than 1000.</br>

The employee ID is of the format: DepartmentYearOfBirthCode Where:</br>
- Department is the department to which the employee belongs to (Department A to G)
- YearOfBirth is the birth year of the employee (Eg. 2000)>
- Code is a three digit number unique to each employee.</br>

For e.g. B1997122 is employee id of an employee working in department B, born in the year 1997 having unique code as 122. The email ID of an employee is in the format EmployeeID@xyz.com, where EmployeeID is the employee id of the employee.
For example email id of Ram having employee id as A1998001 is A1998001@xyz.com. Email ids are case sensitive.</br>

Write an awk script that takes input as file EmployeeDetails.csv and calculate and prints the average number of leaves taken by the employees born in each year from 1997 to 2000(both 1997 and 2000 included). The average for each year should be printed on a newline starting from the year 1997 to 2000 in the same sequence i.e. your script should print 4 lines of output always one for each year 1997, 1998, 1999 and 2000. If there are no employees born in some year, print 0 for that years average leaves. Print only the integer part of the average(i.e. if the average is 7.3333 print 7). Use int() function to get the integer part of any float number.

## Solution
```shell
script () { echo '
BEGIN{
  FS = ","
}

{
  if (NR == 1){
    l1997 = 0; c1997 = 0; av1997 = 0;
    l1998 = 0; c1998 = 0; av1998 = 0;
    l1999 = 0; c1999 = 0; av1999 = 0;
    l2000 = 0; c2000 = 0; av2000 = 0;
  }
  EID = $1;
  leave = int($3);
  # to obtain year from employee ID
  year = int(substr(EID, 2, 4));
  if (year == 1997)
  {
    l1997 = l1997 + leave; c1997++;}
  else if (year == 1998)
  {
    l1998 = l1998 + leave; c1998++;}
  else if (year == 1999)
  {
    l1999 = l1999 + leave; c1999++;}
  else if (year == 2000)
  {
    l2000 = l2000 + leave; c2000++;}
}

END{
  if (c1997 != 0)
    {av1997 = l1997/c1997;}
  if (c1998 != 0)
    {av1998 = l1998/c1998;}
  if (c1999 != 0)
    {av1999 = l1999/c1999;}
  if (c2000 != 0)
    {av2000 = l2000/c2000;}
  print (int(av1997))
  print (int(av1998))
  print (int(av1999))
  print (int(av2000))
}
' >yourScript.awk
awk -f yourScript.awk EmployeeDetails.csv
}
```
# GRPA 7
You have a csv file named groceries.csv that contains a list of grocery items and their unit cost. The two fields are separated by comma(,). This file will be given as input to your Awk script.</br>

Write an Awk script that takes two arguments(command line) named item and n, where item is the item name and n is the number of units, then prints the total cost of purchasing n units of the item item. The script prints only a number. i.e. you need to find the item cost of the item given in argument while parsing the input file.</br>
Note: You can directly use these variables with the given name in your Awk script. Assume that the item given in the argument will always be present in the csv file.

## Solution
```shell
script() { echo '

BEGIN {
 FS = ",";
}
{
  a = $2
  b = $3
  if (a ~ item) {
    ans = b*n;
    print ans;
    exit;
  }
}

' > yourScript.awk
awk -v item=$1 -v n=$2 -f yourScript.awk groceries.csv
}
```

# GRPA 1
The poem “Sail away” by Rabindranath Tagore is stored in the file named poem.
> Early in the day it was whispered that we should sail in a boat,
only thou and I, and never a soul in the world would know of this our
pilgrimage to no country and to no end.

> In that shoreless ocean,
at thy silently listening smile my songs would swell in melodies,
free as waves, free from all bondage of words.

> Is the time not come yet?
Are there works still to do?
Lo, the evening has come down upon the shore
and in the fading light the seabirds come flying to their nests.

> Who knows when the chains will be off,
and the boat, like the last glimmer of sunset,
vanish into the night?

Write a command to print the number of non-empty lines that do not contain an article (a, an, the) in it. The command should print a number that is the count of lines, and should not print the lines.
## Solution
```shell
script() {
grep -e "\ba\b\|\ban\b\|\bthe\b" poem -v | grep -e "\w" | wc -l
}
```
# GRPA 2
Each line in the file employees.csv contains the name, role and division of employees separated by a comma. Every line corresponds to one employee. The user wants to collect the details of employees who are managers in the R&D division. For managers the string for the role is ‘Manager’ and the division string for employees working in the R&D division is ‘R&D’.</br>

Write a command to collect the required details and redirect the output to a file named “info.csv”. "info.csv" should contain the name, role and division (separated by a comma) of each employee (as per the above criteria) on a separate line.
## Solution
```shell
script() {
grep -i "manager" employees.csv | grep "R&D" > info.csv
}
```
# GRPA 3
Write a command that will print all the lines not containing the word gnu (case-insensitive) in the file test.txt present in the current working directory.
## Solution
```shell
script() { 
grep -vi "gnu" test.txt
}
```
# GRPA 4
In a course, the instructor asked the students to submit their projects in a single file named as the student’s roll number. A typical roll number of a student is a 10 character string which is a combination of a four digit(decimal) year and six character hexadecimal number, e.g. "20201f3acd". The instructor specified that the name of the file should be in lower case but some students mistakenly used uppercase for their file names. Each file name is either entirely in lower case or entirely in upper case with numbers.</br>

Your task is to create two arrays(shell variables) named lower and upper. Array lower should not contain the file names that have upper case letters and array upper should contain all the file names that have upper case letters.</br>

Note: The project files are located in the current directory</br>

Hint:
arr=(`ls`) # Each element in arr corresponds to the output from the ls
## Solution
```shell
script() {
#lower=(`ls | grep "^[0-9]\{4\}[0-9a-f]\{6\}"`)
#upper=(`ls | grep "^[0-9]\{4\}[0-9A-F]\{6\}" | grep -v "[0-9]\{6\}$"`)

lower=(`ls |egrep "[[:digit:]]{4}[[:xdigit:]]{6}"|egrep "[[:lower:]]|[[:digit:]]{10}"`);
upper=(`ls |egrep "[[:digit:]]{4}[[:xdigit:]]{6}"|egrep "[[:upper:]]"`);
}
```
# GRPA 5
The file Pincode_info.csv has information on the pin codes of some places. A sample output of the command head -5 Pincode_info.csv is given below. First line of this file gives the information about the sequence of fields in each line of file following it.

> Circle Name,Region Name,Division Name,Office Name,Pincode,OfficeType,Delivery,District,StateName
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,A Narayanapuram B.O,515004,BO,Delivery,ANANTHAPUR,Andhra Pradesh
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Akuledu B.O,515731,BO,Delivery,ANANTHAPUR,Andhra Pradesh
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Alamuru B.O,515005,BO,Delivery,ANANTHAPUR,Andhra Pradesh
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Allapuram B.O,515766,BO,Delivery,ANANTHAPUR,Andhra Pradesh

Assume that there are only 10 states for which this system works and the first digit of the pin code is unique for each state. That means for all the places in the entire state the first digit will be same. You are given a shell variable named state that contains a state name(Example: state=“Punjab”). Display the number of pin codes available in the file Pincode_info.csv within the state given in the variable state that has the same first and the last digit. For e.g. if the value of state = “Andhra Pradesh”, one such pin code is 515005(for the file given above).</br>

Hint: First find the first digit that represents the given state.
## Solution
```shell
script() { 
number=`egrep -i "$state" Pincode_info.csv | head -1 | egrep -o [0-9]{6} | cut -c1`
egrep -i "$state" Pincode_info.csv | egrep -o "$number[0-9]{4}$number" | wc -l

# Alternate solution
# egrep "$state" -i Pincode_info.csv | egrep "[0-9]{6}" -o | egrep "(.)....\1" | wc -l
}
```

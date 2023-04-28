# GRPA 1
Write a sed command to print the count of lines that starts with a digit in the file input.txt. Assume that there is at least one line in the file input.txt that starts with a digit. Do not use the commands wc or awk , or even these keywords in comments or anywhere in your answer.

## Solution
```shell
script() { 
sed -ne "/^[[:digit:]]/p" input.txt | sed -n "\$="
}
```
# GRPA 2
Given a file input.txt containing a word on each line, print all the words(one in each line) that occur between the words "FROM" and "TO"(but excluding these words). The match should be case sensitive for the given words and the words in the file are not unique, they can repeat.</br>

For e.g. for Input file</br>
$ cat input.txt </br>
This</br>
is </br>
TO</br>
some </br>
4word</br>
FROM from FROM</br>
THE </br>
b45eginning</br>
TO</br>
OKAY FRom okay FROM</br>
give </br>
me </br>
44some</br>
FROM</br>
SOME</br>
TO</br>
TO</br>
54TO4</br>
FROM</br>
from</br></br>
Output should be</br>
THE </br>
b45eginning</br>
give </br>
me </br>
44some</br>
SOME</br>
from
## Solution
```shell
script() { 
# Solution 1
sed -n '/FROM/,/TO/p' input.txt | sed '/FROM/d' | sed '/TO/d'
# Solution 2
# sed -n '/FROM/,/TO/{//!p;}' input.txt
# Solution 3
# sed -n '/FROM/,/TO/{/FROM/d;/TO/d;p;}'
}
```
# GRPA 3
In the lines that start with a digit, if there is a words "delta"(case sensitive) replace it with the word "gamma". Replace only the first occurrence of the word "delta" in the desired lines. The filename where the contents present are input.txt.
## Solution
```shell
script() { 
sed -e '/^[[:digit:]]/s/delta/gamma/' input.txt
}
```
# GRPA 4
Consider a special programming file functions.sh that contains several functions (A function is a block of code). Write a bash script/command using sed to insert a line "# START FUNCTION" before the starting of a function and a line "# END FUNCTION" at the end of the function.
Starting of a function in this file can be identified as a line that has some string followed by "(", then followed by ")" or some string followed by ")", and this line should end with "{".</br>
Ending of a function can be identified by a line containing only "}" in the whole line.
In this file curly braces "{" and "}" are not used for any other purpose. Do not change the original file just print the output to STDOUT.
## Solution
```shell
script() { 
sed -e "/[[:alnum:]+](.*)[[:space:]]*{/i # START FUNCTION" \
    -e "/^[[:space:]]*}/a # END FUNCTION" functions.sh
}
```
# GRPA 5
Given some raw programming files, we want them to adhere to the company guidelines. Write a sed script that will run for all ".sh" files in the current directory and print the contents after performing the following actions. You just need to write the sed script, running that for all the files will be taken care of by our driver bash script.</br>

Insert a copyright message at the start of the file(before the first line) as "# Copyright IITM 2022"(Note that there is a space after #).</br>
Insert a copyright message at the end of the file(after the last line) as "# Copyright IITM 2022".</br>
Insert a line "# START FUNCTION" before the starting of a function and a line "# END FUNCTION" at the end of the function. Check GrPA 4 for more details on identifying function boundaries. Use the same logic here.</br>
Change the function "background_sleep" to "inactive_sleep". So replace all the occurrences of the word "background_sleep" in any line with "inactive_sleep". Assume that these keywords are used only in context of a function and nothing else.</br>
Also, the function "active_sleep" is deprecated and we do not have an immediate replacement. So insert a line "# TODO:DEPRECATED" before the function "active_sleep" and in every instance. i.e. before every line containing the word "active_sleep".</br>
After every 10th line (in line numbers 10, 20, 30,... ) add a line with four hashes such as "####" after applying all the above actions.
## Solution
```shell
echo '
#!/usr/bin/sed -f
1 i\# Copyright IITM 2022
$ a\# Copyright IITM 2022
/[[:alnum:]+](.*)[[:space:]]*{/i\# START FUNCTION
/^[[:space:]]*}/a\# END FUNCTION
s/background_sleep/inactive_sleep/g
/\bactive_sleep/ i\# TODO:DEPRECATED
10~9 i\####
' | col > myscript.sed
```
# GRPA 6
project is a directory present in the current working directory that has some text files. Write a Bash script that takes all files with the extension .h to create a tarball named headers.tar. Then compress the tarball with gzip named as headers.tar.gz without losing the headers.tar file.
## Solution
```shell
script() { 
tar cf headers.tar project/*.h
gzip --keep headers.tar
}
```

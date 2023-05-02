: '
Consider a special programming file functions.sh that contains several functions (A function is a block of code). Write a bash script/command using sed to insert a line "# START FUNCTION" before the starting of a function and a line "# END FUNCTION" at the end of the function.
Starting of a function in this file can be identified as a line that has some string followed by "(", then followed by ")" or some string followed by ")", and this line should end with "{".
Ending of a function can be identified by a line containing only "}" in the whole line.
In this file curly braces "{" and "}" are not used for any other purpose. Do not change the original file just print the output to STDOUT.
'
#Solution
script() { 
sed -e "/[[:alnum:]+](.*)[[:space:]]*{/i # START FUNCTION" \
    -e "/^[[:space:]]*}/a # END FUNCTION" functions.sh
}

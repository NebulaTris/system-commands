: '
Given a shell variable month supposed to contain a string value corresponding to some calendar month.
Use the cal command to create a file named as X.txt where X is the string value in the variable month.
Your command should also create a file named error.txt that should contain the error message if the string month does not correspond to any calendar month.
Create all the files in the current working directory.

For example:

If the variable month contains the string "nov", your solution should create a file named nov.txt containing the calendar of november month and error.txt should be empty.
And if the variable month contains the string "garbage", your solution should create a file named error.txt containing the error from cal command and garbage.txt should be empty.
'
#Solution
script() {
read month
cal -m $month > $month.txt 2> error.txt
echo --$month.txt--
cat $month.txt
echo
echo --error.txt--
cat error.txt
}

: '
Write a sed command to print the count of lines that starts with a digit in the file input.txt. Assume that there is at least one line in the file input.txt that starts with a digit. 
Do not use the commands wc or awk , or even these keywords in comments or anywhere in your answer.
'

#Solution:
script() { 
sed -ne "/^[[:digit:]]/p" input.txt | sed -n "\$="
}

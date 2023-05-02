: 'We want to change the file permissions of "someFile.txt" file as follows.

user: execute
group: execute, read
others: write
We will use the command chmod XXX someFile.txt where XXX represents a 3 digit number used to set the above permissions. Write a bash command to create a file named XXX.digits in the current working directory such XXX is the same three digit number used to set the permissions as mentioned above. The file your command creates can be empty.
For e.g. If your think the command chmod 111 someFile.txt will change the permission of file someFile.txt as mentioned above, then your solution should create a file named 111.digits in the current working directory.
'

#Solution
script() { 
touch 152.digits
}

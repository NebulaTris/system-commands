: 'We have a file named "systemcommands.txt" in the present working directory.Write a Bash command to change its permissions to

user: read, write, execute
group: execute
others: write
'

#Solution
script() {
chmod 712 systemcommands.txt
}

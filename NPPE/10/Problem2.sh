: '
Write a script to print the users(one on each line) who are logged in successfully. Extract the information from the file named myauth.log located in the current working directory. The output should contain usernames only and should be unique. 

Hint: Use uniq command to get all distinct lines of the output.

Contents of myauth.log is given below
.......
'
#Solution
script() {
egrep "systemd-logind\[[0-9]+\]" myauth.log | grep user | cut -d " " -f 11 | cut -d "." -f 1 | sort | uniq
}

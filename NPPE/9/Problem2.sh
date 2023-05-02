: '
Mine the logs given in the file myauth.log present in the current working directory to print all the usernames  to which user student switched to using su command. 

Note: switching back to the previous user should not be accounted.

Hint: Basically you have to grep all the lines where 'su' command is run successfully and fetch the username to which the user student switched to.

Contents of myauth.log is given below
......
'

# Solution
script() {
egrep "\bsu\b" myauth.log | grep -v FAILED | egrep "\(to .*\)" -o | egrep "\b\w*\b" -o | grep -v to 
}

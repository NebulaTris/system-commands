: '
Print the previous login time of the user guest in the format MMM DD HH:MM:SS. Where MMM, DD, HH, MM and SS corresponds to Month (E.g. Nov), Date, Hours, Minutes and Seconds respectively. 
Extract the information from the logs available in the file myauth.log in the current directory. 
Sample log file below.
.....
'
#Solution
script() {
grep "\bsession opened for user guest\b" myauth.log | tail -1 | cut -d " " -f 1-3
}

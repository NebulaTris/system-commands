: '
Write a bash script that accepts any number of arguments and print the odd numbered arguments, i.e. first argument($1), third argument($3), fifth argument($5) and so on. 
In the output the values of the arguments should be separated by a space and printed on the same line.
'
#Solution
script() {
count=1
for var in "$@"; do
        if [ $((count%2)) -ne 0 ]; then
                echo -n "$var "
        fi

        ((count=count+1))
done
} 

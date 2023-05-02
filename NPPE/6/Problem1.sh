: 'Write a bash script that accepts a few arguments(all numbers) and performs the following functions.

Prints the string Error if the number of arguments supplied is not equal to 2.
If the number of arguments is equal to two, print their sum.
'

#Solution
script() { 
if [ $# != 2 ]; then
  echo Error
fi

if [ $# = 2 ]; then
  echo $(( $1 + $2 ))
fi 
}

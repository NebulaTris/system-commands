: '
Write a bash script that reads a value from the standard input stream and prints PNUM if the value is a postive number or 0; prints NNUM if it is a negative number; else print STRING.
'

#Solution:
script() {
read n
num="^-?[0-9]*\.?[0-9]*$"
neg="^-"
if [[ $n =~ $num ]]; then
  [[ $n =~ $neg ]] && echo NNUM || echo PNUM
else
  echo STRING
fi

}

: '
Write a sed script to

Swap the first and second fields in the given input having field separator as a colon :

Replace every occurrence of the character ? if found at the end of a line to !

Note: complete partial tasks for partial marking. Test case description: The input is the input file. And output is the output of running your sed script.
'
#Solution
dir=$RANDOM
while [ -a $dir ]; do dir=$RANDOM; done
mkdir $dir
cd $dir

cat >input.txt
sed '
s/^\([^:]*\):\([^:]*\)/\2:\1/
s/?$/!/
' input.txt 2>&1

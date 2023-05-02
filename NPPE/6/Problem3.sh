: '
Given a file words.txt containing a string in each line in the format FIRST_second. Every string is a combination of two words joined with an underscore(_), the first word FIRST consists of all uppercase letters and the second word second consists of all lowercase letters. Write a bash command/script using sed to convert all the string to SECOND_first.
After conversion
- The first and the second words should be swapped.
- The uppercase word should be converted to lowercase word and vice versa.

The file `words.txt` is located in the current working directory.
'
#Solution
script() { 
cat words.txt | sed -e "s/^\(.*\)_\(.*\)\$/\2_\1/g" | sed "y/abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz/"
}

: '
Print the number of lines present in ‘file1’ and ‘file2’ combined, your solution should not print anything else.
‘file1’ and ‘file2’ are located in the current working directory.

Hint: Multiple files can be given as argument to ‘cat’ command.
'
#Solution
script() { 
cat file1 file2 | wc -l

# Solution 2
# cat file2 >> file1; wc -l file1

# Solution 3
# cat file2 >> file1; cat file1 | wc -l
}

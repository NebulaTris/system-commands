# GRPA 1
Add the string “EOF alpha” at the end of the file(starting at a new line) alpha.txt then append the contents of the file numbers.txt at the end of the file(starting at a new line) alpha.txt. alpha.txt and numbers.txt are located in the current working directory.
## Solution
```shell
script() {
echo "EOF alpha" >> alpha.txt; cat numbers.txt >> alpha.txt
}
```
# GRPA 2
Print the number of lines present in ‘file1’ and ‘file2’ combined, your solution should not print anything else. ‘file1’ and ‘file2’ are located in the current working directory.</br>
Hint: Multiple files can be given as argument to ‘cat’ command.
## Solution
```shell
script() { 
cat file1 file2 | wc -l

# Solution 2
# cat file2 >> file1; wc -l file1

# Solution 3
# cat file2 >> file1; cat file1 | wc -l
}
```
# GRPA 3
There are three files master.txt, half1.txt and half2.txt in the current working directory. Add first 2 lines of half1.txt to the file master.txt at the end(starting at a new line) then append the last 3 lines of the file half2.txt to the file master.txt at the end(starting at a new line). Append the lines in the sequence mentioned.
## Solution
```shell
script() { 
head half1.txt -n2 >> master.txt
tail half2.txt -n3 >> master.txt
}
```
# GRPA 4
An observer wrote a script named createTwingle that produces a file twingle containing names of all the visible stars present in the sky at that instant. Every line in the file twingle is the name of a star. In your current directory the file twingle may or may not be present.
If the file twingle is present in the directory then print the number of lines in the file, else execute the command createTwingle it will create the file twingle in the current working directory then print the number of lines in the file twingle.</br>
Hint: Try to use operators discussed in the lectures to give a single line solution for the task.</br>
Note: stderr will not be displayed
## Solution
```shell
script() { 
wc -l twingle || (createTwingle && wc -l twingle)
}
```
# GRPA 5
Print the number of directories in the current working directory. Do not print anything else.</br>
Hint: One solution is to make use of 'ls', 'wc' and pipes('|').
## Solution
```shell
script() { 
ls -d */ | wc -l
}
```
# GRPA 6
The script test will print some text to the standard output, it can be run similar to any other command and does not accept any arguments.</br>
Your task is to print the output after running test on the screen and also append the output at the end(starting at new line) of the file log.  File log is located in the current working directory.</br>
Hint: To solve it in one line check the man page of tee command for appending to the file. 
## Solution
```shell
script() { 
test | tee templog
cat templog >> log
}
```

: '
List(in long format, use ls -l) all the .txt files in the current working directory and redirect the output to a file named textFiles.txt and also print 'found' to the terminal(without quotes, do not print anything else).
If no .txt file exists redirect the error of your command to the file noFiles.txt and do not print anything.

Hint: Make use of redirection to file and operators to write solution in one line.
'
#Solution
script(){
ls -l *.txt > textFiles.txt 2> noFiles.txt && echo found
}


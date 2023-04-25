: 'Write a Bash command to print the file types of all the files stored in the current working directory. The output should be in the format as described below. The first column is file/directory name and the second column tells about the file type.

file.txt:                             empty
Notes:                                directory
SysComm:                              symbolic link to ../SysComm Dropbox
System Commands Sample Questions.md:  UTF-8 Unicode text, with very long lines
System Commands Sample Questions.pdf: PDF document, version 1.7
'

#Solution
script() {
file *
}

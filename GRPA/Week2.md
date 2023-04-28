# GRPA 1
Print the absolute path where the command wget is located.

## Solution
```shell
script() { echo '
which wget
'
}
```
# GRPA 2
"dir_1" and "dir_2" are directories in current working directory. Create a symbolic(soft) link to the file "file_1" present in "dir_1" and store it as "file_2" in "dir_2".</br>
Hint: The link to file_2 should be either absolute from current working directory i.e. / or relative to dir_2.
## Solution
```shell
script() {
mkdir dir_1 dir_2
touch dir_1/file_1
ln -s /dir_1/file_1 /dir_2/file_2
#
# OR
# ln -s /dir_1/file_1 dir_2/file_2
#
# Solution 2
# cd dir_2; ln -s ../dir_1/file_1 file_2
}
```
# GRPA 3
Print the username associated with the current session.
## Solution
```shell
script() {
echo $USER 
}
```
# GRPA 4
Print to the output containing the name of the shell being used, its PID and the flags in the following format "Shell:<shell>|PID:<pid>|Flags:<flags>". There are no spaces in the string.
## Solution
```shell
script() { 
echo "Shell:$SHELL|PID:$$|Flags:$-"
}
```
# GRPA 5
Write a command that runs in a child shell, prints "hello" and exits with the exit code 179.
## Solution
```shell
script() { 
bash -c "echo hello; exit 179"
}
```

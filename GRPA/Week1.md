# GRPA 1
We created some directories and change our current working directory using the cd command as given by the sequence of commands below. Write a bash command to make the directory "level2" as your current working directory. i.e. after executing your solution, if we execute the command "pwd" it should return the path of the directory "level2".</br>
Write your solution as a single line bash command.</br>

cd /</br>
mkdir level1</br>
cd level1</br>
mkdir level2</br>
cd level2</br>
mkdir level3</br>
cd ..</br>
cd ..</br>

## Solution
```shell
script() {
cd /level1/level2
pwd
}
```
# GRPA 2
We have a file named "systemcommands.txt" in the present working directory. Write a Bash command to change its permissions to</br>

user: read, write, execute</br>
group: execute</br>
others: write</br>
## Solution
```shell
script() {
chmod 712 systemcommands.txt
}
```
# GRPA 3
We want to change the file permissions of "someFile.txt" file as follows.</br>

user: execute</br>
group: execute, read</br>
others: write</br>
We will use the command chmod XXX someFile.txt where XXX represents a 3 digit number used to set the above permissions. Write a bash command to create a file named XXX.digits in the current working directory such XXX is the same three digit number used to set the permissions as mentioned above. The file your command creates can be empty.
For e.g. If your think the command chmod 111 someFile.txt will change the permission of file someFile.txt as mentioned above, then your solution should create a file named 111.digits in the current working directory.
## Solution
```shell
script() { 
touch 152.digits
}
```
# GRPA 4
Create two folders named dir1 and dir2 in the current working directory.
Try to write a single line bash command to perform the above task.
## Solution
```shell
script() {
mkdir dir1 dir2
}
```
# GRPA 5
Write two commands one on each line for the following two tasks.</br>

Move only the file file_1 present in dir_1 to the empty directory dir_2.</br>
Delete the directory dir_1.</br>
dir_1 and dir_2 are directories in the current working directory. The operation should not change your current working directory.
## Solution
```shell
script() {
mv dir_1/file_1 dir_2
rm -rf dir_1
}
```

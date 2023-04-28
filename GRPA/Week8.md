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

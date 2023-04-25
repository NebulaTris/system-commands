: '
We created some directories and change our current working directory using the cd command as given by the sequence of commands below. Write a bash command to make the directory "level2" as your current working directory. i.e. after executing your solution, if we execute the command "pwd" it should return the path of the directory "level2".
Write your solution as a single line bash command.
	
cd /
mkdir level1
cd level1
mkdir level2
cd level2
mkdir level3
cd ..
cd ..
'
#Solution
script() {
cd /level1/level2
pwd
}

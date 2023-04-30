﻿﻿﻿# System COmmands Week 2
## Graded Assignment
## Problem 1

The command **apropos** is equivalent to the command.**(MCQ)**

a.  man -f
b.  ls -l
c.  man -k
d.  alias

### Answer
c:  man -k

## Problem 2
Consider two files "file1" and "file2" in the home directory.
Choose all the statements that are true regarding symbolic links in this directory. **(MSQ)**

a.  The command **"ln file1 file2"** creates soft link to file1.
b.  "file1" and "file2" will have different inode numbers.
c.  The command **"ln -s file1 file2"** makes file2 a symbolic link of file1.
d.  The symbolic link is still usable if you remove the source file or transfer it to another location.

### Answer
b:  file1 and file2 have different inode numbers
c:  The command **ln -s file1 file2** makes file2 a symbolic link of file1

## Problem 3
```bash
-rw-r--r-- 1 user1 staff 5300 Dec  9 20:36 testfile
```
The long listing of a file **testfile** is given above.

The number of file system blocks actually used by **testfile**, in units of **1024 bytes**, where partial units are rounded up to the next integer value, is given by the command:

```bash
$ ls -s testfile
```
The number of file system blocks actually used by **testfile** is: (Enter a number) **(NAT)**

### Answer
8

## Problem 4

Considering a user **User1** and the current working directory to be **/home/User1/Dir1**. 

```bash
$ echo This displays '$PWD' and "$USERNAME"
```

The output of the above command is: **(MCQ)**

a. This displays /home/User1/Dir1 and User1
b. This displays \$PWD and User1
c. This displays /home/User1/Dir1 and \$USERNAME
d. This displays \$PWD and \$USERNAME


### Answer

b. This displays $PWD and User1

## Problem 5

The command used to turn a shell variable into an environment variable is **(MCQ)**

a.  echo
b.  expand
c.  export
d.  eval

### Answer

c: export

## Problem 6

The command

```bash
$ echo *
```

 gives the same output as; **(MCQ)**

a.  ls \*
b.  ls
c.  df \*
d.  df

### Answer

b: ls

## Problem 7

Choose the correct options. **(MSQ)**

a. The **printenv** command can request the values of individual variables. For example:

```bash
$ printenv PATH
```

b. The **env** command can output a list of all shell variables, environmental variables, local variables, and shell functions
c. The **set** command can set environment and execute command, or print environment. 
d. The **\$PWD** variable is for the current working directory of the shell
e. The **\$HOSTNAME** is for the current logged in user

### Answer

(a) and (d)

## Problem 8

With regards to the **ps** command in Ubuntu, match the following **(MCQ)**

| Command      | Function                                                     |
| ------------ | ------------------------------------------------------------ |
| 1. **ps -A** | a. Display information about other users' processes, including those without controlling terminals. |
| 2. **ps -a** | b. View all processes like **ps -A** but excludes session leaders |
| 3. **ps -d** | c. Display information about other users' processes as well as your own.  This will skip any processes which do not have a controlling terminal, unless the **-x** option is also specified. |
| 4. **ps -t** | d. Display information about processes attached to the specified terminal devices. |
| 5. **ps -r** | e. Display information about processes which match the specified process IDs. |
| 6. **ps -p** | f. Sort by current CPU usage, instead of the combination of controlling terminal and process ID. |

a.  1—>a; 2—>b; 3—>c; 4—>d; 5—>f; 6—>e;
b. 1—>a; 2—>c; 3—>b; 4—>f; 5—>d; 6—>e;
c.  1—>a; 2—>b; 3—>c; 4—>f; 5—>e; 6—>;
d.  1—>a; 2—>c; 3—>b; 4—>d; 5—>f; 6—>e;

### Answer

d.  1—>a; 2—>c; 3—>b; 4—>d; 5—>f; 6—>e;



## Problem 9

In the current directory, the following output is obtained using the "**ls**" command 

```bash
$ ls
Applications  	LibOntology.owl  	VirtualBoxVMs
Desktop  	  	Movies  		    get-pip.py
Documents  	  	Music  		   		m1
Downloads  	  	Pictures  	   		mtest
Library  	  	Public 		   		texput.log
```

What is the output obtained on executing the following command? 

```bash
$ echo m* 			
```

**(MCQ)**

a. m1		
b.  Applications Desktop Documents Downloads Library 	LibOntology.owl Movies Music Pictures Public  VirtualBoxVMs get-pip.py m1 mtest texput.log			

c. m1 mtest		

d. Movies Music m1 mtest	


### Answer

c. m1 mtest		

## Problem 10

Match the following **(MCQ)**

| Flags set in Bash |                                         |
| ----------------- | --------------------------------------- |
| 1. H              | a. locate and hash commands             |
| 2. B              | b. commands are read from arguments     |
| 3. i              | c. interactive mode                     |
| 4. m              | d. brace expansion enabled              |
| 5. h              | e. ! style history substitution enabled |
| 6. s              | f. commands are read from stdin         |
| 7. c              | g. job control enabled                  |


a.  1—>e; 2—>d; 3—>c; 4—>g; 5—>a; 6—>f; 7—>b;
b.  1—>a; 2—>d; 3—>c; 4—>g; 5—>e; 6—>f; 7—>b;
c.  1—>a; 2—>d; 3—>c; 4—>g; 5—>f; 6—>e; 7—>b;
d.  1—>a; 2—>b; 3—>c; 4—>g; 5—>f; 6—>e; 7—>d;

### Answer

a.  1—>e; 2—>d; 3—>c; 4—>g; 5—>a; 6—>f; 7—>b;




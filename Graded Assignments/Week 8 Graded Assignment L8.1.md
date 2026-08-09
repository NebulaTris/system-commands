## Week 8 - Graded Assignment 8 - L 8.1

#### Q1. Which of the following commands can be used to check the processor information your linux machine is running on?

**options** : 

A. hwinfo
B. lshw
C. lspci
D. cat /prov/cpuinfo
E. cat /proc/partitions

***Answer :*** : A,B,D

------------------


#### Q2. Which command will change the prompt string to show date, command number and current username followed by character "@" followed by complete hostname and finally followed by the string ":$", in the same sequence?

#### For example if the current username is "SC", complete hostname is "SC-HP-Probook", date today is "Tue Mar 08" and command number is "48" the prompt string should look like

Tue Mar 08 48 SC@SC-HP-Probook :$


**Options**

A. PS1="\d # \u \H :$"

B. PS1="\d # \u \H :$"

C. PS1="\d # \u@\H :$"

D.PS1="\d # \u@\H :$"

***Answer :*** D

------------------------

#### Q3. How many times per day the below process is executed?
#### 0 20 * * * zip -r ~/backup/project_246_$(date -u +"%Y-%m-%dT%H:%M:%SZ").zip ~/project_246/

***Answer*** : 1


------------------------

#### Q4. Select all the days the below process is executed?

#### 0 20 * * 1-5 zip -r ~/backup/project_246_$(date -u "+%Y-%m-%dT%H:%M:%SZ").zip ~/project_246/


**Options :**

A. Sunday
B. Monday
C. Tuesday
D. Wednesday
E. Thursday
F. Friday
G. Saturday

***Answer*** : B,C,D,E,F


-----------------------


#### Q5. Suppose you have to send a good morning message to everyone at 6 am in the morning everyday. Assume the command send-good-morning will send the message to everyone. Select the job will do that.


**Options**

A.  * */6 * * * send-good-morning
B.  0 * * * * send-good-morning
C.  6 0 * * * send-good-morning
D.  * * * 6 0 send-good-morning
E.  0 6 * * * send-good-morning


***Answer*** : E


----------------------


#### Q6. "test.tar" contains three files test1, test2 and test3. Choose the right command that will extract these files from "test.tar".


A. $ tar -cvf test.tar test1 test2 test3

B. $ tar -xvf test1 test2 test3

C. $ tar -xvf test.tar

D. $ tar -cvf test.tar


***Answer*** : C


---------------------------


#### Q7. Match the following options of "tar" command to their use.


| Option | Usage |
| --- | --- |
| 1. x | i. use gzip |
| 2. v | ii. name of the archive file |
| 3. f | iii. extracts files from an archive |
| 4. z | iv. verbosely list files that are processed |


***Answer*** : Option D -->   1-c, 2-d, 3-b, 4-a


--------------------------


#### Q8. Contents of file1

> aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
cccccccccccccccccccccccccccccccccccc
dddddddddddddddddddddddddddddddddddd
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
ffffffffffffffffffffffffffffffffffff

#### Contents of file2

>Wj^rofdOhZO[giJYBHMDYVoqCGfREi[MTmF`
FHWf]eaUIqJXCkLnYTmfOCVnc\ZMDdlrcp[D
`EelM]krNNB^MIJmDniBW]JlWV`k^YmGBbAV
PICXGELJh[Xmmid_fen`E\Xf]Y]kCoRkXEKD
bDfRfJmolQbTVJDVbWSfoTqODfYkaNjHKf]_
[SmrlE\\l]ZTYQeHjKJkFETO]LDhHVValIqD

#### Note that both file1 and file2 have same size and number of characters. Both the files are compressed using the utility gzip to file1.gz and file2.gz respectively.

#### Now choose the correct statement


**Options** 

A. The size of file1.gz will be greater than file2.gz
B. The size of file1.gz will be lesser than file2.gz
C. The size of file1.gz will be the same as the size of file2.gz
D. The size of file1.gz will always greater than file2.gz because file1 have simple patterns.


***Answer*** : B

------------------------------------


#### Q9. Choose the command to list all the empty files and delete them.

**OPtions**
A. find . -type f -delete
B. find . -type f -empty -delete
C. find . -type f -empty -exec rm {} \;
D. find . -type f -empty | xargs rm

***Answer*** : B, C, D

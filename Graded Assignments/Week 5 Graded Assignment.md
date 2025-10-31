# Linux Command Questions & Answers

## Question 1
**The command `apropos` is equivalent to the command:**

- [ ] man -f
- [ ] ls -l
- [x] man -k
- [ ] alias

**Correct Answer:** `man -k`

---

## Question 2
**Choose all the statements that are true regarding symbolic links:**

- [ ] The command creates a soft link to ______ only if ______ exists in the current working directory.
- [x] file1 and ______ will have different mode numbers if ______ is a symbolic link to ______.
- [x] The command makes ______ a symbolic link of ______ if ______ does not exist in the current working directory.
- [ ] The symbolic link is still usable if you remove the source file or transfer it to another location.

**Correct Answers:** Statements 2 and 3

---

## Question 3
**Consider a user User1 and the current working directory to be /home/User1/Dir1.**
```bash
$ echo This displays '$PWD' and "$USERNAME"
```
**The output of the above command is:**

- [ ] This displays /home/User1/Dir1 and User1
- [x] This displays $PWD and User1
- [ ] This displays /home/User1/Dir1 and $USERNAME
- [ ] This displays $PWD and $USERNAME

**Correct Answer:** `This displays $PWD and User1`

---

## Question 4
**The command used to turn a shell variable into an environment variable is:**

- [ ] echo
- [ ] expand
- [x] export
- [ ] eval

**Correct Answer:** `export`

---

## Question 5
**The command `$ echo *` gives the same output as the command:**

- [ ] ls *
- [x] ls
- [ ] df *
- [ ] df

**Correct Answer:** `ls`

---

## Question 6
**Choose the correct options:**

- [x] The printenv command can request the values of individual variables. For example, `printenv PATH`
- [ ] The env command can output a list of all shell variables, environmental variables, local variables, and shell functions
- [x] The set command can make changes to shell environment flags.
- [x] The $PWD variable is for the current working directory of the shell
- [ ] The variable $HOSTNAME refers to the current logged in user

**Correct Answers:** Options 1, 3, and 4

---

## Question 7
**Match the following ps commands with their functions:**

- [ ] 1→a; 2→b; 3→c; 4→d; 5→f; 6→e;
- [x] 1→a; 2→c; 3→b; 4→d; 5→f; 6→e;
- [ ] 1→a; 2→b; 3→c; 4→f; 5→e; 6→;
- [ ] 1→a; 2→c; 3→b; 4→f; 5→d; 6→e;

**Correct Answer:** `1→a; 2→c; 3→b; 4→d; 5→f; 6→e;`

---

## Question 8
**In the current directory with the given ls output, what is the output of `$ echo m*`?**

- [ ] ml
- [ ] Applications Desktop Documents Downloads Library LibOntology.owl Movies Music Pictures Public VirtualBoxVms get-pip.py ml mtest texput.log
- [ ] ml mtest
- [x] Movies Music ml mtest

**Correct Answer:** `Movies Music ml mtest`

---

## Question 9
**Match the following Bash flags with their functions:**

- [x] 1→a; 2→d; 3→c; 4→g; 5→a; 6→f; 7→b;
- [ ] 1→a; 2→d; 3→c; 4→g; 5→e; 6→f; 7→b;
- [ ] 1→a; 2→d; 3→c; 4→g; 5→f; 6→e; 7→b;
- [ ] 1→a; 2→b; 3→c; 4→g; 5→f; 6→e; 7→d;

**Correct Answer:** `1→a; 2→d; 3→c; 4→g; 5→a; 6→f; 7→b;`

---

## Question 10
**For which of the following command the output obtained will be the number 37?**

- [x] $((37))
- [ ] $(((echo $BASH_SUBSHELL)));
- [ ] $(((echo $BASH_SUBSHELL)));
- [ ] $(((echo $BASH_SUBSHELL)));

**Correct Answer:** `$((37))`

---

## Question 11
**Which of the following is the correct syntax to store the output of the command to the variable named dirs?**

- [ ] dirs = ls
- [ ] dirs=ls
- [ ] dirs=`ls`
- [x] dirs=$(ls)

**Correct Answer:** `dirs=$(ls)`

---

## Question 12
**What is the output of the following?**
```bash
VAR="hello"
echo "${VAR-default}"
```
- [ ] default
- [x] hello
- [ ] hello:-default
- [ ] $(VAR-default)

**Correct Answer:** `hello`

---

## Question 13
**What is the output of the following?**
```bash
VAR="world"
REF="VAR"
echo "$(REF)"
```
- [ ] VAR
- [ ] World
- [ ] REF
- [x] $(REF)

**Correct Answer:** `$(REF)`
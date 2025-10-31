# SYSTEM COMMANDS WEEK 3

# Graded Programming Questions.

# Week 3 



## Problem 1

What is the output of the following command?[NAT]

```bash
echo "3+4*(5/4)" | bc

```

### Answer

7



## Problem 2

```
ls; date || cal; ps && file *
```

Which of the following commands in the options will have the same output as the command above. [MSQ]

(1) `ls`; `date`; `ps` ; `file *` 

(2) `ls`; `cal`;`ps` ; `file *`

(3) `ls`; `date`; `cal`; `ps`

(4) `ls`; `date`; `cal`; `ps` ; `file *`

### Answer

(1) 



## Problem 3

Which of the following commands will print the lines from 4 to 11 from top of a file `longfile.txt`? [MCQ]

(1) 

```
cat longfile.txt | head -4 | tail -11
```

(2) 

```
cat longfile.txt | head -11 | tail -7
```

(3) 

```
cat longfile.txt | tail -7 | head -11
```

(4) 

```
cat longfile.txt | tail -11 | head -4
```

### Answer

(2)

<div style="page-break-after: always; break-after: page;"></div>

---

## Problem 4

In which of the following cases the output obtained will be the number `3`? [MCQ]

(1) ``` (((echo $BASH_SUBSHELL));) ```

(2) ``` (((echo $BASH_SUBSHELL););) ```

(3) ``` (((echo $BASH_SUBSHELL);)) ```

(4) ``` (((echo $BASH_SUBSHELL))) ```

### Answer

(2) ``` (((echo $BASH_SUBSHELL););) ```

<div style="page-break-after: always; break-after: page;"></div>

---

## Problem 5

Which of the following options are correct with respect to the below command? [MSQ]
```bash
ls ~ >file_1.txt >>file_2.txt 2>file_3.txt 
```

(1) file_1.txt is overwritten and file_2.txt is appended

(2) file_1.txt and file_2.txt are appended

(3) file_1.txt is the stdout and file_2.txt is the stderr

(4) file_1.txt is stdout and file_3.txt is stderr

### Answer

(1) file_1.txt is overwritten and file_2.txt is appended

(4) file_1.txt is stdout and file_3.txt is stderr

<div style="page-break-after: always; break-after: page;"></div>

---

## Problem 6

Where will the output of the following command be directed?[MCQ]
```bash
echo "Random Text" | tee /dev/null >file
```

(1) To file `file` only.

(2) To `/dev/null` and file `file` only.

(3) To `/dev/null`, file `file` and the terminal.

(4) To `/dev/null` and the terminal only.

### Answer

(2)

<div style="page-break-after: always; break-after: page;"></div>

---

## Problem 7

Jack wants to store the output of the ls command in the file out as well as display it on the screen. Which of the following commands will achieve the goal? [MCQ]

(1) ``` ls | echo >out ```

(2) ``` ls >out | echo ```

(3) ``` ls | tee out ```

(4) ``` ls >out ```

### Answer

(3) ``` ls | tee out ```



## Problem 8

Which of the following commands will list all the `.txt` files in the current directory as well as delete them? [MSQ]

(1) ``` ls *.txt || rm *.txt ```

(2) ``` rm *.txt || ls *.txt ```

(3) ``` ls *.txt; rm *.txt ```

(4) ``` ls *.txt && rm *.txt ```

### Answer

(3) ``` ls *.txt; rm *.txt ```

(4) ``` ls *.txt && rm *.txt ```

<div style="page-break-after: always; break-after: page;"></div>

---

## Problem 9

Which of the following command will print the number of files/directories present in the current directory? [MCQ]

(1) ``` ls -l | wc -l ```

(2) ``` ls | tee | wc -l ```

(3) ``` wc -l $(ls) ```

(4) ``` wc -l `ls` ```

### Answer

(2) ``` ls | tee | wc -l ```



## Problem 10

Which of the following is the correct syntax to store the output of the command `ls` to the variable `dirs`?[MSQ]

(1) ``` dirs = ls ```

(2) ``` dirs=ls ```

(3) ``` dirs=`ls` ```

(4) ``` dirs=$(ls) ```

### Answer

(3) ``` dirs=`ls` ```

(4) ``` dirs=$(ls) ```

## Additional Questions 

### **Question 1:**
**What does the following command do?**

```bash
tr 'foo' 'bar' < file.txt > temp && mv temp file.txt

```

#### **Options:**

-   A) Replaces all occurrences of the string "foo" with "bar" in file.txt
    
-   B) Replaces each occurrence of the character `f` with `b`, and each `o` with `a` or `r` in file.txt
    
-   C) Reads the contents of file.txt, modifies it, and overwrites file.txt with the result
    
-   D) Uses tr to translate entire words from "foo" to "bar"
    

#### ✅ **Final Answer:**

**B) Replaces each occurrence of the character `f` with `b`, and each `o` with `a` or `r` in file.txt**

----------

### **Question 2:**

**Which of the following commands provide a visual representation or tree structure showing the parent-child relationship between processes in Linux?**

#### **Options:**

-   A) `pstree`
    
-   B) `ps -ejH`
    
-   C) `ps --forest`
    
-   D) `ps auxf`
    

#### ✅ **Final Answer:**

All of the above:  
**A, B, C, and D** — All show process hierarchies in a tree or visual format.

----------

### **Question 3:**

**On running the following command in the bash shell:**

```bash
echo "Random Text" | tee file1 | tee file2

```

**"Random Text" will be redirected to?**

#### **Options:**

-   A) The file `file1` only
    
-   B) The file `file1`, and the terminal
    
-   C) The file `file1`, file `file2` and the terminal
    
-   D) The file `file1` and the terminal
    

#### ✅ **Final Answer:**

**C) The file `file1`, file `file2` and the terminal**

----------

### **Question 4:**

**How many directories will be created by the command:**

```bash
mkdir dir-{0..9} && mkdir dir-100 || mkdir dir-101

```

#### ✅ **Final Answer:**

**11 directories** — `dir-0` to `dir-9` and `dir-100` (assuming none of them already exist).

----------

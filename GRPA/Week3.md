
## **GrPA 1**
### **Question:**
Print the number of lines present in `file1` and `file2` combined, your solution should not print anything else.  
`file1` and `file2` are located in the current working directory.

**Hint:** Multiple files can be given as arguments to the `cat` command.

### **Solution:**
```bash
script() { 
    cat file1 file2 | wc -l
}
```

----------

## **GrPA 2**

### **Question:**

There are three files `master.txt`, `half1.txt`, and `half2.txt` in the current working directory.  
Add the first 2 lines of `half1.txt` to the file `master.txt` at the end (starting at a new line),  
then append the last 3 lines of the file `half2.txt` to the file `master.txt` at the end (starting at a new line).  
Append the lines in the sequence mentioned.

### **Solution:**

```bash
script() { 
    head half1.txt -n2 >> master.txt
    tail half2.txt -n3 >> master.txt
}
```

----------

## **GrPA 3**

### **Question:**

Print to the output containing the name of the shell being used, its PID, and the flags  
in the following format (no spaces in the string):

```
Shell:<shell>|PID:<pid>|Flags:<flags>

```

### **Solution:**

```bash
script() { 
    echo "Shell:$(readlink -f /proc/$$/exe)|PID:$$|Flags:$-"
}
```

----------

## **GrPA 4**

### **Question:**

An observer wrote a script named `createTwingle` that produces a file `twingle`  
containing names of all visible stars in the sky at that instant.  
Every line in the file `twingle` is the name of a star.

In your current directory, the file `twingle` may or may not be present.  
If the file `twingle` is present in the directory, print the number of lines in the file.  
Else, execute the command `createTwingle` (it will create the file `twingle`),  
then print the number of lines in the file `twingle`.

**Hint:** Try to use operators discussed in the lectures to give a single-line solution for the task.  
**Note:** `stderr` will not be displayed.

### **Solution:**

```bash
script() { 
    wc -l twingle || (createTwingle && wc -l twingle)
}
```

----------

## **GrPA 5**

### **Question:**

Print the number of directories in the current working directory.  
Do not print anything else.

**Hint:** One solution is to make use of `ls`, `wc`, and pipes (`|`).

### **Solution:**

```bash
script() { 
    ls -d */ | wc -l
}
```

----------

## **GrPA 6**

### **Question:**

The script `test` will print some text to the standard output.  
It can be run similar to any other command and does not accept any arguments.

Your task is to print the output after running `test` on the screen  
**and also append the output at the end (starting at new line) of the file `log`.**  
The file `log` is located in the current working directory.

**Hint:** To solve it in one line, check the `man` page of the `tee` command for appending to a file.

### **Solution:**

```bash
script() { 
    test | tee -a log
}
```

----------

## **GrPA 7**

### **Question:**

Add the string `EOF alpha` at the end of the file (starting at a new line) `alpha.txt`  
then append the contents of the file `numbers.txt` at the end of the file (starting at a new line) `alpha.txt`.  
Both `alpha.txt` and `numbers.txt` are located in the current working directory.

### **Solution:**

```bash
script() {
    { echo "EOF alpha"; cat numbers.txt; } >> alpha.txt
}
```
# Week-4 Graded MCQ_MSQ

## Problem 1 

What will the following `vi` editor command do.

`:%s/UNIX/Linux/gci`

A. Replace all the occurrences of "Linux" with "UNIX" but is case-insensitive and will ask for confirmation.
B. Replace all the occurrences of "UNIX" with "Linux" but is case-insensitive and will ask for confirmation.
C. Replace all the occurrences of "UNIX" at the beginning of a line with "Linux" but is case-insensitive and asks for confirmation
D. Replace all the occurrences of "UNIX" with "Linux" but is case-sensitive and will asks for confirmation.

### Answer

(B)

---

## Problem 2
```bash
echo ${arr[@]/*[aA]*/}
```
Select the statements which are true for the above command. **(MSQ)**

a. All the elements in the original `arr` having the character `a` or `A` will be replaced with ""(null).
b. All the elements in the array `arr` not having the character `a` or `A` will be printed.
c. It does not alter the original array elements.
d. All the elements in the array `arr` having the character `a` or `A` will be printed.


### Answer
(b), (c)	

---

## Problem 3

The file "NameList.csv" has the names of the students, one on each line. What will the following command do? [MCQ]

`egrep '\b[rR]aj\b' RollList.csv`

A. Gives the names with the 'raj' or 'Raj' in them

B. Gives the names with the word 'raj' or 'Raj' but not 'Raja'

C. Gives the names with the 'raj' or 'Raj' in the beginning of the line

D. None of the above

### Answer

B) Gives the names with the word 'raj' or 'Raj' but not 'Raja'

---

## Problem 4

```bash
var1=`echo Today is a good day`
echo ${#var1}
```
What is the output of the above command sequence? (Enter only an integer. For example: 13) **(NAT)**

### Answer
19

---

## Problem 5

Match the following commands to their use with respect to the vi editor.

| Options       | Uses                                      |
| ------------- | ----------------------------------------- |
| 1 :q!         | A. Allows to execute commands in terminal |
| 2 :set number | B. Save and quit                          |
| 3 :x          | C. Display line numbers                   |
| 4 :!          | D. Force exit without saving              |

A. 1-D, 2-C, 3-A, 4-B
B. 1-D, 2-C, 3-B, 4-A
C. 1-B, 2-C, 3-D, 4-A
D. 1-B, 2-C, 3-A, 4-D

### Answer

B) 1-D, 2-C, 3-B, 4-A

---

## Problem 6

Select the correct options with respect to the following command? [MSQ]

```bash
grep -no gnu gnu_history.txt
```

A. Performs grep but output is displayed on terminal.
B. Prints the line numbers that contain the word`gnu`.
C. Performs grep but the error messages are turned off.
D. Prints the line numbers that do not have the word `gnu`

### Answer

B. Prints the line number along with the word "gnu"

---

## Problem 7

The file "CellNumbers.txt" has a list of phone numbers(10 digits), credit card numbers(16 digits) and usernames(single word string) in each line in the specified order. The entries in a row are separated by spaces. For e.g. one entry could be `2897442728 5688372212331253 user24` . Which of the following command will extract the credit card numbers and usernames from the file.[MSQ]

A. `egrep -o '[0-9]{16}\s[Aa-Zz].*' CellNumbers.txt`
B. `egrep -v '[0-9]{16}\s[Aa-Zz].*' CellNumbers.txt`
C. `egrep -i '[0-9]{16}\s[Aa-Zz].*' CellNumbers.txt`
D.`cut -c 12- CellNumbers.txt` 
E. `cut -d ' ' -f1,2 CellNumbers.txt`

### Answer

(A), (D) and (E)

---

## Problem 8

What is the expected output of the below command?

```bash
grep  -v "^#\|^'\|^\/\/" code.txt
```

A. Prints the lines with `#`,`^`,`\`
B. Prints the lines without `#`,`^`,`\`
C. Prints the lines starting with `#`,`'`,`//`
D. Prints the lines that do not start with `#`,`'`,`//`

### Answer

D. Prints the lines that do not start with `#`,`'`,`//`

---

## Problem 9

Which of the following commands can be used to list all thefile names with extension  `.cpp`in the current directory? [MSQ]

A. `s -l | egrep "^-" | grep -i "\.cpp"`
B. `ls -l | egrep -i "^-|cpp"`
C. `find . -type f -name '*.cpp'`
D. `find . -type f | grep "\.cpp"`

### Answer

(a), (c), (d)

---

## Problem 10

```bash
declare -A caparray=( [Switzerland]=Bern [Germany]=Berlin [Canada]=Ottawa [Tokyo]=Japan [Mongolia]=Ulaanbaater)
echo ${!caparray[@]} ; echo ${caparray[Tokyo]:1:2}
```

What is a possible output of the above command sequence? (Keeping in mind that associative arrays are stored in a 'hash' order) **(MCQ)**

a. 

```
Switzerland Canada Tokyo Mongolia Germany
ap
```

b. 

```
Bern Berlin Ottawa Japan Ulaanbaater
ap
```

c. 

```
Bern Berlin Ottawa Japan Ulaanbaater
a
```

d. 

```
Switzerland Canada Tokyo Mongolia Germany
Ja
```

### Answer

a. 

```
Switzerland Canada Tokyo Mongolia Germany
ap
```


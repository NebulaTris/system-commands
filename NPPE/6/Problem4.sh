: '
Given a file input.txt containing a word on each line, print all the words(one in each line) that occur between the words "FROM" and "TO"(but excluding these words). The match should be case sensitive for the given words and the words in the file are not unique, they can repeat.

For e.g. for Input file
$ cat input.txt 
This
is 
TO
some 
4word
FROM from FROM
THE 
b45eginning
TO
OKAY FRom okay FROM
give 
me 
44some
FROM
SOME
TO
TO
54TO4
FROM
from
Output should be
THE 
b45eginning
give 
me 
44some
SOME
from
'

#Solution:
script() { 
# Solution 1
sed -n '/FROM/,/TO/p' input.txt | sed '/FROM/d' | sed '/TO/d'
# Solution 2
# sed -n '/FROM/,/TO/{//!p;}' input.txt
# Solution 3
# sed -n '/FROM/,/TO/{/FROM/d;/TO/d;p;}'
}

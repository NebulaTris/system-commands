: '
Write a script using AWK to print the file with the maximum number of lines. 
Assume only one file that have the maximum number of line among the given files.
'
#Solution
script() { awk '
{ 
  if(max < FNR) { 
    max=FNR; 
    f=FILENAME; 
  } 
}
END { print f; }
' file*.txt
}

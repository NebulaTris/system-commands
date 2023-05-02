: '
A software company has published some best practices for writing the code. One of the best practice mentioned is that if no line in your code should exceed 50 characters in total including all type of characters or spaces.

Given a bash script that intends to print the names of all .c files that contain one or more lines with length more than 50 characters(as specified above).

The awk script within this bash script to check the files as per above condition is missing in the code, complete that
'
#Solution
eof="EOF"
while read file; do
  if [[ $file =~ $eof ]]; then
    break
  fi
  while read line; do
    if [[ $line =~ $eof ]]; then 
      break
    fi
    echo $line >>$file
  done
done
######### Driver code ends here

######### Script starts here
for file in *.c; do
  awk '


    BEGIN {
      flag=0;
    }

    {
      if (length($0)>50) flag=1;
    }

    END {
      if (flag==1) print FILENAME;
    }
  ' $file
done

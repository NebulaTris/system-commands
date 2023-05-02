: '
Given a file that contains current years board exam scores of students in all the schools in an area. Each line in the file contains four comma-separated fields: school code, roll number of the student, name of the student, and marks in the below format.

School_code,Student_Roll_no,Name,Marks

All the fields could be alphanumeric values except the last field Marks which is a number less than 500, as the maximum marks of the exam is out of 500.


Write an AWK script to print the roll numbers of the toppers of each school.For example if there is marks details of students of 11 schools of an area in the file, then your output should contain 11 roll numbers in any order, one for each school.

Test case description: Input is the contents of the input file. Your script does not need to read any input. Output is the expected output from your script. Your script may print expected roll numbers in any order, evaluation script sorts the input before printing.
'
#Solution
script() {
echo '
BEGIN {
  FS="," 
}
{
  if ($4 > max[$1]) {
    max[$1] = $4
    max_student[$1] = $2
  }
} 
END { 
  for (i in max_student) {
    print max_student[i]
  }
}
' > yourscript.awk
awk -f yourscript.awk data | sort
}
: '
Consider a file named marks.csv containing roll number and marks of variable number of subjects of students. The values are comma separated values and in the format
RollNo,Subject1,Subject2,Subject3,So on...

Write an Awk command to print all the roll numbers(RollNo) in the file.
'

#Solution:
script() {
awk -F, '{print $1}' marks.csv
}
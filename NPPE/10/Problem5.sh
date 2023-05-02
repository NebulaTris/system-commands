: '
Write an Awk command to print the first field of the all the lines containing more than 20 characters in the file marks.csv. The field separator in the file is comma (,).
'
#Solution
script() {
awk -F, 'length($0)>20{print $1}' marks.csv
}

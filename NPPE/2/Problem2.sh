: '
Create a file documents.txt containing all the possible file names in the format file_XYZ.txt where X is a lower case alphabet, Y is also a lower case alphabet and Z is a number between 0 and 4.
Few examples of file names in this format are 'file_dh3.txt', 'file_sd1.txt', 'file_ja0.txt', 'file_at2.txt'.
The file names in documents.txt should be separated by a single space.

Hint: Use echo to solve this with a single command.
'
#Solution
script() {
echo file_{a..z}{a..z}{0..4}.txt > documents.txt
}

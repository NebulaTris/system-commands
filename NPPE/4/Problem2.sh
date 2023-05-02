: '
"dir_1" and "dir_2" are directories in current working directory. Create a symbolic(soft) link to the file "file_1" present in "dir_1" and store it as "file_2" in "dir_2".
Hint: The link to file_2 should be either absolute from current working directory i.e. / or relative to dir_2.
'
#Solution
script() {
mkdir dir_1 dir_2
touch dir_1/file_1
ln -s /dir_1/file_1 /dir_2/file_2
#
# OR
# ln -s /dir_1/file_1 dir_2/file_2
#
# Solution 2
# cd dir_2; ln -s ../dir_1/file_1 file_2
}

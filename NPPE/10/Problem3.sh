: '
Given some raw programming files, we want them to adhere to the company guidelines. Write a sed script that will run for all ".sh" files in the current directory and print the contents after performing the following actions. You just need to write the sed script, running that for all the files will be taken care of by our driver bash script.

Insert a copyright message at the start of the file(before the first line) as "# Copyright IITM 2022"(Note that there is a space after #).
Insert a copyright message at the end of the file(after the last line) as "# Copyright IITM 2022".
Insert a line "# START FUNCTION" before the starting of a function and a line "# END FUNCTION" at the end of the function. Check GrPA 4 for more details on identifying function boundaries. Use the same logic here.
Change the function "background_sleep" to "inactive_sleep". So replace all the occurrences of the word "background_sleep" in any line with "inactive_sleep". Assume that these keywords are used only in context of a function and nothing else.
Also, the function "active_sleep" is deprecated and we do not have an immediate replacement. So insert a line "# TODO:DEPRECATED" before the function "active_sleep" and in every instance. i.e. before every line containing the word "active_sleep".
After every 10th line (in line numbers 10, 20, 30,... ) add a line with four hashes such as "####" after applying all the above actions.

'
#Solution
echo '
#!/usr/bin/sed -f
1 i\# Copyright IITM 2022
$ a\# Copyright IITM 2022
/[[:alnum:]+](.*)[[:space:]]*{/i\# START FUNCTION
/^[[:space:]]*}/a\# END FUNCTION
s/background_sleep/inactive_sleep/g
/\bactive_sleep/ i\# TODO:DEPRECATED
10~9 i\####
' | col > myscript.sed
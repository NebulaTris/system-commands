: '
A finance company called `Fintech` does not have its own analytics team, rather they outsources their analytics work to external vendors. The company maintains a file for each investor they are interested in, with the filename in the format 'firstname_lastname' in the directory 'data'(directory 'data' is in the current working directory). They do not want to make their investor details public so they rename each investor file to the hash value of filename before giving it to the external vendors and store the mapping in the file named map. Assume that no two investors have same combination of 'firstname' and 'lastname'.

The analytics team(external vendor) received the files of several investors named as some hash value. They analysed and identified some potential investors for the company and stored the hashed file names(one on each line) corresponding to the identified investors in a file named 'result'. The 'firstname_lastname' file contains the potential investment amount and duration details. Refer the provided sample data for sample file formats and architecture.

Write a bash script to print the sum of investment amounts of all the investors identified by the analytics team whose names(hash values) are present in the file 'result'. 

Architecture and Sample Data

$ ls -Rl
.:
total 4
drwxrwxrwx 1 user user 512 Dec 11 19:48 data
-rwxrwxrwx 1 user user 435 Dec 11 20:53 map
-rwxrwxrwx 1 user user 195 Dec 11 20:53 result
​
./data:
total 0
-rwxrwxrwx 1 user user 36 Dec 11 20:53 Billie_Barron
-rwxrwxrwx 1 user user 36 Dec 11 20:53 Jeremiah_Brennan
-rwxrwxrwx 1 user user 36 Dec 11 20:53 Long_Mclaughlin
-rwxrwxrwx 1 user user 35 Dec 11 20:53 Lorna_Trevino
-rwxrwxrwx 1 user user 35 Dec 11 20:53 Mandy_Mueller
​
$ cat ./data/Billie_Barron
INVESTMENT $16319
FROM 2026
TO 2026
​
$ cat map
bb1cc74d6e8c40efdbbbc0e6a657fca02a533fe7f438d5b09b47b43e31cb9a45 ./data/Mandy_Mueller
fe818c4ac047523ac14dbb341f365bbfcd857268a6bfb70d9abb701a80bfb9c3 ./data/Lorna_Trevino
e8b80161e4110a791a0d7c3e40a04099fc75f0e348c2033efe79a2a930a71e98 ./data/Long_Mclaughlin
b1b1222a15fcd532e511d0f461dbe7ae7bda825b68bc510eec2a22cbddd5dad2 ./data/Billie_Barron
6051c4f27079a41afc99a97f0fc7bb8ba2789cd282f4cd10a71c6a954089b63e ./data/Jeremiah_Brennan
​
$ cat result
bb1cc74d6e8c40efdbbbc0e6a657fca02a533fe7f438d5b09b47b43e31cb9a45
fe818c4ac047523ac14dbb341f365bbfcd857268a6bfb70d9abb701a80bfb9c3
e8b80161e4110a791a0d7c3e40a04099fc75f0e348c2033efe79a2a930a71e98
​
$ grep INVESTMENT -r
data/Billie_Barron:INVESTMENT $16319
data/Jeremiah_Brennan:INVESTMENT $29440
data/Long_Mclaughlin:INVESTMENT $25906
data/Lorna_Trevino:INVESTMENT $1360
data/Mandy_Mueller:INVESTMENT $7979
Expected output for above data


35245
'
#Solution
script() { 
  sum=0
  for i in $(cat result); do
    while read hash name; do 
      if [ $i == $hash ]; then
        inv=$(grep INVESTMENT $name)
        inv=${inv//INVESTMENT $/}
        sum=$((sum+inv))
      fi
    done < map
  done
  echo $sum
}

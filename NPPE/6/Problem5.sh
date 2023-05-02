: '
Write an awk script to find unintentionally repeated (duplicate) words in the file 'myfile.txt'. 
For example, sometimes a file can contain sentences like "The the building is beautiful". 
Print the repeated words on the order of occurence at one per line.
'
#Solution
script() { awk '
BEGIN {
  prev="";
  
}

{
  $0=tolower($0);
  #gsub(/[^A-Za-z0-9 \t]/, "");
  for (i = 1; i <= NF; i++) {
    if ($i == prev) {
      print $i
                
    }
    prev = $i;
  }
}

' myfile.txt
}
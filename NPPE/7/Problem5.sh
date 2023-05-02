: '
Write an awk script that reads a value n from the stdin within awk script, then prints the sum of odd numbers and sum of even numbers each on a separate line respectively, from the set of natural numbers from 1 to n (ends inclusive).
'
#Solution
script() { awk '
BEGIN {
  getline n < "-";  
  sumodd=0;   
  sumeven=0;
  for(i=1;i<=n;i++) {
    if (i%2 == 1) {
      sumodd = sumodd + i;
    }
    else {
      sumeven = sumeven + i;
    }
  } 
  print sumodd;
  print sumeven;
}
' 
}
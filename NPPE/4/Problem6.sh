: '
The file Pincode_info.csv has information on the pin codes of some places. A sample output of the command head -5 Pincode_info.csv is given below. First line of this file gives the information about the sequence of fields in each line of file following it.

Circle Name,Region Name,Division Name,Office Name,Pincode,OfficeType,Delivery,District,StateName
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,A Narayanapuram B.O,515004,BO,Delivery,ANANTHAPUR,Andhra Pradesh
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Akuledu B.O,515731,BO,Delivery,ANANTHAPUR,Andhra Pradesh
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Alamuru B.O,515005,BO,Delivery,ANANTHAPUR,Andhra Pradesh
Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Allapuram B.O,515766,BO,Delivery,ANANTHAPUR,Andhra Pradesh

Assume that there are only 10 states for which this system works and the first digit of the pin code is unique for each state. 
That means for all the places in the entire state the first digit will be same. You are given a shell variable named state that contains a state name(Example: state=“Punjab”). 
Display the number of pin codes available in the file Pincode_info.csv within the state given in the variable state that has the same first and the last digit. 
For e.g. if the value of state = “Andhra Pradesh”, one such pin code is 515005(for the file given above).

Hint: First find the first digit that represents the given state.
'
#Solution
script() { 
number=`egrep -i "$state" Pincode_info.csv | head -1 | egrep -o [0-9]{6} | cut -c1`
egrep -i "$state" Pincode_info.csv | egrep -o "$number[0-9]{4}$number" | wc -l

# Alternate solution
# egrep "$state" -i Pincode_info.csv | egrep "[0-9]{6}" -o | egrep "(.)....\1" | wc -l
}

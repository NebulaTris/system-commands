: '
EmployeeDetails.csv file contains the Employee ID, Employee Name, Leaves taken this year and Gender, of all the employees working in a company XYZ, born between the years 1997 and 2000 (including both). Total employees in the company is less than 1000.

The employee ID is of the format: DepartmentYearOfBirthCode Where:
- Department is the department to which the employee belongs to (Department A to G)
- YearOfBirth is the birth year of the employee (Eg. 2000)
- Code is a three digit number unique to each employee.

For e.g. B1997122 is employee id of an employee working in department B, born in the year 1997 having unique code as 122. The email ID of an employee is in the format EmployeeID@xyz.com, where EmployeeID is the employee id of the employee.
For example email id of Ram having employee id as A1998001 is A1998001@xyz.com. Email ids are case sensitive.

Write an awk script that takes input as file EmployeeDetails.csv and calculate and prints the average number of leaves taken by the employees born in each year from 1997 to 2000(both 1997 and 2000 included). The average for each year should be printed on a newline starting from the year 1997 to 2000 in the same sequence i.e. your script should print 4 lines of output always one for each year 1997, 1998, 1999 and 2000. If there are no employees born in some year, print 0 for that years average leaves. Print only the integer part of the average(i.e. if the average is 7.3333 print 7). Use int() function to get the integer part of any float number.
'
#Solution
script () { echo '
BEGIN{
  FS = ","
}

{
  if (NR == 1){
    l1997 = 0; c1997 = 0; av1997 = 0;
    l1998 = 0; c1998 = 0; av1998 = 0;
    l1999 = 0; c1999 = 0; av1999 = 0;
    l2000 = 0; c2000 = 0; av2000 = 0;
  }
  EID = $1;
  leave = int($3);
  # to obtain year from employee ID
  year = int(substr(EID, 2, 4));
  if (year == 1997)
  {
    l1997 = l1997 + leave; c1997++;}
  else if (year == 1998)
  {
    l1998 = l1998 + leave; c1998++;}
  else if (year == 1999)
  {
    l1999 = l1999 + leave; c1999++;}
  else if (year == 2000)
  {
    l2000 = l2000 + leave; c2000++;}
}

END{
  if (c1997 != 0)
    {av1997 = l1997/c1997;}
  if (c1998 != 0)
    {av1998 = l1998/c1998;}
  if (c1999 != 0)
    {av1999 = l1999/c1999;}
  if (c2000 != 0)
    {av2000 = l2000/c2000;}
  print (int(av1997))
  print (int(av1998))
  print (int(av1999))
  print (int(av2000))
}
' >yourScript.awk
awk -f yourScript.awk EmployeeDetails.csv
}
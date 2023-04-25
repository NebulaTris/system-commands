: '
EmployeeDetails.csv file contains the Employee ID, Employee Name, Leaves taken this year and Gender, of all the employees working in a company XYZ, born between the years 1997 and 2000 (including both). Total employees in the company is less than 1000.

The employee ID is of the format: DepartmentYearOfBirthCode Where:
- Department is the department to which the employee belongs to (Department A to G)
- YearOfBirth is the birth year of the employee (Eg. 2000)>
- Code is a three digit number unique to each employee.

For e.g. B1997122 is employee id of an employee working in department B, born in the year 1997 having unique code as 122. The email ID of an employee is in the format EmployeeID@xyz.com, where EmployeeID is the employee id of the employee.
For example email id of Ram having employee id as A1998001 is A1998001@xyz.com. Email ids are case sensitive.
Write an awk script that that takes the file EmployeeDetails.csv as input and prints the email ids of all the female employees of the company in the same sequence as the employee details appear in the file EmployeeDetails.csv
'

#Solution:
script(){ echo '
BEGIN{  
	FS = ","
} 

{
	EID = $1
	Gender= $4
	if (Gender ~ /Female/) {
		print EID"@xyz.com"
        }
}
' >yourScript.awk
awk -f yourScript.awk EmployeeDetails.csv
}

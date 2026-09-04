String Functions: UPPER (), LOWER (), LENGTH (), SUBSTR ()
use mysqlpractice;
1.Display all employee names in uppercase.
select upper(ename) from employee;

2.Show full names of employees in lowercase.
select lower(ename) from employee; 

3.List employees whose full name length is more than 6 characters.
select ename,length(ename) from employee where length(ename)>6;

4.Get the first three letters of each employee’s full name.
select ename, left(ename,3) as n from employee;

5.Find employees whose name starts with 'S' using SUBSTR().
select * from employee where substr(ename,1,1)='s';

6.List employees whose full name has exactly 7 characters.
select ename  from employee where length(ename)= 7;

7.Show full names and their lengths.
select ename ,length(ename) from employee;

8.Display employee names where the third character is 'a'.
select ename from employee where substr(ename,3,1)='a';

9.Show employees where full name ends with 'a' using SUBSTR() and LENGTH().
select ename from employee where substr(ename,length(ename),1) ='a';

10.Get employees whose second character is 'a' using SUBSTR().
select ename from employee where substr(ename,2,1)='a';

11.Show full names where the first letter is lowercase using LOWER(SUBSTR(...)).
select ename from employee where lower(substr(ename,1,1)) = substr(ename,1,1);

12.List names where the last character is 'y'.
select ename from employee where substr(ename,length(ename),1)='y';

13.Display employees with names that have more than 1 occurrence of ‘a’ (with nested SUBSTR() logic).
select ename from employee where substr(lower(ename),1,length(ename)) like '%a%';

14.Show employee roles in uppercase.
select ename,upper(role) as Role from employee ;

15.List names of employees whose role has more than 10 characters.
select ename ,role from employee where length(role) >10;

16.Show only the first 2 characters of the ROLE.
select substr(role,1,2) from employee;

17.Display full name and the length difference between full name and role.
select ename,length(ename)-length(role) as diff_btw from employee;

18.Get employees where the first character of role is 'C'.
select  * from employee where substr(ename,1,1)='C';

19.Show names and roles, with both displayed in uppercase.
select upper(ename) as Names,upper(role) as Role from employee; 

20.Find names with second letter not 'a' using SUBSTR() and condition.
select ename from employee where substr(ename,2,1)!='a';
ORDER BY
1.List all employees sorted by salary in ascending order.
select * from employee order by salary;

2.Display full names and join dates of employees, ordered by the most recent hire first.
select ename,join_date from employee order by join_date;

3.Show employee names and bonuses, ordered from highest to lowest bonus.
select ename,bonus from employee order by bonus desc;

4.List employees by department, sorted by DEPT_ID in ascending order.
select * from employee order by dept_id;

5.Display full names and DOBs, ordered by age (youngest first).
select ename,dob,round(datediff(curdate(),dob)/365) as age  from employee order by dob desc;

6.Show full names and roles of employees, ordered alphabetically by role.
select ename,role from employee order by role;

7.List employees with their salaries, sorted in descending order of salary.
select ename,salary from employee order by salary desc ;

8.Show full name and bonus, ordered by NULL bonuses last and then descending bonuses.
select ename,bonus from employee order by bonus is null , bonus desc;

9.List employees ordered by blood group alphabetically.
select * from employee order by blood_group ;

10.Show full name and salary, sorted by EMP_TYPE ascending and then salary descending.
select ename,salary from employee order by emp_type ,salary desc;

11.Display names and DOB, ordered by year of birth (oldest first).
select ename,dob from employee order by dob ;

12.List employees sorted first by DEPT_ID, then by salary in descending order.
select * from employee order by dept_id,salary desc;

13.Show employee names, ordered by LENGTH of their names in descending order.
select ename from employee order by length(ename) desc;

14.List full name and join date of employees, sorted by join year then by name.
select ename,join_date from employee order by year(join_date),ename ;

15.Display employees ordered by GENDER and then by SALARY.
select ename gender,salary from employee order by gender,salary;

16.Show employees who joined after 2020, ordered by bonus in descending order.
select ename,join_date,bonus from employee where year(join_date)>'2020' order by bonus desc; 

17.List employees by EMP_TYPE in descending order and full name alphabetically.
select ename,emp_type from employee order by ename,emp_type;

18.Get employee names sorted by the last character of their name.
select ename from employee order by right (ename ,1);

19.Display employees ordered by ROLE length (number of characters in role) and then by full name.
select * from employee order by length(role),ename;

20.List employees by annual salary (salary * 12), sorted from highest to lowest.
select * from employee order by salary*12 desc;
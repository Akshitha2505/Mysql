use mysqlpractice;
1.Show details of employees whose BONUS is NULL.
select * from employee where bonus is null;

2.List names of employees who do not have a BONUS.
select ename from employee where bonus is null;

3.Display full name and salary of employees whose BONUS is NOT NULL.
select ename ,salary from employee where bonus is not null;

4.Get names of employees who have a REPORTS_TO value.
select ename from employee where reports_to is not null;

5.Find employees who do not have a reporting manager (REPORTS_TO is NULL).
select * from employee where reports_to is null;

6.List employees whose BONUS is NULL and EMP_TYPE is ‘Intern’.
select * from employee where bonus is null and emp_type ='Intern';

7.Show full names of employees whose BONUS is NULL but SALARY is greater than 80000.
select ename from employee where bonus is null and salary >80000;

8.Find employees whose REPORTS_TO is NOT NULL and work in DEPT_ID 1.
select * from employee where reports_to is not null and dept_id =1;

9.Get full names of employees whose BONUS and REPORTS_TO are both NULL.
select ename from employee where bonus and reports_to is null;

10.List employees with BONUS IS NOT NULL and are hired after 2021.\
select * from employee where bonus is not null and year(join_date) > '2021'; 

11.Display names of employees whose BONUS is NULL or REPORTS_TO is NULL.
select ename from employee where bonus or reports_to is null;

12.Find all employees who have a BONUS but no REPORTS_TO.
select * from employee where bonus is not null and reports_to is null;

13.Show details of employees who are missing BONUS but have EMP_TYPE as ‘Contract’.
select * from employee where bonus is null and emp_type ='Contract';

14.List names and roles of employees with NULL BONUS and working in DEPT_ID 2.
select  ename ,role from employee where bonus is null and dept_id =2;

15.Get details of employees who don’t have a BONUS and were born after 1993.
select * from employee where bonus is null and year(dob)>'1993';

16.Show names of employees whose BONUS is NOT NULL and whose ROLE contains ‘Engineer’.
select ename from employee where bonus is not null and role like '%Engineer%';

17.Find employees with a NULL BONUS but a salary above 85000.
select * from employee where bonus is null and salary >85000;

18.Display employee details where REPORTS_TO is NULL and ROLE is ‘HR Manager’.
select * from employee where reports_to is null and role ='HR Manager';

19.List full names of employees whose BONUS is NULL and EMP_ID is greater than 300.
select ename from employee where bonus is null and emp_id > 300;

20.Show the employees whose BONUS is NULL and also joined after 2022.
select * from employee where bonus is null and year(join_date) >'2022';
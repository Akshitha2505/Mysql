use mysqlpractice;
1.Display the details of employees whose bonus is not null.
select * from employee where bonus is not null;

2.Find the names of employees who are working as 'Intern'.
select ename from employee where emp_type='Intern';
select * from employee;

3.Show the employee IDs and full names of employees whose DEPT_ID is 1.
select emp_id ,ename from employee where dept_id=1;

4.Get details of employees whose salary is between 60000 and 90000.
select * from employee where salary  between 60000 and 90000;

5.Display the details of employees born after the year 1993.
select * from employee where dob > '1993-12-31';

6.Find employees whose EMP_TYPE is 'Contract'.
select * from employee where emp_type='contract';

7.Get the details of employees who report to manager with EMP_ID 1739.
select * from employee where reports_to=1739;


8.Display the full names and DOB of employees born in 1995.
select ename ,dob from employee where year(dob)='1995';

9.Show the names of employees who have a null value in BONUS.
select ename,bonus from employee where bonus is null;

10.Find the details of employees who joined on or after '2022-01-01'.
select * from employee where join_date > '2022-01-01';

11.Get the names of employees whose salary is equal to 78000.
select ename from employee where salary=78000;

12.Display all employees who are not 'Male'.
select * from employee where gender='male';

13.Find details of employees whose blood group is not 'A+'.
select * from employee where blood_group <> 'A+';

14.Get details of employees with DEPT_ID not equal to 2.
select * from employee where dept_id !=2;

15.Find the employees who have both salary and bonus more than 80000.
select * from employee where salary and bonus >80000;

16.Show the full names of employees whose name length is more than 5 characters.
select ename from employee where length(ename)>5;

17.Display the names of employees who joined exactly on '2021-11-25'.
select ename from employee where join_date='2021-11-25';

18.Get details of employees who are reporting to themselves.
select * from employee where reports_to = emp_id;

19.Find the details of employees working as HR
select * from employee where role ='hr';

20.Display the details of employees born after the year 2001.
select * from employee where year(dob) > '2001';

21.Find the details of employees who joined on or after '2002’.
select * from employee where year(join_date) >'2002';
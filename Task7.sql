use mysqlpractice;
1.Display employees whose salary is between 80000 and 100000.
select * from employee where salary between 80000 and 100000;

2.Find employees whose bonus lies between 2000 and 6000.
select * from employee where bonus between 2000 and 6000;

3.List names and DOBs of employees born between '1992-01-01' and '1995-12-31'.
select ename,dob from employee where dob between '1992-01-01' and '1995-12-31';

4.Get names and join dates of employees hired between '2020-01-01' and '2021-12-31'.
select ename,join_date from employee where join_date between '2020-01-01' and '2021-12-31';

5.Display details of employees with EMP_ID between 1100 and 1500.
select * from employee where emp_id between 1100 and 1500;

6.Show names and annual salary of employees whose annual salary is between 900000 and 1100000.
select ename,salary*12 as annual_sal from employee where salary*12 between 900000 and 1100000;

7.Find employees with DEPT_ID between 2 and 4.
select * from employee where dept_id between 2 and 4;

8.Get names of employees whose bonus is between 3000 and 10000.
select ename from employee where bonus between 3000 and 10000;

9.List employees whose salary falls between 60000 and 85000.
select * from employee where salary between 60000 and 85000;

10.Show details of employees whose join date is between '2018-01-01' and '2023-01-01'.
select * from employee where join_date between '2018-01-01' and '2023-01-01';

11.Show employees born between '1990-01-01' and '1993-12-31'.
select * from employee where dob between '1990-01-01' and '1993-12-31';

12.Get employees whose BONUS is between 4000 and 10000.
select * from employee where bonus between 4000 and 10000;
use mysqlpractice;
1.Display the annual salary of the employee whose name is Sai.
select salary*12 as Annual_sal from employees where full_name='Sai';

2.Show the names of employees working as Backend Developer.
select ename from employee where role='backend developer';

select * from employee;
alter table employee Rename column full_name to ename;

3.Find the salary of employees who are working as QA Engineer.
select salary from employee where role='QA Engineer';

4.Get the details of employees who earn more than ₹2000 as bonus.
select * from employee where bonus >2000 ;

5.Display all the details of the employee whose name is Ravi.
select * from employee where ename='Ravi';

6.Find the details of employees who joined after '2021-01-01'.
select * from employee where join_date>'2021-01-01';

7.Show the name and salary along with annual salary of employees earning more than ₹120000 per year.
select ename,salary,salary*12 as Annual_sal from employee where salary*12>120000;

8.Display the EMP_ID of employees who are working in department 3.
select emp_id from employee where dept_id=3;

9.Show name and join date of employees who joined before '2020-01-01'.
select ename,join_date from employee where join_date < '2020-01-01';

10.Find the details of employees working as Technical Lead.
select * from employee where role='Technical lead';

11.Display name and salary of the employee who is receiving ₹6000 as bonus.
select ename,salary,bonus from employee where bonus=6000;

12.Show details of employees whose bonus is greater than their salary.
select * from employee where bonus > salary;

13.Display EMP_IDs of employees who were born before the year 1987.
select emp_id ,dob from employee where dob < '1987-01-01';

14.Show details of employees working as Cybersecurity Analyst.
select * from employee where role='cybersecurity analyst';

15.Get the details of employees earning more than ₹2000 bonus per month.
select * from employee where bonus >2000;

16.Show the details of employees whose gender is 'Female'.
select * from employee where gender='female';

17.Display the names and roles of employees whose salary is less than 80000.
select ename,role,salary from employee where salary <80000;

18.Find the employees who joined in the year 2020.
select * from employee where year(join_date)='2020';

19.Show the names of employees whose blood group is 'O+'.
select ename from employee where blood_group='O+';
use mysqlpractice;
1.Display the names and salary of employees who are ‘Full-time’ and earn more than 80000.
select ename,salary from employee where emp_type ='Full-time'and salary >80000;

2.Get the details of employees who joined in 2021 and have a bonus more than 5000.
select * from employee where  year(join_date)='2021' and bonus>5000;

3.Show the employee names and DOB of all female employees born after 1992 and before 1998.
select ename,dob from employee where gender ='female' and year(dob) >'1992' and year(dob) <'1998';

4.Find the employees working in department 1 and reporting to EMP_ID 1739.
select * from employee where dept_id=1 and reports_to =1739;

5.Get details of employees who are ‘Male’ and have blood group ‘B-’.
select * from employee where gender='male' and blood_group ='B-';

6.List employees whose salary is more than 85000 and bonus is not null.
select * from employee where salary >85000 and bonus is not null;

7.Show the names of employees who are working as ‘Intern’ and are in DEPT_ID 2.
select ename from employee where emp_type='intern' and dept_id=2;

8.Get the list of employees whose EMP_TYPE is ‘Contract’ and salary is more than 70000.
select * from employee where emp_type='contact' and  salary >70000;

9.Display full names and join dates of employees hired after '2020-01-01' and with EMP_TYPE 'Intern'.
select ename, join_date from employee where join_date > '2020-01-01' and emp_type ='intern';

10.Find employees whose SALARY is greater than BONUS and EMP_TYPE is 'Contract'.
select * from employee where salary >bonus and emp_type ='contact';

11.Show the full name, DEPT_ID, and ROLE of employees working as ‘Technical Lead’ in DEPT_ID 1.
select ename,dept_id,role from employee where role='technical lead' and dept_id =1;

12.Get the full name, DEPT_ID, and SALARY of employees working in DEPT_ID 2 and earning less than 80000.
select ename,dept_id, salary from employee where dept_id=2 and salary<80000;

13.Display full name and SALARY of employees earning more than 60000 and less than 90000.
select ename,salary from employee where salary>60000 and salary <90000;

14.Find the full name and DEPT_ID of employees in DEPT_ID 1 and working as ‘Backend Developer’.
select ename,dept_id from employee where dept_id=1 and role ='Backend Developer';

15.Find employees whose role is either ‘Backend Developer’ or ‘Frontend Developer’.
select * from employee where role='Backend developer' or role= 'Frontend developer';

16.Display names of employees who joined in 2020 or 2021.
select ename from employee where year(join_date)='2020' or year(join_date)='2021';

17.Show the employees who either earn a bonus more than 10000 or salary less than 70000.
select * from employee where bonus > 10000 or salary < 70000;

18.List employees who report to EMP_ID 1739 or 1846.
select * from employee where reports_to =1739 or reports_to=1846;

19.Get names of employees whose EMP_TYPE is ‘Intern’ or ‘Full-time’.
select ename from employee where emp_type ='Full-time' or emp_type ='intern';

20.List the names and salary of employees earning 85000 or 95000.
select ename,salary from employee where salary =85000 or salary =95000;
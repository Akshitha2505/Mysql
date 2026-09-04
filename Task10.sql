use mysqlpractice;
1.Find the total number of employees in the company.
select count(*) from employee;

2.Count how many employees are ‘Full-time’.
select count(*) from employee where emp_type='Full-time';

3.Count the number of employees who joined after 2020.
select count(*) from employee where year(join_date)>'2020';

4.Count employees with a bonus greater than 5000.
select count(*) from employee where bonus > 5000;

5.Find how many employees are in DEPT_ID 1.
select count(*) from employee where dept_id =1;

6.Count the number of employees who are female and have a salary above 80000.
select count(*) from employee where gender ='female' and salary > 80000;

7.Count employees who are interns and have no bonus (BONUS IS NULL).
select count(*) from employee where emp_type = 'intern' and bonus is null;

8.Find the total salary paid to all employees.
select sum(salary) as tot_sal from employee;

9.Find the total bonus given to employees in DEPT_ID 3.
select sum(bonus) as tot_bonus from employee where dept_id =3;

10.Calculate the average salary of employees with role ‘Backend Developer’.
select sum(salary)/count(*) as avg_sal  from employee where role ='backend developer';

11.Get the average bonus for employees who joined after 2021.
select sum(bonus)/count(*) as avg_bonus from employee where year(join_date)>'2021';

12.Find the maximum salary among male employees.
select max(salary) as max_sal from employee where gender ='male';

13.Show the highest bonus received by a female employee.
select max(bonus) as max_bonus from employee where gender='female';

14.Get the minimum salary among employees with role ‘DevOps Engineer’.
select min(salary) as min_sal from employee where role ='Devops engineer';

15.Find the lowest bonus among employees who are not interns.
select min(bonus) as low_bonus from employee where  not emp_type ='intern';

16.Find the total salary of employees who report to EMP_ID 1739.
select sum(salary) as tot_sal from employee where reports_to =1739;

17.Calculate the average salary of employees in DEPT_ID 2.
select sum(salary)/count(*) as avg_sal from employee where dept_id =2;

18.Get the maximum salary of employees whose EMP_TYPE is ‘Contract’.
select max(salary) as max_sal from employee where emp_type ='contract';

19.Find the minimum salary among employees born after 1995.
select min(salary) as min_sal from employee where year(dob)=1995;

20.Count the number of employees who are not in DEPT_ID 1 or 2.
select count(*) from employee where dept_id not in (1,2);

21.Find the sum of all bonuses where BONUS is NOT NULL.
select sum(bonus) from employee where bonus is not null;

22.Find the total number of employees whose names start with 'S'.
select count(*) from employee where ename like 's%';

23.Show the highest salary of employees with blood group ‘A+’.
select max(salary) from employee where blood_group ='A+';

24.Count the number of employees whose ROLE contains ‘Engineer’.
select count(*) from employee where role like '%Engineer%';

25.Calculate the average salary of employees whose salary is greater than 90000.
select sum(salary)/count(*) as avg_sal from employee where salary >90000;
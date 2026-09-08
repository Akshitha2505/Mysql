Having Clause
use mysqlpractice;
select * from employee;
1.Display the roles (designations) where at least 2 employees are working.
select role from employee group by role having count(*) >= 2;

2.List the salary values that appear more than once in the employee table.
select salary from employee group by salary having count(*) >1;

3.Show department IDs that have at least 2 employees with the letter 'A' or 'S' in them full name.
select dept_id from employee where ename like '%a%' or ename like '%s%' group by dept_id  having count(*) >=2;

4.Display each role and its total salary if the total salary is more than 3,45,000.
select role from employee group by role having sum(salary) >345000;

5.List job titles and their total salary where employees earn more than 80,000 individually.
select  role , salary  from employee having salary >80000;

6.Show job roles where the maximum salary exceeds 90,000.
select role from employee group by role having max(salary)>90000;

7.Display the number of employees earning above 85,000 in each job and show only those jobs where the total salary exceeds 3,80,000.
select role,count(*) as no_emps from employee group by role having sum(salary)>380000;

8.List DEPT_IDs and employee counts where there are at least 2 employees with the role 'Recruiter'.
select dept_id,count(*) as no_emps from employee where role='Recruiter' group by dept_id having count(*)>2;

9.Show department IDs where total salary exceeds 4,00,000 and at least 4 employees are present.
select dept_id from employee group by dept_id having sum(salary) >400000 and count(*) >4;

10.Show department-wise employee count where at least 2 employees are working as ‘DevOps Specialist’.
select dept_id ,count(*) as no_emps from employee where role ='Devops specialist'group by dept_id having count(*) >2;

11.List job titles and their max salary only if max salary exceeds 95,000.
select role ,max(salary) as max_sal from employee group by role having max(salary) >95000;

12.Display salaries that occur more than once among the employees.
select salary ,count(*) as cnt from employee group by salary having count(*) >1;

13.List the join dates that appear more than once in the employee table.
select join_date ,count(*) as cnt from employee group by join_date having count(*) >1;

14.Display department-wise average salary where the average is less than 90,000.
select dept_id ,avg(salary) as avg_sal from employee group by dept_id having avg(salary)<90000;

15List departments that have at least 3 employees whose names include ‘A’ or ‘S’.
select dept_id,count(*) as cnt from employee where ename like '%a%' or '%s%' group by dept_id having count(*) >3 ;

16Show each job role's minimum and maximum salaries where MIN salary > 60,000 and MAX salary < 1,00,000'.
select role,min(salary) as min_sal,max(salary) as max_sal from employee group by role having min(salary) >60000 and max(salary)<100000;

17.List EMP_TYPEs where the number of employees is more than 2 and the total bonus exceeds 10,000.
select emp_type ,count(*) as cnt,sum(bonus) from employee group by emp_type having sum(bonus) >10000 and count(*) >2;
select * from employee;

18.List EMP_TYPEs having an average salary greater than 85,000.
select emp_type ,avg(salary) as avg_sal from employee group by emp_type having avg(salary)>85000;

19.Show DEPT_IDs where the number of employees is more than 3 and the average bonus is above 4,000.
select dept_id,count(*) as cnt ,avg(bonus) as avg_bns from employee group by dept_id having count(*) >3 and avg(bonus) >4000;

20.Display GENDER-wise total salary where the count of employees is at least 2.
select gender,sum(salary) as tot_sal,count(*) as cnt from employee group by gender having count(*) >2;

21.List REPORTS_TO IDs where more than one employee reports to the same manager.
select reports_to ,count(*) as cnt from employee group by reports_to having count(*) >1;

22.Show BLOOD_GROUPs with more than 2 employees.
select blood_group ,count(*) as cnt from employee group by blood_group having count(*) >2;

23.Display DEPT_IDs where the maximum bonus exceeds 6,000.
select dept_id ,max(bonus) as max_bonus from employee group by dept_id having max(bonus) >6000;

24.List ROLEs where at least 2 employees have joined after 2020.
select role ,count(*) from employee where year(join_date)>'2020'group by role having count(*) >2;

25.Show EMP_TYPEs having more than 2 employees and the minimum salary is above 60,000.
select emp_type,count(*) as cnt ,min(salary) as min_sal from employee group by emp_type having count(*) >2 and min(salary) >60000;

26.Display DEPT_IDs where the average of (salary + bonus) is greater than 95,000.
select dept_id ,avg(salary+bonus) as avgg from employee group by dept_id having avg(salary+bonus) >95000;

27.List ROLEs where the number of female employees is at least 2.
select role ,count(*) as cnt from employee where gender='Female' group by role having count(*) >2;

28.Show DEPT_IDs where more than 2 employees are born after 1993.
select dept_id,count(*) from employee where year(dob) >'1993' group by dept_id having count(*) >2;

29.Display ROLEs where total bonus received is more than 10,000.
select role,sum(bonus) as tot from employee group by role having sum(bonus) >10000;

30.List JOB ROLES where the average salary is less than 80,000 and more than 1 employee exists.
select role,avg(salary) avgg from employee group by role having avg(salary) < 80000 and count(*) >1;

31.Show DEPT_IDs where the minimum bonus is not NULL and is greater than 2,000.
select dept_id ,min(bonus) as min_sal from employee group by dept_id having min(bonus) >2000;

32.Display BLOOD_GROUPs having employees with total salary exceeding 2,50,000.
select blood_group,sum(salary) from employee group by blood_group having sum(salary) >250000;
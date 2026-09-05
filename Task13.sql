GROUP BY
use mysqlpractice;
1.Show the number of employees in each department.excluding those with the role ‘Penetration Tester’.
select dept_id,count(*) as no_emps from employee where role <> 'Penetration Tester' group by dept_id ;

2.Display the maximum salary paid for each unique role.
select role,max(salary) from employee group by role;

3.Count the noof employees in each role where the full name contains the letter 'a'.
select count(*) from employee  where ename like '%a%' group by role;
select * from employee

4.Find how many employees in each dept have received a bonus (BONUS IS NOT NULL).
select dept_id,count(*) from employee where bonus is not null group by dept_id;

5.List the total number of employees in each department, excluding those with the role 'Software Architect'.
select dept_id,count(*) as tot from employee where role <> 'Software Architect' group by dept_id;

6.Show total salary paid to all employees for each job role.
select role,sum(salary) as tot from employee group by role;

7.Count the number of employees working as ‘Technical Lead’ in each department.
select dept_id,count(*) from employee where role ='Technical Lead' group by dept_id;

8.Display the average salary paid per department, excluding DEPT_ID 2.
select sum(salary)/count(*) as avg_sal from employee where dept_id <> 2 group by dept_id;

9.Count how many employees have the letter 'a' in their full name grouped by role.
select count(*) as no_emps from employee where ename like '%a%' group by role;

10.For each department, show the number of employees and their average salary were salary is greater than 80000.
select count(*) as no_emps ,sum(salary)/count(*) as avg_sal from employee where salary >80000 group by dept_id;

11.List total salary paid and number of employees working as 'Intern' in each department.
select sum(salary) as tot,count(*) as no_emps  from employee where emp_type ='Intern' group by dept_id;

12.For each role, show the number of employees and the highest salary among them.
select role,count(*) as no_emps,salary from employee where salary=max(sal) group by role ;

13.Display the maximum salary given to employees grouped by department.
select dept_id,max(salary) as max_sal from employee group by dept_id;

14.Show how many times each unique salary value occurs in the employee table.
select salary,count(*) as cnt from employee group by salary ; 

15.Display the average bonus given to employees in each EMP_TYPE.
select  emp_type,sum(bonus)/count(*) as avg_bonus from employee group by emp_type;

16.Show the total number of male and female employees in each department.
select dept_id,gender,count(*) as cnt from employee group by dept_id,gender;

17.Count how many employees joined in each year.
select year(join_date),count(*) as emps from employee group by year(join_date);

18.List the number of employees grouped by their blood group.
select blood_group,count(*) as cnt from employee group by blood_group;

19.Display the total bonus amount given in each department.
select dept_id,sum(bonus) as tot from employee group by dept_id; 

20.Show the average salary of employees grouped by gender.
select gender,sum(salary)/count(*) as avg_sal from employee group by  gender;

21.List the maximum bonus received by employees in each job role.
select role,max(bonus) as max_bns from employee group by role ;

22.Find how many employees report to each manager (REPORTS_TO).
select reports_to ,count(*) as cnt from employee group by reports_to;

23.Show the count of employees in each department whose salary is above 85000.
select dept_id,count(*) as cnt from employee where salary > 85000 group by dept_id;

24.Display the number of employees and total salary grouped by EMP_TYPE, excluding interns.
select emp_type,count(*) as cnt ,sum(salary) as tot from employee where emp_type <> 'Intern' group by emp_type;
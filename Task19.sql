INNER JOIN
use mysqlpractice;
select * from employee;
select * from department;
1.Show the full name and department name for all employees.
select e.ename,d.dept_name from employee e inner join department d on (e.dept_id =d.dept_id);

2.Display the full name and location of employees working as ‘Manager’.
select e.ename,d.location from employee e inner join department d on (e.dept_id =d.dept_id) where role='Manager';

3.Get the full name, salary, and department name of employees working as ‘Clerk’ in DEPT_ID 2 with salary above 80000.

select e.ename,e.salary,d.dept_name from employee e inner join department d on (e.dept_id=d.dept_id) where e.role='Clerk' and e.salary >80000;

4.Display employee full name, department name, and location for employees earning more than 90000 in ‘Hyderabad’.
select e.ename,d.dept_name,d.location from employee e inner join department d on (e.dept_id=d.dept_id) where e.salary >90000 and d.location ='Hyderabad';

5.Show employee full name and department location of all employees.
select e.ename,d.location from employee e inner join department d on (e.dept_id=d.dept_id) ;

6.Show department name and salary of all employees working in the ‘Development’ department.
select d.dept_name,e.salary from employee e inner join department d on (e.dept_id=d.dept_id) where d.dept_name='Development';

7.Display department name and annual salary of employees whose salary is more than 95000.
select d.dept_name,e.salary*12 as Annual_sal from employee e inner join department d on (e.dept_id =d.dept_id) where e.salary >95000;

8.List full names and department names of employees if their department name contains the letter 'a'.
select e.ename,d.dept_name from employee e inner join department d on (e.dept_id=d.dept_id) where e.ename like '%a%';

9.Show full names and department names of all employees working as ‘Intern’.
select e.ename,d.dept_name from employee e inner join department d on (e.dept_id=d.dept_id) where e.emp_type='Intern';

10.Get department name and role of all employees where both department and role start with ‘D’
select d.dept_name,e.role from employee e inner join department d on (e.dept_id=d.dept_id) where e.role and d.dept_name like '%d%';
SELF JOIN
use mysqlpractice;
select * from employee;
1.Display employee full name and their manager's name if the employee works as ‘Clerk’.
select e.ename,m.ename from employee e join employee m on (e.reports_to=m.emp_id)  where e.role = 'Clerk';

2.Get employee full name and manager's role if the manager is in DEPT_ID 1 or 2.
select e.ename,m.role from employee e join employee m on (e.reports_to=m.emp_id) where e.dept_id  in (1,2);

3.Show employee name and manager’s salary if both earn more than 80000.
select e.ename,m.salary from employee e join employee m on (e.reports_to=m.emp_id) where m.salary >80000;

4.List employee full name and manager’s hire date if the employee joined before 2019.
select e.ename,m.join_date from employee e join employee m on (e.reports_to=m.emp_id) where year(m.join_date) <'2019';

5.Show employee name and manager’s bonus if the employee is a ‘Sales Executive’ and manager is in DEPT_ID 3.
select e.ename,m.bonus from employee e join employee m on (e.reports_to =m.emp_id) where e.role='Sales Executive' and m.dept_id =3;

6.List employee and manager names along with salaries where employee earns more than their manager.
select e.ename,m.ename ,m.salary from employee e join employee m on (e.reports_to=m.emp_id) where e.salary > m.salary;

7.Display employee and manager names with their hire dates if manager joined before employee.
select e.ename,m.ename,m.join_date from employee e join employee m on (e.reports_to = m.emp_id) where e.join_date >m.join_date;

8.List employees and their managers if both work in the same role.
select e.ename,m.ename from employee e join employee m on (e.reports_to=m.emp_id) where e.role = m.role;

9.Display employee and manager names if manager is working as actual ‘Technical Lead’.
select e.ename,m.ename from employee e join employee m on (e.reports_to=m.emp_id) where m.role='Technical Lead';

10.Show employee name, manager name, and their annual salaries if employee is in DEPT_ID 1 or 2 and earns less than their manager.
select e.ename,m.ename,e.salary*12 as annual_sal from employee e join employee m on (e.reports_to=m.emp_id) where e.dept_id in (1,2) and e.salary < m.salary;

11.Display employee name and manager's designation for all employees.'
select e.ename,m.role from employee e join employee m on (e.reports_to=m.emp_id) ;

12.Show employee name and manager's salary if the manager’s salary ends with 50.'
select e.ename,m.salary from employee e join employee m  on (e.reports_to=m.emp_id) where mod(e.salary, 100)=50;
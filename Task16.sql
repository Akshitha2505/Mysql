LEAD ( ) and LAG ( )
use mysqlpractice;
1.Display each employee's name along with the next employee's name (based on salary order).
select ename,lead(ename) over (order by salary desc) as nxt_name from employee;

2.Show each employee’s name and the name of the employee who joined just before them (based on JOIN_DATE using LAG()).
select ename,lag(ename) over (order by join_date) as pvs_name from employee;
select * from employee order by join_date;

3.Display each employee’s salary and the difference between their salary and the next employee’s salary (ordered by salary).
select ename,salary,salary-lead(salary) over (order by salary desc ) as diff_btw from employee;

4.Show employee names along with the previous and next employee’s role using LAG() and LEAD().
select ename,lag(ename)over (order by role ) as pvs_name ,lead (ename)over (order by role) as nxt_name from employee;

5.List each employee's name, join date, and the join date of the next person who joined'.
select ename,join_date,lead(ename) over (order by join_date) as nxt_ps from employee;

6.Display employees along with the difference between their bonus and the previous employee's bonus (use LAG() on BONUS).'
select ename,bonus-lag(bonus) over (order by bonus desc) as pvs_emp from employee;

7.Show each employee along with the DEPT_ID of the previous and next employee in the same department, ordered by SALARY.
select ename,dept_id,lag(dept_id)over(order by salary desc) as pvs ,lead(dept_id)over(order by salary desc) as nxt from employee;

8.Display the employee name and their salary, along with the name of the employee who earns slightly more than them (use LEAD() on SALARY).
select ename,salary,lead(ename) over (order by salary ) as nxt from employee;

9.List employees and show the change in salary compared to the previous employee in terms of SALARY INCREASE (use LAG()).
select ename,salary,lag(salary) over (order by salary desc ) sal from employee;

10.Display each employee’s name and how many days after the previous employee they joined (difference between JOIN_DATE using LAG() and DATEDIFF()).
select ename,join_date,datediff(join_date ,lag(join_date) over (order by join_date)) as days_diff from employee;
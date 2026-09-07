LIMIT
use mysqlpractice;
1.Show the top 5 employees with the highest SALARY.
select * from employee order by salary desc limit 5;

2.Display the first 10 employees who joined the company (ORDER BY JOIN_DATE).
select * from employee order by join_date limit 10;

3.Retrieve the details of the 3 most recently hired employees.
select * from employee order by join_date desc limit 3;

4.Get the top 5 employees with the highest BONUS.
select * from employee order by bonus desc limit 5;

5.Show the first 7 employee records in alphabetical order of FULL_NAME.
select * from employee order by ename limit 7;
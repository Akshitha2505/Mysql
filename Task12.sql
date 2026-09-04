Date Functions YEAR (), MONTH (), DATEDIFF ()
use mysqlpractice;
1.List employees born in the year 1993.
select * from employee where year(dob)='1993';

2.Show employees who joined in 2021.
select * from employee where year(join_date)='2020';

3.Display names and month of their date of birth.
select ename , month(dob) as months from employee;

4.Show full name and how many years old they are (using YEAR(CURDATE()) - YEAR(DOB)).
select ename ,year(curdate())-year(dob) as Age from employee;

5.Show e mployees hired in the month of March.
select * from employee where month(join_date)='3';

6.Find employees born in June.
select * from employee where month(dob)='6';

7.Get names of employees hired in the same month they were born.
select *  from employee where month(join_date)=month(dob);

8.Show the number of days since employee joined.
select ename,datediff(curdate(),join_date) as Days from employee;

9.Find employees who joined less than 500 days ago.
select ename from employee where datediff(curdate(),join_date) <500;

10.List employees who were born in January.
select ename,dob from employee where month(dob)='1';

11.Show employees hired in 2020 and in March.
select * from employee where year(join_date) ='2020' and month(join_date)='3';

12.Display full names and the difference in days between DOB and JOIN_DATE.
select ename,datediff(dob,join_date) as days from employee;

13.List employees whose joining year is even (MOD(YEAR(JOIN_DATE), 2) = 0).
select * from employee where mod(year(join_date),2)=0;

14.Show employees who were hired before they turned 30 (DOB + 30 years < JOIN_DATE).
select * from employee where year(dob)+30 < year(join_date);

15.Find employees hired in the last 2 years.
select * from employee where year(join_date) >=year(curdate())-2;

16.Display employees born in the 90s (YEAR(DOB) BETWEEN 1990 AND 1999).
select * from employee where year(dob) between '1990' and '1999';

17.List employees with same DOB month and JOIN month.
select *  from employee where month(dob)=month(join_date);

18.Show employees with JOIN_DATE and DOB within the same year.
select * from employee where year(join_date) =year(dob);

19.Find employees who were born at least 10000 days ago.
select * from employee where datediff(curdate(),dob) < 10000;
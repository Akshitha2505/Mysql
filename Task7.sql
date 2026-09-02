use mysqlpractice;
1.Display details of employees who are not working in DEPT_ID 1.
select * from employee where dept_id not in (1);

2.Get the list of employees who are not 'Female'.
select * from employee where gender not in ('Female');

3.Find all employees who are not ‘Interns’.
select * from employee where emp_type not in ('intern');

4.List names of employees who are not born before 1990.
select ename from employee where not year(dob) < 1990;

5.Show details of employees whose blood group is not ‘O+’.
select * from employee where blood_group not in ('O+');

6.Find employees who are not working as 'DevOps Engineer'.
select  * from employee
where not job = 'DevOps Engineer';

7.Display the details of employees not having bonus more than 5000.
select * from employee where not bonus >5000;

8.Get names of employees who do not report to EMP_ID 1739.
select ename from employee where not reports_to =1739

9.Show details of employees who are not hired in 2020.
select * from employee where not year(join_date) ='2020';

10.List employees whose salary is not in the range of 60000 to 90000.-000----------------------------
select * from employee where salary not in ('60000','90000');

11.Display employees working in department 1, 3, or 5.
select * from employee where dept_id in (1,3,5);

12.Show names of employees whose role is in ('HR Executive', 'Recruiter', 'HR Manager').
select ename from employee where role in ('HR Excecutive', 'Recuiter', 'HR Manager');

13.Find details of employees whose EMP_ID is in (1053, 1133, 1344).
select * from employee where emp_id in (1053,1133,1344);

14.Get names of employees whose DEPT_ID is in (2, 4).
select ename from employee where dept_id in (2,4);

15.Display employees whose BLOOD_GROUP is in ('O+', 'B+').
select * from employee where blood_group in ('O+','B+');

16.Find employees whose EMP_TYPE is in ('Contract', 'Full-time').
select * from employee where emp_type in ('Contract', 'Full-time');

17.Get names of employees not in department 1 or 3.
select ename from employee where dept_id in (1,3);

18.Show employees whose REPORTS_TO is in (1739, 1846, 1068).
select * from employee where reports_to in (1739,1846,1068);

19.List names of employees whose salary is in (85000, 91000, 95000).
select ename from employee where salary in (85000, 91000, 95000);

20.Display employees whose role is not in ('Intern', 'Contract').
select * from employee where emp_type  not in  ('Intern', 'Contract');
update employee set emp_type ='contract' where emp_id=1053;
commit;

21.List employees working in DEPT_ID IN (1, 2, 3).
select * from employee where dept_id in (1,2,3);

22.Display employees whose BLOOD_GROUP is IN (‘O+’, ‘B+’, ‘A+’).
select * from employee where blood_group in ('O+','B+','a+');

23.Get employees whose ROLE is IN ('HR Executive', 'HR Manager').
update employee set role ="HR Executive" where emp_id =1957;
commit;
select * from employee where role in ('HR Executive', 'HR Manager');

24.Show employees whose DEPT_ID is NOT IN (1, 3).
select * from employee where dept_id not in(1,3);

25.List employees whose EMP_TYPE is IN ('Full-time', 'Intern').
select * from employee where emp_type in ('full-time','intern');

26.Display employees with BONUS IN (4000, 5000, 6000).
select * from employee where Bonus in (4000,5000,6000);

27.Get employees working in DEPT_ID NOT IN (2, 4).
select * from employee where dept_id not in (2,4);

28.Find employees whose REPORTS_TO is IN (1068, 1739).
select * from employee where reports_to in (1068,1739);
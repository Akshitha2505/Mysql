"use mysqlpractice;
1.Show names of employees whose names start with ‘S’.
select ename from employee where ename like 's%';

2.Find employees whose full name ends with ‘a’.
select ename from employee where ename like '%a';

3.Display details of employees whose full name contains the letter ‘i’.
select * from employee where ename like '%i%';

4.Get names of employees where the second character is 'a'.
select ename from employee where ename like '_a%';

5.Show names of employees whose names have exactly 6 characters.
select ename from employee where ename like '______';

6.List employees whose names start with ‘K’ or ‘P’.
select ename from employee where ename like 'k%' or  'p%';

7.Find employees whose role contains the word ‘Engineer’.
select role from employee where role like '%engineer%';

8.Get names of employees ending with the letter 'n'.
select ename from employee where ename like '%n';

9.Display names of employees having at least two 'a' characters.
select ename from employee where ename like '%a%' >2;

10.List names of employees whose name ends with ‘h’ or ‘y’.
select ename from employee where ename like '%h' or '%y';

11.Display employees whose name is NOT LIKE '%a%'.
select ename from employee where ename not like '%a%';

12.List names of employees whose FULL_NAME starts with ‘M’ or ‘J’.
select ename from employee where ename like 'm%' or 'j%';

13.Display employees whose FULL_NAME is 5 characters long.
select ename from employee where ename like '_____';
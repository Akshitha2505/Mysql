create database mysqlpractice;
use mysqlpractice;
create table employees
 (
 Emp_id int primary key,
 Full_name varchar(20),
 Role varchar(30),
 join_date date,
 Reports_to int,
 salary int,
 Bonus int,
 Dept_id int,
 Blood_group char(3),
 Emp_type varchar(15),
 Gender varchar(7),
 DOB date );
 select * from employees;
 desc employees;
 insert into employees values
 (1127,'Vani','Frontend Developer','2021-03-10',1739,80000,5000,1,'A+','Full-Time','Female','1993-03-19');
 insert into employees values
 (1182,'Saikiran','QA Engineer','2020-05-12',1739,70000,null,2,'B+','Intern','Male','1992-12-01');
 insert into employees values
 (1261,'Ravi','DevOps Engineer','2021-11-25',1846,90000,7000,3,'AB-','Full-Time','Male','1995-08-09'),
 (1053,'Mani','Backend Developer','2022-06-15',1053,85000,6000,1,'O+','Contact','Male','1999-03-21'),
 (1344,'Sai','Cybersecurity Analyst','2023-02-01',1846,95000,null,4,'O-','Full-Time','Male','1991-10-01');
 insert into employees values
 (1432,'Harika','UI/UX Designer','2020-10-18',1739,78000,4000,1,'A-','Intern','Female','1996-04-30'),
 (1580,'Krishna Reddy','System Administrator','2019-09-01',1846,87000,5500,3,'B-','Full-Time','Male','1989-01-19'),
 (1615,'Soumya','Database Engineer','2021-12-05',1739,91000,null,1,'O+','Full-Time','Female','1993-06-27'); 
 
 
  insert into employees values
 (1739,'Sirisha','Technical Lead','2018-05-14',null,130000,12000,1,'AB+','Full-Time','Female','1985-07-11'),
 (1846,'Tejaswini','Cloud Architect','2017-08-20',null,140000,15000,3,'A+','Full-Time','Female','1987-02-03'),
 (1957,'Vishnu Priya','HR Excecutive','2022-07-01',1068,65000,null,5,'B+','Contract','Female','1995-11-14'); 
 
 
  insert into employees values
 (1068,'Sireesha','HR Manager','2022-10-15',null,95000,6000,5,'A+','Full-Time','Female','1990-06-08'),
 (1133,'Raju','Network Security Engineer','2020-04-12',1053,88000,7000,4,'O+','Full-Time','Male','1993-01-09'),
 (1209,'Charan','Business Analyst','2021-10-01',1739,78000,null,1,'B+','Intern','Male','1992-08-23'); 
  
  insert into employees values
 (1375,'Tarun Kumar ','Action Tester','2023-01-19',1182,73000,4000,2,'O+','IFull-Time','Male','1994-12-10'),
 (1482,'Lakshmi','Recuiter','2022-09-03',1068,60000,2000,5,'A+','Full-Time','Female','1996-03-29'),
 (1571,'Srikanth','DevOps Speacialist','2021-02-25',1846,92000,6000,3,'B+','Full-Time','Male','1990-10-04'); 
 
  insert into employees values
 (1677,'Pranavi','Penetration Tester','2023-05-10',1344,96000,null,4,'AB+','Full-Time','Female','1995-01-17'),
 (1763,'Pavan','Software Architect','2019-07-30',1127,145000,20000,1,'O+','Contract','Male','1988-05-25'),
 (1894,'Jahnavi','HR Coordunator','2020-11-05',1068,63000,2500,5,'B-','Full-Time','Female','1993-09-22');  
 
 
 
 
 
 create table Department 
 (
 Dept_id int,
 Dept_name varchar(20),
 Location varchar(20),
 Head_id int);
 
 insert into Department values (1,'Development','Hyderabad',1739),
 (2,'Testing','Banglore',1182),
 (3,'DevOps','Chennai',1846),
 (4,'Cybersecurity','Pune',1068),
 (5,'Human Resources','Delhi',1068);
 
 alter table Department add constraint pk_deptid primary key(dept_id);
 
 alter table employees add constraint fk_emp_dept foreign key (dept_id) references department(dept_id);

select * from employees;
 
 select full_name,role from employees;
 
 select full_name, join_date from employees;
 
 select full_name,emp_id from employees;
 
 select full_name , dept_id from employees;
 
 update employees set emp_id =1127 where emp_id=101;
 commit;
 
 select full_name,salary from employees;
 
 select full_name,bonus from employees;
 
 select full_name ,blood_group from employees;
 
 select full_name,gender from employees;
 
 select full_name,dob from employees;
 
 select full_name,salary * 12 as annual_sal from employees;
 
 select full_name ,salary + bonus as total from employees;
 
 select full_name ,salary *6 as half_year_sal from employees;
 
 select full_name ,salary ,salary+salary * 0.1 as sal from employees;
 
 select full_name ,salary,salary-salary*0.10 as sal_after_ded from employees;
 
 select full_name,salary,salary-salary*0.25 as reducted_sal from employees;
 
 select full_name,salary+2000 as aft_bonus from employees;
 
 select full_name,salary-100 as reduced_sal from employees;
 
 select full_name,salary+500*12 as sal_hike from employees;
 
 select full_name,salary+2400 as annual_sal from employees;
 
 select count(distinct dept_id) as dept_cnt from employees;
 
 select count(distinct role) as role_cnt from employees;
 
 select count(distinct dept_id) as uni_dept_id from employees;
 
 select count(distinct role) as uni_role from employees;

 
 
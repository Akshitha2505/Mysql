CASE statements
1.Show the FULL_NAME and a column labeled "Salary_Level" which displays 'High' if salary > 90000, 'Medium' if between 70000 and 90000, else 'Low'.
select ename,case 
when salary >90000 then "High"
when salary  between 70000 and 90000 then "Medium"
else "Low"
end as salary_level 
from employee;

2.Display employee FULL_NAME, ROLE, and a message "Eligible for Bonus" or "Not  Eligible" based on whether BONUS is greater than 0.
select  ename  ,role , case 
when bonus >0 then "Eligible for  bonus "
else "Not eligible"
end  as bonus_status 
from employee;

3.Show all employees' FULL_NAME and a tag 'Senior' if JOIN_DATE is before 2015, else 'Junior''.
select ename,case 
when year(join_date) <'2015' then "Senior"
else "Junior"
end as emp_tag
from employee;

4.List employees' FULL_NAME and BLOOD_GROUP, along with a status: 'Critical' if BLOOD_GROUP = 'AB-', 'Normal' otherwise.'
select ename,blood_group,case 
when  blood_group ='AB-' then "Critical"
else "Normal"
end as blood_group_status 
from employee;

5.For each employee, show FULL_NAME and a column "Contract_Status" which displays 'Permanent' for 'Full-time', 'Temporary' for 'Contract' and 'Internship' for 'Intern'.
select ename,emp_type ,case 
when emp_type ='contract'  then "Temporary"
when emp_type ='Intern' then 'Internship'
else "Permanent"
end as contract_status 
from employee;
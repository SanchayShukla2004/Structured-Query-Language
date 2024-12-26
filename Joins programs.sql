create database Companys ;
use Companys ;

# Que 1. Write a query to get the Employees and Department details using joins. 
Select a.emp_name, b.department_name
from Employees a 
inner join Departments b 
on a.department_id = b.department_id ;

# Que 2. Writre a query to retrive all Employees with their department, even if the department is missing. 
select a.emp_name, b.department_name
from Employees a 
inner join Departments b
on a.department_id = b.department_id ;

# Que 3. Write a query to get the department details even if there are no employees in that department. 
Select b.department_name, b.department_id, a.emp_name
from Employees a 
right join Departments b 
on a.department_id = b.department_id ;

# Que 4. Write a query to get the all employees and Department wheater matched or not. 
Select a.emp_Name, b.Department_Name
from Employees a 
right join Departments b
on a.department_id = b.department_id ; 

# Que 5. JOIN three table (Employees, Departments, Projects) to get Employee Department and Project informatin. 
select e.emp_name, d.department_name, p.project_name
from Employees e
inner join Departments d
on e.department_id = d.department_id
inner join Projects p
on e.emp_id = p.emp_id ;

# Que 6.Find Employees Who are not assigned to any projects. 
Select e.emp_name, p.project_name
from Employees e
left join Projects p
on e.emp_id = p.emp_id where p.project_name is null ;

# Que 7. Find departments with no employees using a RIGHT JOIN. 
Select d.department_name
from Employees e
right join Departments d
on e.department_id = d.department_id where e.emp_name is null ;

# Que 8. Write a query to get the Employee and Department details using with aliases. 
Select e.emp_name, d.department_name
from Employees e
inner join Departments d
on e.department_id = d.department_id ;

# Que 9. Write a query to find the employees in the same department as other employees. 
select e.emp_name, e.department_id
from Employees e
inner join Employees p
on e.department_id = p.department_id
where e.emp_id != p.emp_id  ;

# Que 10. Write a query to find the projects managed by employees in the 'IT' department. 
Select e.emp_name, p.project_name
from Employees e
inner join Projects p
on e.emp_id = p.emp_id 
join Departments d
on e.department_id = d.department_id
where department_name = "IT" ;

# Que 11. Write a query to show employees and their projects information (evevn if not assigned to a project). 
Select e.emp_name, p.project_name 
from Employees e 
left join Projects p
on e.emp_id = p.emp_id ;

# Que 12. Find the Employees who work in department with names starting with 'A'. 
Select e.emp_name, d.department_name
from Employees e
inner join Departments d
on e.department_id = d.department_id 
where e.emp_name like 'A%' ;

# Que 13. Find the total number of employees in each department using GROUP BY and JOIN . 
Select count(emp_id) as number, d.department_name 
from Employees e
left join Departments d
on e.department_id = d.department_id 
group by d.department_name ;

# Que 14. Get the list of department with more then one employees. 
Select d.department_name, count(e.emp_name)
from Employees e
inner join Departments d
on e.department_id = d.department_id
group by d.department_name having count(e.emp_name) > 1; 


use Companys ;

# Que 1. Find Employees with Salaries greater then the average salary of all employees. 
Select name, salary
from Employee where salary >
(Select avg(salary) from Employee) ;

# Que 2. Find Employees whose salary is higher then the salary of 'Alice'. 
Select name, salary
from Employee where salary >
(Select salary 
from Employee where name = 'Alice') ;

# Que 3. List Employees who belong to a department that has the name 'IT'. 
Select *
from Employee where department in
(Select dept_name
from Department where dept_name = 'IT' );

# Que 4. Get the Name of Employees who earn the highest Salary in their department. 
Select Name, Salary, department
from Employee where Salary in
(Select Salary from Employee 
where department in 
(Select department from Employee group by department having salary = max(Salary)))  ;

# Que 5. Retrieve the department where at least one Employee earn more then 7000. 
Select Name, Department, Salary
from Employee where salary in 
(Select salary from Employee where salary > 7000 ) ;

# Que 6. List Employee who do not belong to any department in the departments table. 
Select Name, department
from Employee where department in
(Select department from Employee group by department having count(Name) is null) ;

# Que 7. Find the second highest salary amoung employees. 
Select Name, Salary
from Employee where salary = 
(Select Salary from Employee order by Salary desc limit 1,1 ) ;

# Que 8. Retrieve the names of employees who work in the department with the highest number of Employees . 
Select Name, Department 
from Employee where department in
(Select department from Employee group by department having count(*)=
(Select count(*) from Employee group by department order by count(*) desc limit 1)) ;

# Que 9. Find the Employee who earn more then the average salary in their department. 
Select Name, Salary 
from Employee where department in 
(Select department from Employee group by department having salary > avg(Salary )) ;

# Que 10. Retrieve Employees whose salary is above 7000 and belong to departments in the departments table. 
Select Name, Salary 
from Employee where department in
(Select dept_name from Department where dept_name in
(Select department from Employee where salary > 7000)) ; 

# Que 11. List all department that have no employees. 
Select dept_name,dept_id
from Department where dept_name in
(Select department from Employee where name is null) ;

# Que 12. Find the Employees who have the same salary as another Employee in a different department. 
Select Name, department, Salary
from Employee where Salary in 
(Select e.salary 
from employee e
join employee e2
on e.salary = e2.salary
where e.department! = e2.department) ;

# Que 13. Get the total salary of the department with the maximum total salary. 
Select sum(salary) from Employee where department = (select department from Employee  group by department order by sum(Salary) desc limit 1);

# Que 14. Retrive Employees whose department has more than two Employees. 
Select Name from Employee where department in 
(Select department from Employee group by department having count(department) > 2) ;

# Que 15. Find the Employees whose salary is higher than the average salary of Employees in the IT deparrment. 
 Select Name, Salary from Employee where salary >
 (Select avg(Salary) from Employee where department = 'IT') ;
 
 
 
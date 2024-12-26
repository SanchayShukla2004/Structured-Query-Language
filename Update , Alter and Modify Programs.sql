# Create a database named company and a table named employees
create database company;
use company;

# insert the following data into the employees table 
create table Employees(Id int primary key auto_increment,
Name varchar(100),
Position varchar(100),
Salary decimal(10,2),
date_of_joining date
);
insert into Employees(Name,Position,Salary,date_of_joining)
value('John Doe','Manager',55000,'2020-01-15'),
	 ('Jane Smith','Developer',48000,'2019-07-10'),
     ('Alice Johnson','Designer',45000,'2021-03-22'),
     ('Bob Brown','Developer',50000,'2018-11-01');
     
# Write a query to retrieve all employees who are Developer
select * from employees where position= 'Developer';
# We use the following commond to disable safe update mode, allowing us to modify the table columns

set sql_safe_update =0;
# Write a query to update the salary of Alice Johnson to 46000
update employees set salary = 46000 where name = 'Alice Johnson';

# Write a query to delete the employees recoard for Bob Brown
delete from employees where name = 'Bob Brown';

# Write a query to fint the employees who have a salary greater then 48000
select * from employees where salary > 48000;

# Write a query to add a new column email to the employees table.
alter table employees
add column email varchar(100);

# Write a query to update the email for John Doe to john.doe@company.com 
update employees set email = 'john.doe@company.com' where name = 'John Doe';

# Write a query to retrieve only the name and salary of all employees
select name, salary from employees;

# Write a query to count the number of employees who joined after January 1,2020
select count(*) from employees where date_of_joining >'2020-01-01';

# Write a query to order tje employees salary by descending order 
select * from employees order by salary desc;

# Write a query to drop the email column
alter table employees
drop column email

# Write a query to find the employees with the highest salary
select * from employees order by salary desc limit 1;



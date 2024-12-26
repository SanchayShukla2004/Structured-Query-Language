# Que 1. Create a database named library and a table named books with the following.
create database Library;
use Library;
create table Books(Id int primary key auto_increment,
Title varchar(255),
Author varchar(100),
Year year,
genre varchar(100)
);

# Que 02 Insert the following books record into the books table. 
insert into Books(Title, Author, Year, Genre)
values("The Great Gatsby","F.Scott Fitzgerald",1925,"Fiction"),
      ("Pride and Prejudice","Jane Austen",1913,"Romance"),
	  ("To Kill a Mockingbird","Harper Lee",1960,"Fiction"),
      ("1994","George Orwell",1949,"Dystopian"),
      ("Moby Dick","Herman Melville",1951,"Adventure");
      
# Que 03 Write a query to select all books where the title starts with the letter 'T' using the LIKE opration.
select * from Books where Title like 'T%';

# Que 04 Write a query to find the all books where the authors last name ends with 'son' using the LIKE opration.
select * from Books where Author like '%son';

# Que 05 Write a query to find all books where the title contains the world 'and' using the LIKE opration.
select * from Books where Title like '%and%';

# Que 06 Write a query to retrieve all books where the title end with the world 'bird' using the LIKE opration .
select * from Books where Title like '%bird';

# Que 07 Write a query to find the all books where the title has exactly 3 characters using the REGEXP opration. 
select * from Books where Title regexp '^__$';

# Que 08 Write a query to select all the books where the title contains a number using the REGEXP opration.
select * from Books where Title regexp '[0-9]';

# Que 09 Write a query to retrieve all books where the authors name with any letter between 'A' and 'J' using REGEXP opration.
select * from Books where Author regexp '[A-J]';

# Que 10 Write a query to select all books where the genre is either 'Fiction' or 'Adventure'using the REGEXP opration.
select * from Books where Genre regexp 'Fiction|Adventure$';

# Que 11 Write a query to find the all books where the titlle contains at least one upper case letter using the REGEXP opration.
select * from Books where Title regexp '[A-Z]';

# Que 12 Write a query to find the all books where the year of publication is between 1800 and 1950 using LIKE opration.
select * from Books where Year between 1800 and 1950;

# Que 13 Write a query to retrieve all books where the author name contains exactily two words using the REGEXP opration.
select * from Books where Author regexp'^__&';

# Que 14 Write a query to find the all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP opration .  
select * from Books where Author regexp 'p_&';

# Que 15 Write a query to find the all books where the title contains any special character (e.g.,!@#\$%&*)using the REGEXP opration . 
select * from Books where Title regexp '[!@#\$%&*]';

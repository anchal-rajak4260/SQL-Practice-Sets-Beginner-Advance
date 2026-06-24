create database assignment_10;
use assignment_10;

create table Employees (
  EmpID int primary key,
  Name varchar(50),
  Department varchar(50),
  Email varchar(60)
  );
  
insert into Employees( EmpID, Name, Department, Email)
value
   (1, 'Alice Johnson',  'HR',      'alice.johnson@example.com'),
   (2, 'Bob Smith',  	'IT',      'bob.smith@example.com'),
   (3, 'Charlie Brown',  'Finance','charlie.brown@example.com'),
   (4, 'Diana Prince',   'HR',      'diana.prince@example.com'),
   (5, 'Eve Adams',  	'IT',      'eve.adams@example.org');

-- 1
select Name,Email
from Employees 
where Email Like '%@example.com';

-- 2
select name from Employees 
where Name like 'A%';

-- 3 
select name from Employees 
where substring(Name, 2,1)='v';

-- 4
 SELECT Name FROM Employees
 WHERE Name LIKE '%son';
 
 -- 5
SELECT Name, Department 
FROM Employees WHERE Department LIKE '%IT%';

-- 6
SELECT Name, Department 
FROM Employees WHERE LOWER(Department) LIKE '%hr%';


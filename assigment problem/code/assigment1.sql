CREATE DATABASE IF NOT EXISTS Employee;

USE Employee;

CREATE TABLE Employees (
       empid int PRIMARY KEY , 
       name VARCHAR(50),
       age int ,
       salary FLOAT 
       
);



INSERT INTO Employees (empid, name, age, salary)
VALUES
(1, 'Rajneesh Kumar', 22, 30000),
(2, 'Amit Kumar', 24, 35000),
(3, 'Rahul Kumar', 26, 40000),
(4, 'Vikash Kumar', 28, 45000),
(5, 'Ankit Kumar', 25, 38000);


SELECT * FROM Employees;


SELECT * FROM Employees WHERE age > 25; 


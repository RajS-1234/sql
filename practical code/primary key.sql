CREATE DATABASE IF NOT EXISTS Employee;

USE Employee;

CREATE TABLE Employees (
    empid INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    salary FLOAT
);

INSERT INTO Employees (empid, name, age, salary)
VALUES
(1, 'Rajneesh', 22, 30000),
(2, 'Rahul', 25, 40000);

SELECT * FROM Employees;

DROP TABLE Employees;

CREATE TABLE Employees (
    empid INT,
    name VARCHAR(255),
    age INT,
    salary FLOAT
);

INSERT INTO Employees (name, age, salary)
VALUES
('Amit', 23, 25000),
('Ravi', 24, 28000),
('Suresh', 25, 30000);

INSERT INTO Employees (empid, name, age, salary)
VALUES
(1, 'Anil', 26, 35000),
(1, 'Vijay', 27, 38000),
(1, 'Mohan', 28, 42000);


INSERT INTO Employees (empid, name, age, salary)
VALUES
(2, 'Rajan', 30, 45000);

SELECT * FROM Employees;

-- Null is not a value it is nothing

-- DELETE FROM Employee WHERE empid=NULL; 

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Employees WHERE empid=1; 

-- DELETE FROM Employee WHERE empid=NULL; 


DELETE FROM Employees
WHERE empid IS NULL;
SELECT * FROM Employees;

DELETE FROM Employees
WHERE empid IS NULL;



ALTER TABLE Employees
ADD CONSTRAINT pk_employee PRIMARY KEY (empid);

DESCRIBE Employees;

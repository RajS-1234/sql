CREATE DATABASE Employee;

USE Employee;

-- 1. Column-level CHECK
CREATE TABLE Employees (
    empid INT PRIMARY KEY,
    name VARCHAR(100),
	age INT CONSTRAINT chk_age CHECK (age >= 18),
    salary DECIMAL(10,2) CHECK (salary > 0)
);

-- 2. Table-level CHECK
CREATE TABLE Employees (
    empid INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10,2),

    CHECK (age >= 18),
    CONSTRAINT chk_salary CHECK (salary > 0)
);



INSERT INTO Employees (empid, name, age, salary)
VALUES (1, 'Rajneesh', 22, 30000);


INSERT INTO Employees (empid, name, salary)
VALUES (2, 'Amit', 30000);

select * from employees;




INSERT INTO Employees (empid, name, salary)
VALUES (2, 'Amit', 30000);

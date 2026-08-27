CREATE DATABASE IF NOT EXISTS Employee;

USE Employee;

CREATE TABLE Employee (
    empid INT,
    name VARCHAR(255),
    age INT,
    salary FLOAT
);

-- 1.Insert one employee

INSERT INTO Employee (empid, name, age, salary)
VALUES (1, 'RAJNEESH KUMAR', 22, 123.23);



-- 2. Insert multiple employees

INSERT INTO Employee (empid, name, age, salary)
VALUES
(2, 'Amit', 23, 35000),
(3, 'Rahul', 24, 40000),
(4, 'Priya', 22, 32000);


-- SHOW TABLES; 

-- DESCRIBE Employee;

SELECT * FROM Employee;
CREATE DATABASE IF NOT EXISTS Employee;

USE Employee;

CREATE TABLE Employees (
    empid INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary FLOAT
);



CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    incharge INT,
    FOREIGN KEY (incharge) REFERENCES Employees(empid)
);



INSERT INTO Employees (empid, name, age, salary)
VALUES
(1, 'Rajneesh', 22, 30000),
(2, 'Rahul', 23, 35000),
(3, 'Amit', 24, 40000);



INSERT INTO Project (project_id, project_name, start_date, incharge)
VALUES
(101, 'Website Development', '2026-08-01', 1),
(102, 'Mobile Application', '2026-08-10', 2),
(103, 'Database Migration', '2026-08-15', 3);



-- Foreign Key contain duplicate values?

INSERT INTO Project (project_id, project_name, start_date, incharge)
VALUES
(104, 'Data Analytics', '2026-08-20', 1);


/*

That's completely valid.

Why?

Because one employee can manage multiple projects.

This creates a:

One-to-Many relationship

*/



-- Foreign Key contain NULL?


INSERT INTO Project (project_id, project_name, start_date, incharge)
VALUES
(105, 'Artificial - Inteligences', '2026-08-20', NULL);



-- What happens when we DELETE a parent row?


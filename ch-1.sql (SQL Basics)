-- ==========================================
-- Chapter 1 : SQL Basics
-- Database : sql_intro :-
-- ==========================================

USE sql_intro;


-- DQL (Data Query Language)

SELECT * FROM customers;

SELECT * FROM employees;


-- DDL (Data Definition Language)


CREATE TABLE employees_demo(
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(50)
);


-- DML (Data Manipulation Language)


INSERT INTO employees_demo(id,name,age,department)
VALUES
(1,'John Doe',30,'HR'),
(2,'Alice',25,'IT'),
(3,'Robert',28,'Finance');

SELECT * FROM employees_demo;

-- UPDATE


UPDATE employees_demo
SET department='Marketing'
WHERE id=2;


-- DELETE


DELETE FROM employees_demo
WHERE id=3;

-- WHERE Clause


SELECT *
FROM employees
WHERE age > 25;


-- ORDER BY


SELECT *
FROM employees
ORDER BY salary DESC;


-- Aggregate Functions


SELECT
COUNT(*) AS TotalEmployees,
AVG(salary) AS AverageSalary,
MAX(salary) AS HighestSalary,
MIN(salary) AS LowestSalary
FROM employees;


-- GROUP BY


SELECT
dept,
COUNT(*) AS TotalEmployees,
SUM(salary) AS TotalSalary
FROM employees
GROUP BY dept;

-- HAVING

SELECT
dept,
AVG(salary) AS AvgSalary
FROM employees
GROUP BY dept
HAVING AVG(salary) > 50000;

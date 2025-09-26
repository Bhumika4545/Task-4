-- ==================================================
-- STEP 1: Create Database
-- ==================================================
CREATE DATABASE IF NOT EXISTS company;
USE company;

-- ==================================================
-- STEP 2: Create Employees Table
-- ==================================================
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    job_title VARCHAR(50),
    email VARCHAR(100),
    salary DECIMAL(10,2) NOT NULL
);

-- ==================================================
-- STEP 3: Insert Sample Data
-- ==================================================
INSERT INTO employees (name, department, job_title, email, salary) VALUES
('Raj',     'HR',        'Manager',    'raj@company.com',     60000),
('Simran',  'HR',        'Executive',  'simran@company.com',  35000),
('Amit',    'IT',        'Developer',  'amit@company.com',    55000),
('Priya',   'IT',        'Developer',  NULL,                  50000),
('Ravi',    'IT',        'Tester',     'ravi@company.com',    40000),
('Neha',    'Finance',   'Analyst',    'neha@company.com',    45000),
('Arjun',   'Finance',   'Manager',    NULL,                  70000),
('Kiran',   'Sales',     'Executive',  'kiran@company.com',   30000),
('Pooja',   'Sales',     'Manager',    'pooja@company.com',   55000),
('Vikram',  'Sales',     'Executive',  NULL,                  32000);

-- ==================================================
-- STEP 4: Queries for Interview Practice
-- ==================================================

-- 1. GROUP BY
SELECT department, COUNT(*) 
FROM employees 
GROUP BY department;

-- 2. WHERE vs HAVING
SELECT department, COUNT(*)
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING COUNT(*) > 1;

-- 3. COUNT(*) vs COUNT(column)
SELECT COUNT(*) AS total_rows, COUNT(email) AS non_null_emails
FROM employees;

-- 4. GROUP BY multiple columns
SELECT department, job_title, COUNT(*)
FROM employees
GROUP BY department, job_title;

-- 5. ROUND()
SELECT ROUND(123.4567, 2) AS rounded_value;

-- 6. Highest salary by department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 7. Default behavior of GROUP BY
SELECT department, COUNT(*)
FROM employees
GROUP BY department;

-- 8. AVG and SUM
SELECT AVG(salary) AS avg_salary, SUM(salary) AS total_salary
FROM employees;

-- 9. Count distinct values
SELECT COUNT(DISTINCT department) AS distinct_departments
FROM employees;

-- 10. Aggregate functions
SELECT COUNT(*) AS total_employees,
       SUM(salary) AS total_salary,
       AVG(salary) AS avg_salary,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM employees;

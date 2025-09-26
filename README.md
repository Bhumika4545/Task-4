Company Database Project

This is my SQL project. I created a database called company with one table employees. I also added some sample data and wrote SQL queries for practice.

Steps I followed

Created the database company.

Created the table employees.

Inserted some sample employee data.

Wrote 10 queries for interview practice.

Table Structure

emp_id → employee id (primary key, auto increment)

name → employee name

department → employee department

job_title → employee job title

email → email (nullable)

salary → employee salary

Sample Data

Example employees added: Raj, Simran, Amit, Priya, Ravi, Neha, Arjun, Kiran, Pooja, Vikram.

Queries I Practiced

GROUP BY

SELECT department, COUNT(*) FROM employees GROUP BY department;


WHERE vs HAVING

SELECT department, COUNT(*)
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING COUNT(*) > 1;


COUNT(*) vs COUNT(column)

SELECT COUNT(*) AS total_rows, COUNT(email) AS non_null_emails
FROM employees;


GROUP BY multiple columns

SELECT department, job_title, COUNT(*)
FROM employees
GROUP BY department, job_title;


ROUND()

SELECT ROUND(123.4567, 2);


Highest salary by department

SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;


Default behavior of GROUP BY

SELECT department, COUNT(*)
FROM employees
GROUP BY department;


AVG and SUM

SELECT AVG(salary), SUM(salary) FROM employees;


Count distinct values

SELECT COUNT(DISTINCT department) FROM employees;


Aggregate functions

SELECT COUNT(*), SUM(salary), AVG(salary), MAX(salary), MIN(salary)
FROM employees;

What I learned

How to use GROUP BY

Difference between WHERE and HAVING

Aggregate functions like COUNT, SUM, AVG, MAX, MIN

How to find highest salary by department

How to count distinct values


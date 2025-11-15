DROP TABLE IF EXISTS employees;
CREATE TABLE IF NOT EXISTS employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    age INT);
INSERT INTO employees (id, name, department, salary, age) VALUES
(1, 'Alice', 'HR', 40000, 29),
(2, 'Bob', 'IT', 55000, 32),
(3, 'Carol', 'Finance', 60000, 35),
(4, 'Dave', 'IT', 45000, 28),
(5, 'Eve', 'HR', 50000, 30),
(6, 'Frank', 'Marketing', 47000, 27),
(7, 'Grace', 'Finance', 65000, 38),
(8, 'Hank', 'IT', 52000, 31),
(9, 'Ivy', 'Sales', 48000, 26),
(10, 'Jack', 'Finance', 70000, 40),
(11, 'Kara', 'Marketing', 46000, 25),
(12, 'Leo', 'Sales', 51000, 33),
(13, 'Mona', 'HR', 53000, 34),
(14, 'Nate', 'IT', 62000, 36),
(15, 'Oscar', 'Finance', 58000, 29);
SELECT * FROM employees;
SELECT name, department, salary FROM employees WHERE salary > 55000;
SELECT name, department, salary FROM employees ORDER BY salary DESC;
SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department ORDER BY avg_salary DESC;
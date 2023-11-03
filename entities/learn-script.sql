-- LOGIN TO MYSQL
-- mysql -u root -p
-- 123456qwerty

-- SHOW DATABASES
SHOW DATABASES;

-- CREATE DB
CREATE DATABASE learn_script_db;

-- USE DATABASE
USE learn_script_db;

-- CHECK DATABASE
SELECT DATABASE();

-- CLEAR
-- CTRL + L;

-- CREATE TABLE
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE
);

-- SHOW TABLE
SHOW TABLES;

-- INSERT DATA TO TABLE
INSERT INTO employees (first_name, last_name, email, hire_date) VALUES ('John', 'Doe', 'john@example.com', '2023-01-15');

-- SELECT DATA FROM TABLE
SELECT * FROM employees;

-- SELECT DATA WITH CONDITION
SELECT * FROM employees WHERE id = 1;

-- SORT DATA
SELECT * FROM employees ORDER BY first_name;

-- UPDATE DATA
UPDATE employees SET email = 'new_email@example.com' WHERE id = 1;

-- DELETE DATA
DELETE FROM employees WHERE id = 1;
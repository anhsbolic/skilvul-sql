-- CREATE DB
CREATE DATABASE learn_one_to_many_db;

-- Create a 'departments' table
CREATE TABLE departments (id INT PRIMARY KEY, name VARCHAR(50));

-- Create an 'employees' table with a foreign key reference to 'departments'
CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    -- Foreign key
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- Insert data into the 'departments' table
INSERT INTO
    departments (department_id, department_name)
VALUES
    (1, 'HR'),
    (2, 'Engineering'),
    (3, 'Sales');

-- Insert data into the 'employees' table
INSERT INTO
    employees (
        employee_id,
        first_name,
        last_name,
        department_id
    )
VALUES
    (1, 'John', 'Doe', 2),
    -- John Doe works in the Engineering department
    (2, 'Jane', 'Smith', 1),
    -- Jane Smith works in the HR department
    (3, 'Bob', 'Johnson', 2),
    (4, 'Alice', 'Brown', 2),
    (5, 'Eva', 'White', 3);

-- COUNT SELECT WHERE
SELECT
    COUNT(*)

    -- UPDATE
UPDATE employees SET department_id = 3 WHERE id = 1;
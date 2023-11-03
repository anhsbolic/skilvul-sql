-- CREATE DB
CREATE DATABASE learn_many_to_many_db;

-- Create a 'students' table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

-- Create a 'courses' table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- Create a 'student_course' junction table
CREATE TABLE student_course (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert data into the 'students' table
INSERT INTO students (student_id, student_name)
VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Bob Johnson');

-- Insert data into the 'courses' table
INSERT INTO courses (course_id, course_name)
VALUES
    (101, 'Math 101'),
    (102, 'History 101'),
    (103, 'Science 101');

-- Establish many-to-many relationships in the 'student_course' table
INSERT INTO student_course (student_id, course_id)
VALUES
    (1, 101),  -- John Doe is enrolled in Math 101
    (1, 102),  -- John Doe is enrolled in History 101
    (2, 102),  -- Jane Smith is also enrolled in History 101
    (3, 101);  -- Bob Johnson is enrolled in Math 101
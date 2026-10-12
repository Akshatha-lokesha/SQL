CREATE DATABASE SQL_Practice;
USE SQL_Practice;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    department VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    city VARCHAR(50)
);

INSERT INTO employees
(employee_id, first_name, last_name, email, phone, department, job_title, salary, hire_date, city)
VALUES
(1, 'John', 'Smith', 'john.smith@example.com', '9876543201', 'IT', 'Software Engineer', 65000.00, '2021-01-15', 'Bengaluru'),
(2, 'Emma', 'Johnson', 'emma.johnson@example.com', '9876543202', 'HR', 'HR Executive', 48000.00, '2021-03-10', 'Mumbai'),
(3, 'Michael', 'Brown', 'michael.brown@example.com', '9876543203', 'Finance', 'Accountant', 52000.00, '2020-07-22', 'Delhi'),
(4, 'Sophia', 'Davis', 'sophia.davis@example.com', '9876543204', 'IT', 'Data Analyst', 60000.00, '2022-02-18', 'Hyderabad'),
(5, 'James', 'Wilson', 'james.wilson@example.com', '9876543205', 'Sales', 'Sales Executive', 45000.00, '2021-06-05', 'Chennai'),
(6, 'Olivia', 'Miller', 'olivia.miller@example.com', '9876543206', 'Marketing', 'Marketing Manager', 72000.00, '2019-11-12', 'Pune'),
(7, 'William', 'Moore', 'william.moore@example.com', '9876543207', 'IT', 'DevOps Engineer', 68000.00, '2022-04-25', 'Bengaluru'),
(8, 'Ava', 'Taylor', 'ava.taylor@example.com', '9876543208', 'HR', 'Recruiter', 46000.00, '2023-01-09', 'Kolkata'),
(9, 'Robert', 'Anderson', 'robert.anderson@example.com', '9876543209', 'Finance', 'Financial Analyst', 58000.00, '2020-09-17', 'Mumbai'),
(10, 'Isabella', 'Thomas', 'isabella.thomas@example.com', '9876543210', 'Sales', 'Sales Manager', 75000.00, '2018-05-21', 'Delhi'),
(11, 'David', 'Jackson', 'david.jackson@example.com', '9876543211', 'IT', 'Backend Developer', 70000.00, '2021-08-14', 'Hyderabad'),
(12, 'Mia', 'White', 'mia.white@example.com', '9876543212', 'Marketing', 'Content Writer', 42000.00, '2022-10-03', 'Pune'),
(13, 'Joseph', 'Harris', 'joseph.harris@example.com', '9876543213', 'IT', 'Frontend Developer', 64000.00, '2023-02-11', 'Bengaluru'),
(14, 'Charlotte', 'Martin', 'charlotte.martin@example.com', '9876543214', 'Finance', 'Finance Manager', 80000.00, '2019-04-19', 'Chennai'),
(15, 'Daniel', 'Thompson', 'daniel.thompson@example.com', '9876543215', 'Sales', 'Sales Representative', 44000.00, '2022-06-27', 'Mumbai'),
(16, 'Amelia', 'Garcia', 'amelia.garcia@example.com', '9876543216', 'HR', 'HR Manager', 70000.00, '2018-12-01', 'Bengaluru'),
(17, 'Matthew', 'Martinez', 'matthew.martinez@example.com', '9876543217', 'IT', 'Database Administrator', 67000.00, '2020-01-13', 'Hyderabad'),
(18, 'Harper', 'Robinson', 'harper.robinson@example.com', '9876543218', 'Marketing', 'SEO Specialist', 50000.00, '2023-03-20', 'Delhi'),
(19, 'Christopher', 'Clark', 'christopher.clark@example.com', '9876543219', 'IT', 'System Administrator', 62000.00, '2021-10-08', 'Pune'),
(20, 'Evelyn', 'Rodriguez', 'evelyn.rodriguez@example.com', '9876543220', 'Sales', 'Business Development Executive', 47000.00, '2022-08-16', 'Chennai');

SELECT * FROM employees;
SELECT first_name from employees where city in ('Bengaluru', 'Mumbai', 'Chennai');
SELECT first_name from employees where city not in ('Bengaluru', 'Mumbai', 'Chennai');
SELECT first_name as 'Name', salary from employees where salary BETWEEN 50000 AND 65000;
SELECT first_name from Employees where first_name LIKE '%A%';
SELECT first_name from Employees where first_name COLLATE utf8mb4_bin LIKE '%A%';
SELECT first_name, salary, COALESCE(salary, 20) from employees;
SELECT first_name as 'Name', salary from employees where salary BETWEEN 70000 AND 65000;






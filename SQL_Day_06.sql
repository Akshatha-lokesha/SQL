CREATE DATABASE de_learning;
USE de_learning;
CREATE TABLE orders (
    order_id    INT PRIMARY KEY,
    amount      DECIMAL(10, 2),
    status      VARCHAR(20),
    currency    VARCHAR(10),
    customer_id INT
);
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name        VARCHAR(100),
    city        VARCHAR(50),
    age         INT,
    is_active   BOOLEAN,
    signup_date DATE
);
SHOW TABLES;

INSERT INTO customers (customer_id, name, city, age, is_active, signup_date) VALUES
(101, 'Akshay Kumar',  'Bangalore', 28, TRUE,  '2024-01-15'),
(102, 'Priya Patel',   'Mumbai',    32, TRUE,  '2024-02-20'),
(103, 'Rahul Sharma',  'Chennai',   25, FALSE, '2024-01-30'),
(107, 'Sneha Reddy',   'Bangalore', 29, TRUE,  '2024-03-10'),
(109, 'Arjun Nair',    'Delhi',     35, FALSE, '2024-01-05'),
(110, 'Kavya Singh',   'Mumbai',    27, TRUE,  '2024-04-01'),
(115, 'Rohan Mehta',   'Delhi',     31, TRUE,  '2024-05-15');

SELECT * FROM orders;
SELECT * FROM customers;

-- Write the SQL (all with single quotes, uppercase keywords)
-- Write an INNER JOIN to get name, order_id, and amount for all customers who have placed orders.
-- Write a LEFT JOIN to get name and order_id for ALL customers — including those with no orders. The order_id should show NULL for customers with no orders.
-- Write a LEFT JOIN that finds customers who have never placed an order (hint: WHERE orders.order_id IS NULL after the join).

SELECT c.name, o.order_id, o.amount FROM orders AS o INNER JOIN customers AS c ON c.customer_id = o.customer_id;
SELECT c.name, o.order_id FROM customers AS c LEFT JOIN orders AS o ON c.customer_id = o.customer_id;
SELECT c.name, o.order_id FROM customers AS c LEFT JOIN orders AS o ON c.customer_id = o.customer_id WHERE o.order_id IS NULL;



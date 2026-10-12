USE de_learning;

SELECT * FROM orders;
SELECT * FROM customers;

-- Write the SQL (written answers, no running)
-- Using the orders and customers tables in de_learning:
-- Count how many orders exist per currency. Show currency and order_count. Order by order_count descending.
-- Find all currencies where the total amount across all orders is greater than 500. Show currency and total_amount.
-- Join orders and customers. Group by city. Show city, number of orders per city, and average order amount per city. Only show cities with more than 1 order.
-- Write all 3 with single quotes where needed, uppercase keywords, and correct aliases.

SELECT currency, COUNT(order_id) AS order_count FROM orders GROUP BY currency ORDER BY order_count DESC;
SELECT currency, SUM(amount) AS total_amount FROM orders GROUP BY currency HAVING total_amount > 500;
SELECT c.city, AVG(o.amount) AS avg_amount, COUNT(o.order_id) AS no_of_orders FROM orders AS o INNER JOIN customers AS c 
ON c.customer_id = o.customer_id GROUP BY c.city HAVING no_of_orders > 1;
